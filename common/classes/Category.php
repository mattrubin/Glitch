<?php
require_once "common/classes/DataObject.php" ;
require_once "common/classes/Subcategory.php";

class Category extends DataObject
{
	protected static $TABLE = 'item_categories';
	
	private $cached_subcats;
	
	public function render(){
		echo '<div class="item-category">';
		printf("<h1>%s</h1>\n", $this->name);
		
		Subcategory::renderList($this->getSubcategories());
		
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
		
	public function getSubcategories(){
		if(isset($this->cached_subcats)) return $this->cached_subcats;
		$this->cached_subcats = Subcategory::all(sprintf("WHERE `cat_id`=%d ORDER BY `order` ASC", $this->id));
		return $this->cached_subcats;
		
	}
}

?>