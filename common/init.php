<?php

	define('CAT_SORT',		'categories');
	define('ALPHA_SORT',	'alphabetical');
	define('SORT_DEFAULT',	CAT_SORT);
	

	session_start();
	
	// If no sort mode exists, set the default
	if(!isset($_SESSION['sort_mode'])) $_SESSION['sort_mode'] = SORT_DEFAULT;
	
	// If a new sort mode is specified, set it now
	if(isset($_GET['sort'])) {
		$_SESSION['sort_mode'] = $_GET['sort'];
	}
	
	// Set the convenience booleans for the sort mode
	if($_SESSION['sort_mode'] == CAT_SORT){
		$cat_sort = TRUE;
		$alpha_sort = FALSE;
	} else if($_SESSION['sort_mode'] == ALPHA_SORT){
		$alpha_sort = TRUE;
		$cat_sort = FALSE;
	} else {
		// If for some reason we have a bad value, reset it
		$_SESSION['sort_mode'] = SORT_DEFAULT;
		$cat_sort = TRUE;
		$alpha_sort = FALSE;
	}
?>