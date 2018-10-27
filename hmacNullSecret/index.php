<?php

if (empty($_POST['hmac']) || empty($_POST['host'])) {
  header('HTTP/1.0 400 Bad Request');
  exit;
}

$secret = getenv('secret');

if (isset($_POST['nonce'])) {
  // Deadly vuln is here. Passing nonce in directly allows
  // user to pass in any type of data. Unsupported types like
  // arrays will cause a return value of NULL with no error
  $secret = hash_hmac('sha256', $_POST['nonce'], $secret);
}

$hmac = hash_hmac('sha256', $_POST['host'], $secret);

if ($hmac !== $_POST['hmac']) {
  header('HTTP/1.0 403 Forbidden');
  exit;
}

echo exec('host'.$_POST['host']);

?>
