<?php
require_once("DataObject.php");

class Item extends DataObject
{
	protected static $TABLE = 'items';
	
	public function render(){
		echo '<li>';
		echo '<a href="item.php?id='.$this->id.'" >';
		echo '<img class="item-image" src="'.$this->thumb_url.'" height="40" width="40" alt="'.$this->name.'"/>';
		echo '<span class="item-name">'.$this->name.'</span>';
		echo '</a>';
		echo '</li>';
		echo "\n";
	}
	
	public static function renderList($items){
		if(is_array($items)){
			echo '<ul class="items-list">';
			foreach($items as $index=>$item)
			{
				$item->render();
			}
			echo "</ul>\n";
		}/* else {
			if(method_exists($items, "render"))
				$items->render();
		}*/
	}
	
}

?>