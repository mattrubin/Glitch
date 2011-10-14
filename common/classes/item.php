<?php

function render_item($item){
	echo '<li>';
	echo '<a href="item.php?id='.$item['id'].'" >';
	echo '<img class="item-image" src="'.$item['thumb_url'].'" height="40" width="40" alt="'.$item['name'].'"/>';
	echo '<span class="item-name">'.$item['name'].'</span>';
	echo '</a>';
	echo '</li>';
	echo "\n";
}


function render_item_list($items){
	echo '<ul class="items-list">';
	while ($item = mysql_fetch_array($items))
	{
		render_item($item);
	}
	echo "</ul>\n";	
}

?>