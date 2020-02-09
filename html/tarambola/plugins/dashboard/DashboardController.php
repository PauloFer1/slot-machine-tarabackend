<?php

 
class DashboardController extends PluginController
{
    const PLUGIN_ID      = "dashboard";
     
    function __construct() {
        AuthUser::load();
        if (!(AuthUser::isLoggedIn())) {
            redirect(get_url('login'));            
        }

        $this->setLayout('backend');
        $this->assignToLayout('sidebar', new View('../../plugins/dashboard/views/sidebar'));
        Plugin::addJavascript(self::PLUGIN_ID, "gettingStarted.js");
        Plugin::addJavascript(self::PLUGIN_ID, "jquery-1.4.2.min.js");
        Plugin::addJavascript(self::PLUGIN_ID, "jquery-ui-1.8.2.custom.min.js");
        Plugin::addJavascript(self::PLUGIN_ID, "analyticsCharts.js");
        Plugin::addJavascript(self::PLUGIN_ID, "reporting.js");
        Plugin::addJavascript(self::PLUGIN_ID, "analytics.js");
    }

    function index() {
        $pdo = Record::getConnection();

        if ('mysql' == $pdo->getAttribute(PDO::ATTR_DRIVER_NAME)) {
             /* Queries for MySQL */
            $this->display('dashboard/views/index', array(
                'log_entry_today'     => Record::findAllFrom('DashboardLogEntry', 'created_on > CURRENT_DATE() ORDER BY created_on DESC'),
                'log_entry_yesterday' => Record::findAllFrom('DashboardLogEntry', 'created_on > DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY) AND created_on < CURRENT_DATE() ORDER BY created_on DESC'),
                'log_entry_older'     => Record::findAllFrom('DashboardLogEntry', 'created_on < DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY) ORDER BY created_on DESC')
            ));            
        } else {
             /* Otherwise assume SQLite */
            $this->display('dashboard/views/index', array(
                'log_entry_today'     => Record::findAllFrom('DashboardLogEntry', "created_on > DATE('now') ORDER BY created_on DESC"),
                'log_entry_yesterday' => Record::findAllFrom('DashboardLogEntry', "created_on > DATE('now', 'start of day', '-1 day') AND created_on < DATE('now', 'start of day') ORDER BY created_on DESC"),
                'log_entry_older'     => Record::findAllFrom('DashboardLogEntry', "created_on < DATE('now', 'start of day', '-1 day') ORDER BY created_on DESC")
            ));            
        }
    }
    
    function clear() {
        $log_entry = Record::findAllFrom('DashboardLogEntry');
        foreach ($log_entry as $entry) {
            $entry->delete();
        }        
        redirect(get_url('plugin/dashboard/'));   
    }    
}
