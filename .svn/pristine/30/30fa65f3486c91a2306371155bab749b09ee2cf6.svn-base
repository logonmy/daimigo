<?php
class content extends FeiController{
	function index(){
		$theme_info = parse_ini_file(APP_PATH.'/themes/default/default.ini',true);
		//print_r($GLOBALS['G_Fei']);
		$this->TEMURL = 'http://www.feicms.com/themes/default/';
		$this->gg = FeiClass('TemplateParse');
		$this->display('index.html');
	}
}