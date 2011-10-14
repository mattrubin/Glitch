<?php

include_once "db/functions.php";

	if(isset($_POST['thumb_url']) && isset($_POST['id'])) {
		
		$query = sprintf("UPDATE `items` SET `thumb_url`='%s' WHERE `id`=%d", $_POST['thumb_url'], $_POST['id']);
		$result = execute($query);
		
		header("Location:item_image.php?id=".(intval($_POST['id'])+1));
	}
	if(!isset($_GET['id'])) header("Location:index.php");
	$item_id = $_GET['id'];
	
	
	
	$query = sprintf("SELECT * FROM items WHERE id = %d", $item_id);
	$result = execute($query);
	
	$item = mysql_fetch_array($result);
	
?>

<html>
<head>
	<title>Item: <?php echo $item['name']; ?></title>
</head>
<body onload="form.thumb_url.focus(); ">
	<a href="index.php">&lt; Home</a>
	<h2><?php echo $item['name']; ?></h2>
	<img src='<?php echo $item['thumb_url'] ?>' />
	<form method="post" id="form">
		<input type='text' name='thumb_url' id="thumb_url" value='<?php echo $item['thumb_url'] ?>' size='100' onkeyup="form.submit();"/>
		<input type='hidden' name='id' value='<?php echo $item['id'] ?>'/>
		<input type="submit" value="Change">
	</form>
	<a href="item_image.php?id=<?php echo intval($item['id'])-1; ?>" >&lt; Previous</a> | 
	<a href="item_image.php?id=<?php echo intval($item['id'])+1; ?>" >Next &gt;</a>
</body>
</html>