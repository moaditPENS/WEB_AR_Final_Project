<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "form_database";

$connection = mysqli_connect($servername, $username, $password, $dbname);
if (!$connection) {
    die("Koneksi database gagal: " . mysqli_connect_error());
}

class PHP_Email_Form {
    public $ajax = false;
    public $to;
    public $from_name;
    public $from_email;
    public $subject;
    public $message = array();
    public $attachments = array();

    public function add_message($content, $label = '', $level = 0) {
        $this->message[] = array(
            'content' => $content,
            'label' => $label,
            'level' => $level
        );
    }

    public function send() {
        global $connection;

        $name = mysqli_real_escape_string($connection, $this->from_name);
        $email = mysqli_real_escape_string($connection, $this->from_email);
        $subject = mysqli_real_escape_string($connection, $this->subject);
        $message = mysqli_real_escape_string($connection, $this->format_message($this->message));

        $sql = "INSERT INTO messages (name, email, message) VALUES ('$name', '$email', '$message')";
        if (mysqli_query($connection, $sql)) {
            return true;
        } else {
            return false;
        }
    }

    private function format_message($message, $prefix = '') {
        $output = '';
        foreach ($message as $item) {
            $content = $item['content'];
            $label = $item['label'];
            $level = $item['level'];
            if ($level > 0) {
                $content = str_repeat('  ', $level) . $content;
            }
            if (!empty($label)) {
                $output .= "<strong>{$label}:</strong> ";
            }
            $output .= $content;
            $output .= "<br>";
        }
        return $output;
    }
}
?>
