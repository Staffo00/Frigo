<html>
<head>
<title>Prova My SQL</title>
</head>
<body>
<h1>Prova My SQL</h1>
<br>
<?php
$servername = "localhost";
$username = "Administrator";
$password = "Itisfauser1";
$dbname = "prova";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT id, testo FROM provatabella";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"]. " - Testo: " . $row["testo"]."<br>";
    }
} else {
    echo "0 results";
}
$conn->close();
?>
</body>
</html>