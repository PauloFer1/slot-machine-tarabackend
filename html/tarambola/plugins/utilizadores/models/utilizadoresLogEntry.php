﻿<?php

/*
 * utilizadores - Frog CMS utilizadores plugin
 *
 * Copyright (c) 2008 Mika Tuupola
 *
 * Licensed under the MIT license:
 *   http://www.opensource.org/licenses/mit-license.php
 *
 * Project home:
 *   http://www.appelsiini.net/
 *
 */

class utilizadoresLogEntry extends Record
{
    const TABLE_NAME = 'utilizadores_log';
    
    public  $log_time;
    public  $ident;
    public  $priority;
    public  $message;
    public  $username;

    public function beforeSave()
    {           
        $this->created_on = date('Y-m-d H:i:s');
        $this->username   = AuthUser::getRecord()->name;
        $this->message    = str_replace(':username', $this->username, $this->message);
        return true;
    }
    
    public function priority($format='number') {
        
        $priority[0] = 'emerg';
        $priority[1] = 'alert';
        $priority[2] = 'crit';
        $priority[3] = 'err';
        $priority[4] = 'warning';
        $priority[5] = 'notice';
        $priority[6] = 'info';
        $priority[7] = 'debug';
        
        $retval = $this->priority;
        if ('string' == $format) {
            $retval = $priority[$this->priority];
        }
        return $retval;
    }
}

