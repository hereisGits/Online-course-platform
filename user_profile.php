<?php
session_start(); 

if (!isset($_COOKIE['user_cookie']) && !isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit();
}


if (isset($_COOKIE['user_cookie']) && !isset($_SESSION['user_id'])) {
    $_SESSION['user_id'] = $_COOKIE['user_cookie'];  

    $connection = new mysqli('localhost', 'root', '', 'user_database');  
    if ($connection->connect_error) {
        die("Database Connection Failed: " . $connection->connect_error);
    } else {
        $stmt = $connection->prepare('SELECT username FROM user_table WHERE user_id = ?');
        $stmt->bind_param('s', $_SESSION['user_id']);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($row = $result->fetch_assoc()) {
            $_SESSION['username'] = $row['username'];
        }
        $stmt->close();
        $connection->close();
    }
} 
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="user_profile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Audiowide:wght@400&display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap">
</head>
<body>
    <div class="container-main">
        <header class="navbar">
            <div class="logo">
                <a href="#">
                    <img src="docoment/logo.svg" alt="Logo">
                    <br>
                    <span>G-Xpert</span>
                </a>
            </div>

            <nav class="nav-links">
                <a href="#">Courses</a>
                <a href="#">Community</a>
                <a href="#">About</a>
                <button><a href="logout.php">Logout</a></button>
            </nav>
            
            <div class="search-container">
                <input type="search" placeholder="Search Courses..." name="search">
                <button type="submit" id="icon-btn"><i class="fa-solid fa-magnifying-glass"></i></button>
            </div>  
            
        </header>

        <div class="welcome-message">
            <h1>Welcome, <?php echo htmlspecialchars($_SESSION['username']); ?></h1>
        </div>
    </div>
</body>
</html>
