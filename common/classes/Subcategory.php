<?php
require_once "common/classes/DataObject.php" ;
require_once "common/classes/Item.php";

class Subcategory extends DataObject
{
	protected static $TABLE = 'item_subcategories';
	
	private $cached_items;
	
	public function render(){
		echo '<div class="item-subcategory">';
		printf("<h2>%s</h2>\n", $this->name);
		
		Item::renderList($this->getItems());
				
		echo '</div>';
	}
	
	public static function renderList($many){
		if(is_array($many)){
			foreach($many as $one)
			{
				$one->render();
			}
		}
	}
	
	public function getItems(){
		if(isset($this->cached_items)) return $this->cached_items;
		$this->cached_items = Item::all(sprintf("WHERE `category`=%d AND `subcategory`=%d ORDER BY `name` ASC", $this->cat_id, $this->sub_id));
		return $this->cached_items;
		
	}
}

?>