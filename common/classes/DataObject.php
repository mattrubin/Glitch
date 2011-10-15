<?php

require_once("common/db/functions.php");

class DataObject
{
	protected static $TABLE = 'buffs';
	
	public static function all($query_suffix = NULL){
		$query = sprintf("SELECT * FROM `%s` %s", static::$TABLE, $query_suffix);
		return self::getFromQuery($query);
	}
	public static function get($id){
		$query = sprintf("SELECT * FROM `%s` WHERE `id` = %d", static::$TABLE, $id);
		return self::getOneFromQuery($query);
	}
	
	private static function getFromQuery($query) {
		if(!static::$TABLE) return NULL;
		$result = execute($query);
		
		if(!is_resource($result)) {
			trigger_error($result);
			return NULL;
		}

		if(mysql_num_rows($result)<1) return NULL;
		
		$objects = array();
		while($row = mysql_fetch_array($result))
		{
			$o = self::buildFromArray($row);
			array_push($objects, $o);
		}
		
		if(count($objects) == 0) return NULL;
		return $objects;
	}
	
	
	private static function getOneFromQuery($query) {
		$objects = self::getFromQuery($query);
		if(is_array($objects) && count($objects) >= 1) return $objects[0];
		return NULL;
	}
	
	
	private static function buildFromArray($mysql_array){
		if(!is_array($mysql_array)) return NULL;
		$o = new static(); // Call static instead of self to update properly for subclasses
		
		foreach($mysql_array as $key=>$value) {
			if(is_numeric($key)) continue;
			//print $key." = ".$value."<br>\n";
			$o->$key = $value;
		}
		return $o;
	}
	
	
}

?>