<?php
require_once("DataObject.php");

class Buff extends DataObject
{
	protected static $TABLE = 'buffs';
	
	public function render_li(){
		echo '<li class="buff">';
		echo '<span class="value">+<a href="buff.php">'.$this->name.'</a></span>';
		echo '</li>';
		echo "\n";
	}
}

?>