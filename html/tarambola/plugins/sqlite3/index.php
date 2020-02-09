<?php

/**


/**
 * Provides function to run tarambola CMS with SQLite 3 database.
 *
 * @package tarambola
 * @subpackage plugin.sqlite3
 *
 * @author Philippe Archambault <philippe.archambault@gmail.com>
 * @version 1.0
 * @since tarambola version 0.9.1
 * @license http://www.gnu.org/licenses/gpl.html GPL License
 * @copyright Philippe Archambault, 2008
 */

/**
 *
 */
if (class_exists('PDO', false))
{
	Plugin::setInfos(array(
		'id'		  => 'sqlite3',
		'title'		  => 'SQLite 3', 
		'description' => 'Provides function to run tarambola CMS with SQLite 3 database.', 
		'version'	  => '1.0.0', 
		'website'	  => 'http://www.tarambola.pt/',
    ));

	// adding function date_format to sqlite 3 'mysql date_format function'
	if (! function_exists('mysql_date_format_function'))
	{
		function mysql_function_date_format($date, $format)
		{
			return strftime($format, strtotime($date));
		}
	}
	
	if (isset($GLOBALS['__tarambola_CONN__']))
		if ($GLOBALS['__tarambola_CONN__']->getAttribute(PDO::ATTR_DRIVER_NAME) == 'sqlite')
			$GLOBALS['__tarambola_CONN__']->sqliteCreateFunction('date_format', 'mysql_function_date_format', 2);
	else if (Record::getConnection()->getAttribute(Record::ATTR_DRIVER_NAME) == 'sqlite')
		Record::getConnection()->sqliteCreateFunction('date_format', 'mysql_function_date_format', 2);
}