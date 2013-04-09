<?php
class setting extends yunet{
        
        function __construct() {
            parent::__construct();
            $this->__initial('setting');
        }
        
        function index(){
            
	   }
        
        function menu(){
            $this->arr = $this->__get_categorys(0);
        }
        
        function ajax_databack(){
            if($_POST['handle']=='backup'){
                import(APP_PATH."/lib/Backup.php", FALSE, TRUE);
                $link = @mysql_connect("localhost","root","133285") or die ('Could not connect to server.');
                mysql_query("use feitm",$link);
                mysql_query("set names utf8",$link);
                $dbbck=new backupData($link);//实例化它，只要一个链接标识就行了 
                //备份数据时，如想备份一个数据库中的所有表，你可这样写： 
                
                $dbbck->backupTables("feitm","./backup/",array('*'));
                echo 'success';
                //备份数据时，如想备份一个数据库中的仅一个表时，你可这样写： 
               // $dbbck->backupTables("cms","./",array('user'));
                //备份数据时，如想备份一个数据库中的多个表时，你可这样写： 
               // $dbbck->backupTables("cms","./",array('user','acl','informatoin'));
                //注解：$dbbck->backupTables("参1","参2",array());中， 
            }else{
                $this->filelists = $this->__filelists();
            }
        }
        
        function databack(){
           $this->filelists = $this->__filelists();
        }
        
        function __filelists(){
            $dir = array();
            $dirs = array();
            foreach(glob("./backup/*.sql") as $filename){
                $dir[] = $filename;
            }
            for($i=0;$i<count($dir);$i++){
                $dirs[$i]['filename'] = end(explode('/',$dir[$i]));
                $size = filesize($dir[$i]);
                if($size < 1024){
                    $dirs[$i]['filesize'] = filesize($size);
                }elseif($size < 1048576){
                    $dirs[$i]['filesize'] = round($size/1024,2).'K';
                }elseif($size < 1073741824){
                    $dirs[$i]['filesize'] = round($size/1048576,2).'M';
                }elseif($size < 1099511627776){
                    $dirs[$i]['filesize'] = round($size/1073741824,2).'G';
                }
                $dirs[$i]['filectime'] = date('Y-m-d h:m:s',filectime($dir[$i]));
            }
            return $dirs;
        }

        
        //权限设置
        function permission(){
            $this->result = FeiClass(model_acl)->findAll();
        }
        
        function permission_set(){
            $acl = FeiClass(model_acl);
            if($_GET['action']=='edit' && isset($_GET['aclid']) && !empty($_GET['aclid']) && !isset($_POST['from'])){
                $this->P_s = $acl->findBy('aclid',$_GET['aclid']);
            }else if($_GET['action']=='edit' && $_POST['from']=='page'){
                $condition = array('aclid'=>$this->FeiArgs('aclid'));
                $rows = array(
                    'name'=>$this->FeiArgs('name'),
                    'controller'=>$this->FeiArgs('controller'),
                    'action'=>$this->FeiArgs('act'),
                    'acl_name'=>$this->FeiArgs('acl')
                    );
                if($acl->update($condition,$rows)){
                    $this->success('修改成功！',FeiUrl('setting','permission'));
                }else{
                    $this->error('错误',FeiUrl('setting','permission'));
                } 
            }else if($_GET['action']=='add' && $_POST['from']=='page'){
                $rows = array(
                    'name'=>$this->FeiArgs('name'),
                    'controller'=>$this->FeiArgs('controller'),
                    'action'=>$this->FeiArgs('act'),
                    'acl_name'=>$this->FeiArgs('acl')
                    );
                if($acl->create($rows)){
                    $this->success('添加成功！',FeiUrl('setting','permission'));
                }else{
                    $this->error('添加失败！',FeiUrl('setting','permission'));
                } 
            }
        }
        
        function category(){
            $category = FeiClass(model_category);
            if(isset($_GET['catid'])){
                $this->result = $category->findBy('catid',$_GET['catid']);
            }else if(isset($_POST[action]) && $_POST['action']=='edit'){
                $g_cate = $this->FeiArgs();
                $condititions = array('catid'=>$g_cate['catid']);
                $rows = array(
                    'parentid'=>$g_cate['parentid'],
                    'catname'=>$g_cate['catname'],
                    'listorder'=>$g_cate['listorder'],
                    'ismenu'=>$g_cate['ismenu'],
                    'letter'=>$g_cate['letter']
                    );
                if($category->update($condititions,$rows)){
                    $this->success('更新成功',  FeiUrl('setting'));
                }
            }else if(isset($_POST[action]) && $_POST[action]=='add'){
                $a_cate = $this->FeiArgs();
                $rows = array(
                    'parentid'=>$a_cate['parentid'],
                    'catname'=>$a_cate['catname'],
                    'listorder'=>$a_cate['listorder'],
                    'ismenu'=>$a_cate['ismenu'],
                    'letter'=>$a_cate['letter']
                );
                if($category->create($rows)){
                    $this->success('添加成功',  FeiUrl('setting'));
                }
            }
            $this->arr =  $this->__get_categorys(0);
        }
        
        function __get_categorys($parentid = 0)
        {
            $category = FeiClass(model_category);
            $arr = $category->findAll(array("parentid"=>$parentid),'listorder');
            foreach($arr as $k=>$v)
            {
                $arr[$k]['zi'] = $this->__get_categorys($v[catid]);
            }
            return $arr;
        }
        
}