<?php

define("DB_NAME", getenv("DB_NAME"));     // MYSQLDATABASE
define("SERVER_READ", getenv("DB_HOST")); // MYSQLHOST
define("SERVER_WRITE", getenv("DB_HOST")); 
define("SERVER_PORT", getenv("DB_PORT")); // MYSQLPORT

define("COMPTE_BASE", getenv("DB_USER")); // MYSQLUSER
define("PSWD_BASE", getenv("DB_PASS"));   // MYSQLPASSWORD

define("ENABLE_SSL","0");
define("SSL_MODE","");
define("SSL_KEY","");
define("SSL_CERT","");
define("CA_CERT","");
?>
