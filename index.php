<?php
	include("common/init.php");

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
			require_once "common/db/functions.php";
			
			if($cat_sort){
				// Get Categories
				$query = "SELECT * FROM `item_categories` ORDER BY `order` ASC";
				$categories = execute($query);
				while ($category = mysql_fetch_array($categories))
				{
					// Print Category
					echo '<div class="item_category">';
					printf("<h1>%s</h1>\n", $category['name']);
					
					// Get Subcategories
					$query = sprintf("SELECT * FROM `item_subcategories` WHERE `cat_id`=%d ORDER BY `order` ASC", $category['id']);
					$subcats = execute($query);
					while ($subcat = mysql_fetch_array($subcats))
					{
						// Print Subcategory
						echo '<div class="item_subcategory">';
						printf("<h2>%s</h2>\n", $subcat['name']);
						
						// Get Items
						$items = Item::all(sprintf("WHERE `category`=%d AND `subcategory`=%d ORDER BY `name` ASC", $category['id'], $subcat['sub_id']));
						Item::renderList($items);	
						
						echo '</div>';
					}
					echo '</div>';
					
				}
				
			} else {
				echo "<h1>Food &amp; Drink</h1>\n";
				
				$items = Item::all("ORDER BY `name` ASC");
				Item::renderList($items);	
			}
			
		?>
	</div>
</body>
</html>