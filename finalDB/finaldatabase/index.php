<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Database</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 30px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-bottom: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <?php
    // Database connection details
    $servername = "localhost";
    $username = "tristann";
    $password = "ray";
    $dbname = "myproject";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Query to retrieve data from the 'movie' table
    $movieQuery = "SELECT * FROM movie";
    $movieResult = $conn->query($movieQuery);

    // Display 'movie' table
    if ($movieResult->num_rows > 0) {
        echo "<h2>Movie Table</h2>";
        echo "<table>";
        echo "<tr><th>Movie ID</th><th>Movie Name</th><th>Release Year</th><th>Date</th><th>Rating</th><th>Content Rating</th><th>Director</th><th>Genre ID</th></tr>";
        while ($row = $movieResult->fetch_assoc()) {
            echo "<tr><td>{$row['movieId']}</td><td>{$row['moviename']}</td><td>{$row['release_year']}</td><td>{$row['DATE']}</td><td>{$row['rating']}</td><td>{$row['content_rating']}</td><td>{$row['director']}</td><td>{$row['genre_id']}</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }

    $genreQuery = "SELECT * FROM genres";
    $genreResult = $conn->query($genreQuery);

    // Display 'genres' table
    if ($genreResult->num_rows > 0) {
        echo "<h2>Genre Table</h2>";
        echo "<table>";
        echo "<tr><th>Genre ID</th><th>Genre Name</th>";
        while ($row = $genreResult->fetch_assoc()) {
            echo "<tr><td>{$row['genre_id']}</td><td>{$row['genre_name']}</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }

    $castQuery = "SELECT * FROM cast";
    $castResult = $conn->query($castQuery);

    // Display 'cast' table
    if ($castResult->num_rows > 0) {
        echo "<h2>Cast Table</h2>";
        echo "<table>";
        echo "<tr><th>Cast ID</th><th>Actor/Actress Name</th><th>Role</th><th>Release year</th><th>Movie Id</th></tr>";
        while ($row = $castResult->fetch_assoc()) {
            echo "<tr><td>{$row['cast_id']}</td><td>{$row['actor_name']}</td><td>{$row['role']}</td><td>{$row['release_year']}</td><td>{$row['movieId']}</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }

    $awardQuery = "SELECT * FROM awards";
    $awardResult = $conn->query($awardQuery);

    // Display 'awards' table
    if ($awardResult->num_rows > 0) {
        echo "<h2>Awards Table</h2>";
        echo "<table>";
        echo "<tr><th>Award ID</th><th>Movie Id</th><th>Award Year</th><th>Award Name</th><th>Category</th><th>Winner</th></tr>";
        while ($row = $awardResult->fetch_assoc()) {
            echo "<tr><td>{$row['awardId']}</td><td>{$row['movieId']}</td><td>{$row['award_year']}</td><td>{$row['award_name']}</td><td>{$row['category']}</td><td>{$row['winner']}</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }

    // Close the connection
    $conn->close();
    ?>
</body>
</html>