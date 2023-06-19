<?php
# server name
$sName = "localhost";
# user name
$uName = "root";
# password
$pass = "";

# database name
$db_name = "form_database";

$connection = mysqli_connect($sName, $uName, $pass, $db_name);
if (!$connection) {
    die("Koneksi database gagal: " . mysqli_connect_error());
}

$receiving_email_address = 'contact@example.com';

if (file_exists($php_email_form = 'php_email_form.php')) {
    include($php_email_form);
} else {
    die('Unable to load the "PHP Email Form" Library!');
}

$contact = new PHP_Email_Form;
$contact->ajax = true;

$contact->to = $receiving_email_address;
$contact->from_name = $_POST['name'];
$contact->from_email = $_POST['email'];
$contact->subject = $_POST['subject'];

$contact->add_message($_POST['name'], 'From');
$contact->add_message($_POST['email'], 'Email');
$contact->add_message($_POST['message'], 'Message', 10);

// Simpan data ke dalam database
$name = $_POST['name'];
$email = $_POST['email'];
$message = $_POST['message'];

$sql = "INSERT INTO messages (name, email, message) VALUES ('$name', '$email', '$message')";
if (mysqli_query($connection, $sql)) {
    // echo "Data berhasil disimpan ke database.";
} else {
    echo "Terjadi kesalahan: " . mysqli_error($connection);
}

echo $contact->send();
?>
