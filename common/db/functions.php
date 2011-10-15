<?php
include "vars.php";


function execute($query) {
	if (mysql_connect(DATABASE_SERVER, DATABASE_USERNAME, DATABASE_PASSWORD)) {
		if (mysql_select_db(DATABASE_NAME)) {
			if ($result = mysql_query($query)) {
				return $result;
			} else { 
				$error = "MySQL Error:".mysql_error();
				return $error;
			}
		} else {
			$error = "Database not found";
			return $error; 
		}
	} else { 
		$error = "Database connection error";
		return $error; 
	}
}

?>