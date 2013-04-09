<?php
class project extends FeiTm{
        function __construct() {
            parent::__construct();
            $this->__initial('project');
        }
        
        function index(){
            
		}
        
        function task(){
            
        }

        function bug(){
        	
        }

        function cost(){

        }

        function lists(){
            $project = FeiClass('model_project');
        }
        
        
}