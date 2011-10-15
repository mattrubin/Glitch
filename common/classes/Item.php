<?php
require_once("DataObject.php");

define('MOOD', 'Mood');
define('ENERGY', 'Energy');
define('XP', 'Experience');

class Item extends DataObject
{
	
	protected static $TABLE = 'items';
	
	private $buff_object = NULL;
	
	public function render_li(){
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
				$item->render_li();
			}
			echo "</ul>\n";
		}
	}
	
	public function renderAsIngredient(){
		$value = isset($this->quantity)?$this->quantity:'';
		
		echo "<td ".((intVal($value)==0)?'style="opacity:.5;"':'')." id='ingredient-".$this->id."'>
		<input type='text' size='2'
			id='quantity-".$this->id."'
			name='quantity-".$this->id."'
			value='".$value."' onkeyup='checkVal(this.value, \"ingredient-".$this->id."\")'/>
		<img src='".$this->thumb_url."' height='30' width='30'/>";
		echo " ".$this->name."</td>";		
	}
	
	public static function renderIngredientsList($items){
		if(is_array($items)){
			echo '<table style="font-size:75%;">';
			
			$i=0;
			$step = 5;
			foreach($items as $index=>$item)
			{
				if($i%$step==0) echo "<tr>";
				
				$item->renderAsIngredient();
				
				if($i%$step==$step-1)echo "</tr>\n";
				$i++;
			}
			echo "</table>\n";
		}
	}
	
	public function render_info(){
		$this->render_title();
		$this->render_metabolics();
		$this->render_details();
	}
	
	public function render_title(){
		echo "<h1 class=\"item-title\">";
		echo "\t<img src=\"$this->thumb_url\" width=\"40\" height=\"40\"/>\n";
		echo "\t$this->name\n";
		echo "</h1>";	
	}
	
	public function render_metabolics(){
		echo '<ul class="metabolics">';
		$this->render_metabolic(MOOD, $this->consume_mood);
		$this->render_metabolic(ENERGY, $this->consume_energy);
		$this->render_metabolic(XP, $this->consume_xp);
		if($buff = $this->getBuff())
			$buff->render_li();
		echo "</ul>\n";	
	}
	
	public static function render_metabolic($metabolic, $value){
		$value = intVal($value);
		if($value == 0) return;
		echo '<li '.(($value==0)?'style="opacity:.3;"':'').'>';
		echo '<img class="metabolic-image" src="images/'.strtolower($metabolic).'.png" alt="'.$metabolic.'"/>';
		echo '<span class="value '.(($value >= 0)?'positive':'negative').'">'.$value.'</span>';
		echo '</li>';
		echo "\n";
	}
	
	
	public function render_details(){
		echo "<ul class=\"item-details\">\n<li class=\"item-price\">\n";
		printf("\tWorth about <strong>%d currants</strong>\n", $this->street_price);
		echo "</li><li class=\"item-stack\">\n";
		printf("\tFits up to <strong>%d</strong> in a backpack slot\n", $this->stack_height);
		echo "</li>\n</ul>\n";		
	}
	
	
	public function getBuff(){
		if(!$this->consume_buff) return NULL;
		if($this->buff_object) return $this->buff_object;
		
		$this->buff_object = Buff::get($this->consume_buff);
		return $this->buff_object;
	}
	
}

?>