<?php


 
class ModulosController extends PluginController
{
    const PLUGIN_ID      = "modulos";
    function __construct() {
        AuthUser::load();
        if (!(AuthUser::isLoggedIn())) {
            redirect(get_url('login'));            
        }

        $this->setLayout('backend');
        $this->assignToLayout('sidebar', new View('../../plugins/modulos/views/sidebar'));
         Plugin::addJavascript(self::PLUGIN_ID, "jquery-1.4.2.min.js");
    }

    function index() {
        $pdo = Record::getConnection();

        if ('mysql' == $pdo->getAttribute(PDO::ATTR_DRIVER_NAME)) {

            $this->display('modulos/views/index', array(
                'log_entry_today'     => Record::findAllFrom('modulosLogEntry', 'created_on > CURRENT_DATE() ORDER BY created_on DESC'),
                'log_entry_yesterday' => Record::findAllFrom('modulosLogEntry', 'created_on > DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY) AND created_on < CURRENT_DATE() ORDER BY created_on DESC'),
                'log_entry_older'     => Record::findAllFrom('modulosLogEntry', 'created_on < DATE_SUB(CURRENT_DATE(), INTERVAL 1 DAY) ORDER BY created_on DESC')
            ));            
        } else {

            $this->display('modulos/views/index', array(
                'log_entry_today'     => Record::findAllFrom('modulosLogEntry', "created_on > DATE('now') ORDER BY created_on DESC"),
                'log_entry_yesterday' => Record::findAllFrom('modulosLogEntry', "created_on > DATE('now', 'start of day', '-1 day') AND created_on < DATE('now', 'start of day') ORDER BY created_on DESC"),
                'log_entry_older'     => Record::findAllFrom('modulosLogEntry', "created_on < DATE('now', 'start of day', '-1 day') ORDER BY created_on DESC")
            ));            
        }
    }
    /*
    function addNotBtn()
    {
        $idPage=Page::find('modulos')->id;
        $newUrl = URL_PUBLIC.ADMIN_DIR."/page/add/".$idPage;
        return($newUrl);
    }
     */
    function clear() {
        $log_entry = Record::findAllFrom('modulosLogEntry');
        foreach ($log_entry as $entry) {
            $entry->delete();
        }
        
        redirect(get_url('plugin/modulos/'));
    }    
}
