<?php
$host = 'nama_host_database';
$username = 'nama_pengguna_database';
$password = 'kata_sandi_database';
$database = 'contoh_database';

$connection = mysqli_connect($host, $username, $password, $database);
if (!$connection) {
    die("Koneksi database gagal: " . mysqli_connect_error());
}

$receiving_email_address = 'contact@example.com';

if (file_exists($php_email_form = '')) {
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

// Uncomment below code if you want to use SMTP to send emails. You need to enter your correct SMTP credentials
/*
  $contact->smtp = array(
  'host' => 'example.com',
  'username' => 'example',
  'password' => 'pass',
  'port' => '587'
  );
*/

$contact->add_message($_POST['name'], 'From');
$contact->add_message($_POST['email'], 'Email');
$contact->add_message($_POST['message'], 'Message', 10);

// Simpan data ke dalam database
$name = $_POST['name'];
$email = $_POST['email'];
$message = $_POST['message'];

$sql = "INSERT INTO messages (name, email, message) VALUES ('$name', '$email', '$message')";
if (mysqli_query($connection, $sql)) {
    echo "Data berhasil disimpan ke database.";
} else {
    echo "Terjadi kesalahan: " . mysqli_error($connection);
}

echo $contact->send();
?>
