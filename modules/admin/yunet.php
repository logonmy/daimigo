<?php
class yunet extends FeiController{
        
        function __construct() {
            parent::__construct();
            $this->__initial('yunet');
            //Public Statics
            $this->STATICS = "http://oa.feei.cn/statics/";
            $this->CSS_PATH = $this->STATICS."css/";
            $this->IMG_PATH = $this->STATICS."images/";
            $this->JS_PATH = $this->STATICS."script/";
        }
        
        function index(){
            
	    }
        
        function login(){
            if(FeiClass(FeiAcl)->get()=='Fei_Admin'){
                $this->jump(FeiUrl('yunet'));
            }else if(isset($_POST['username'])){
                 $user = FeiClass(model_user);
                $conditions = array('username'=>$this->FeiArgs('username'),'password'=>$this->FeiArgs('password'));
                if($user->find($conditions)){
                    FeiClass(FeiAcl)->set('Fei_Admin');
                    $_SESSION['Fei_Username']= $this->FeiArgs('username');
                    $this->jump(FeiUrl('yunet'));
                }else{
                    $this->error('用户名或密码错误！',FeiUrl('yunet'));
                }
            }else{
                $this->__initial();
            }
        }
        
        function logout(){
            $_SESSION = array();
            if (isset($_COOKIE[session_name()])) {setcookie(session_name(), '', time()-42000, '/');}
            FeiClass('FeiAcl')->set("");
            session_destroy();
            $this->success("已退出！", FeiUrl("yunet","login"));
        }
        
        function main(){
            
        }
        
        function profile(){
            
        }
        
        function editpwd(){
            
        }

        function message(){
            $message = FeiClass('model_message');
            $conditions = array('userid'=>$this->User['id']);
            $this->MSGS = $message->findAll($conditions);
        }

        function todo(){
            $todo = FeiClass('model_todo');
            $conditions = array('userid'=>$this->User['id']);
            $this->TODOS = $todo->findAll($conditions);
        }
        
        function __user(){
            
        }
        
        function  __initial($c)
        {
                $this->setLang('zh-cn');
                $this->gg = FeiClass('TemplateParse');
                $category = FeiClass(model_category);
                $conditions = array('parentid'=>'0');
                $this->TopCategory = $category->findAll($conditions,"listorder");
                $result = $category->findBy('letter',$c);
                $results = $result[catid];
                $conditions = array('parentid'=>$results);
                $top2category = $category->findAll($conditions,"listorder");
                if(is_array($top2category) && !empty($top2category))
                {
                    foreach($top2category as $k=>$v)
                    {
                        if(isset($v['catid']) && $v['catid'])
                        {
                            $conditions = array('parentid'=>$v['catid']);
                            $top2category[$k][sanji] = $category->findAll($conditions,"listorder");
                        }
                    }
                }
                $this->top2category = $top2category;
                //读取用户基本信息
                if(isset($_SESSION['Fei_Username']) && !empty($_SESSION['Fei_Username'])){
                    $user = FeiClass('model_user');
                    $this->User = $user->findBy('username',$_SESSION['Fei_Username']);
                }
        }
        
}
