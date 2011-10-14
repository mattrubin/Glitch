<?php

define('MOOD', 'Mood');
define('ENERGY', 'Energy');
define('XP', 'Experience');


function render_metabolic($metabolic, $value){
	$value = intVal($value);
	if($value == 0) return;
	echo '<li '.(($value==0)?'style="opacity:.3;"':'').'>';
	echo '<img class="metabolic-image" src="images/'.strtolower($metabolic).'.png" alt="'.$metabolic.'"/>';
	//if($value >= 0)
		echo '<span class="value '.(($value >= 0)?'positive':'negative').'">'.$value.'</span>';
	//else
	//	echo '<span class="negative value">'.$value.'</span>';
	echo '</li>';
	echo "\n";
}
function render_buff($name){
	echo '<li class="buff">';
	echo '<span class="value">+<a href="buff.php">'.$name.'</a></span>';
	echo '</li>';
	echo "\n";
}


function render_metabolics($mood, $energy, $xp, $buff=null){
	echo '<ul class="metabolics">';
	render_metabolic(MOOD, $mood);
	render_metabolic(ENERGY, $energy);
	render_metabolic(XP, $xp);
	if($buff) render_buff($buff);
	echo "</ul>\n";	
}

function render_cost($mood, $energy, $xp, $currants=0){
	echo '<ul class="cost">';
	render_metabolic(MOOD, $mood);
	render_metabolic(ENERGY, $energy);
	render_metabolic(XP, $xp);
	echo "</ul>\n";	
}


?>