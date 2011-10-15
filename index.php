<?php
	include("common/init.php");
	require_once "common/classes/Category.php";
	

	include("common/head_open.php");
	include("common/head.php");
	include("common/head_close.php");
	
?>

<body>
	<div class="container">
		<ul class="toggle right-align">
			<li <?php if($cat_sort) echo 'class="active"'?>><a href="index.php?sort=<?php echo CAT_SORT; ?>">Categories</a></li>
			<li <?php if($alpha_sort) echo 'class="active"'?>><a href="index.php?sort=<?php echo ALPHA_SORT; ?>">Alphabetical</a></li>
		</ul>
		
		<?php
			if($cat_sort){
				$categories = Category::all("ORDER BY `order` ASC");
				Category::renderList($categories);
				
			} else {
				echo "<h1>Food &amp; Drink</h1>\n";
				
				$items = Item::all("ORDER BY `name` ASC");
				Item::renderList($items);	
			}
		?>
		
	</div>
</body>
</html>