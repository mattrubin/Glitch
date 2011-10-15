<?php
include("common/init.php");
include_once("common/classes/DataObject.php");
include_once("common/classes/Buff.php");
include_once("common/classes/Item.php");

include_once "common/db/functions.php";

	if(isset($_POST['item_id'])) {
		
		// If the recipe doesn't exist, create it
		$query = sprintf("SELECT `id` FROM `recipes` WHERE `product_id`=%d", $_POST['item_id']);
		$result = execute($query);
		if(mysql_num_rows($result)<1){
			$query = sprintf("INSERT INTO `recipes` (`product_id`) VALUES (%d)", $_POST['item_id']);
			$result = execute($query);
		}
		
		// Update recipe attributes
		$query = sprintf("UPDATE `recipes` SET `cost_energy`=%d, `cost_mood`=%d, `cost_xp`=%d, `cost_currants`=%d, `yield`=%d WHERE `id`=%d",
							$_POST['cost_energy'], $_POST['cost_mood'], $_POST['cost_xp'], $_POST['cost_currants'], $_POST['yield'], $_POST['recipe_id']);
		$result = execute($query);
		
		
		//Update existing ingredients
		$query = sprintf("SELECT * FROM `ingredients` WHERE `recipe_id`=%d", $_POST['recipe_id']);
		$result = execute($query);
		
		$in_use = array();
		while ($row = mysql_fetch_array($result))
		{
			array_push($in_use, $row['item_id']);
			
			$quantity = $_POST["quantity-".$row['item_id']];
			if($quantity > 0){
				// Update the quantity
				$query = sprintf("UPDATE `ingredients` SET `quantity`=%d WHERE `recipe_id`=%d AND `item_id`=%d", $quantity, $_POST['recipe_id'], $row['item_id']);
				execute($query);
			} else {
				// Delete the ingredient
				$query = sprintf("DELETE FROM `ingredients` WHERE `recipe_id`=%d AND `item_id`=%d", $_POST['recipe_id'], $row['item_id']);
				execute($query);
			}
		}
		
		// Check for new ingredients
		foreach ($_POST as $key => $value){
			if(!is_string($key)) continue; // Must have a string key
			if(strpos($key, "quantity")===FALSE) continue; // Must be a quantity value
			if(!(intVal($value) >0)) continue; // Must have qantity > 0
			$current_item_id = substr($key, strrpos($key,"-")+1);
			if(in_array($current_item_id, $in_use)) continue; // Must not be an existing ingredient (already updated above)
			
			$query = sprintf("INSERT INTO `ingredients` (`recipe_id`, `item_id`, `quantity`) VALUES (%d, %d, %d)", $_POST['recipe_id'], $current_item_id, $value);
			execute($query);
			
		    //$aa .= $key." : ".$value."<br/>\n";
		}
		//die($aa);
		
		header("Location:item.php?id=".$_POST['item_id']);
	}
	
	
	
	
	// If no id is defined, return to the index 
	if(!isset($_GET['id'])) header("Location:index.php");
	$item_id = $_GET['id'];
	
	
	
	$item = Item::get($item_id);
	$buff = $item->getBuff();
	
	
	
	$query = sprintf("SELECT * FROM `recipes` WHERE `product_id` = %d", $item_id);
	$result = execute($query);
	while(mysql_num_rows($result)<1){
		$query = sprintf("INSERT INTO `recipes` (`product_id`) VALUES (%d)", $item_id);
		$result = execute($query);
		
		$query = sprintf("SELECT * FROM `recipes` WHERE `product_id` = %d", $item_id);
		$result = execute($query);
	}
	$recipe = mysql_fetch_array($result);
	
	
?>


<?php
	include("common/head_open.php");
	$title = "Item: ".$item->name;
	include("common/head.php");
?>
<script>

function checkVal(val, idStr){
	var td = document.getElementById(idStr);
	if(val!=0){
		td.style.opacity="1";
	} else {
		td.style.opacity=".5";
	}
	
}
</script>

<?php
	include("common/head_close.php");
?>
<body>
	<div class="container">
		<a href="item.php?id=<?php echo $item->id; ?>&go=previous" >&lt; Previous</a> |
		<a href="index.php">Index</a> |
		<a href="item.php?id=<?php echo $item->id; ?>&go=next" >Next &gt;</a>
		
		<?php
			// Render basic info about the item
			$item->render_info();
		?>
		
		
		
		
		
		<br/><br/><br/><br/>
		<h2><?php echo ($recipe['harvest'])?'Harvest':'Recipe'; ?></h2>
		<?php 
			function render_cost($mood, $energy, $xp, $currants=0){
				echo '<ul class="cost">';
				Item::render_metabolic(MOOD, $mood);
				Item::render_metabolic(ENERGY, $energy);
				Item::render_metabolic(XP, $xp);
				echo "</ul>\n";	
			}
			
			render_cost($recipe['cost_mood'], $recipe['cost_energy'], $recipe['cost_xp'], $recipe['cost_currants']);
		?>
		<form method="post" id="form">
			<input type='hidden' name='item_id' value='<?php echo $item->id ?>'/>
			<input type='hidden' name='recipe_id' value='<?php echo $recipe['id'] ?>'/>
			<b>Cost:</b>
			<span id="cost_energy_span" <?php if(intVal($recipe['cost_energy'])==0) echo 'style="opacity:.5;"'; ?>> Energy:
				<input type='text' size='1' name='cost_energy' value='<?php echo $recipe['cost_energy'] ?>'
				onkeyup='checkVal(this.value, "cost_energy_span")'/>
			</span>
			<span id="cost_currants_span" <?php if(intVal($recipe['cost_currants'])==0) echo 'style="opacity:.5;"'; ?>> Currants:
				<input type='text' size='1' name='cost_currants' value='<?php echo $recipe['cost_currants'] ?>'
				onkeyup='checkVal(this.value, "cost_currants_span")'/>
			</span>
			<span id="cost_mood_span" <?php if(intVal($recipe['cost_mood'])==0) echo 'style="opacity:.5;"'; ?>> Mood:
				<input type='text' size='1' name='cost_mood' value='<?php echo $recipe['cost_mood'] ?>'
				onkeyup='checkVal(this.value, "cost_mood_span")'/>
			</span>
			<span id="cost_xp_span" <?php if(intVal($recipe['cost_xp'])==0) echo 'style="opacity:.5;"'; ?>> XP:
				<input type='text' size='1' name='cost_xp' value='<?php echo $recipe['cost_xp'] ?>'
				onkeyup='checkVal(this.value, "cost_xp_span")'/>
			</span>
			<br/>
			<b>Yield:</b>		<input type='text' size='1' name='yield' value='<?php echo $recipe['yield'] ?>'/> &times; <img src='<?php echo $item->thumb_url ?>' width="30"/> 
			<br/>
			<input type="submit" value="Change">
			<br/>
		
		
			
			<?php
				if(!$recipe['harvest']) {
					$ingredients_in_use = Item::all(sprintf("RIGHT JOIN `ingredients` ON ingredients.item_id=items.id WHERE recipe_id=%d", $recipe['id']));
					Item::renderIngredientsList($ingredients_in_use);
					
					echo '</table><hr />';
					
					$ingredients_in_use = Item::all(sprintf("WHERE id NOT IN (SELECT item_id FROM `ingredients` WHERE recipe_id=%d)", $recipe['id']));
					Item::renderIngredientsList($ingredients_in_use);
				}
			?>
		</form>
	</div>
</body>
</html>