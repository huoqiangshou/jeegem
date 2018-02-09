<!DOCTYPE html>
<html>
  <head>
    <title>JeeGem - Login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">

    <link rel="icon" type="image/ico" href="${basePath}/resources/assets/images/favicon.ico">
    <!-- Bootstrap -->
    <link href="${basePath}/resources/assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="${basePath}/resources/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${basePath}/resources/assets/css/vendor/bootstrap-checkbox.css">
    <link rel="stylesheet" href="${basePath}/resources/assets/css/vendor/bootstrap/bootstrap-dropdown-multilevel.css">
	
    <link href="${basePath}/resources/assets/css/minimal.css" rel="stylesheet">
	
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="${basePath}/common/html5shiv.js"></script>
      <script src="${basePath}/resources/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="bg-1">
		<div class="jeegemmask" style="display: none;"><div id="jeegemloader"></div></div>
    <!-- Wrap all page content here -->
    <div id="wrap">
      <!-- Make page fluid -->
      <div class="row">
        <!-- Page content -->
        <div id="content" class="col-md-12 full-page login">
		
          <div class="inside-block">
            <img src="${basePath}/resources/assets/images/logo-big.png" alt="" class="logo">
            <h1><strong>Welcome</strong> Coder</h1>
            <h5>Jeegem Admin Theme</h5>

            <form id="_form" action="" method="post" class="form-signin">
              <section>
                <div class="input-group">
                  <input type="text" class="form-control" id="email" name="email" placeholder="Email">
                  <div class="input-group-addon"><i class="fa fa-user"></i></div>
                </div>
                <div class="input-group">
                  <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                  <div class="input-group-addon"><i class="fa fa-key"></i></div>
                </div>
              </section>
              <section class="controls">
                <div class="checkbox check-transparent" >
                  <input type="checkbox"  id="remember"  />
                  <label for="remember">记住我!</label>
                </div>
				
                <a href="#">忘记密码?</a>
              </section>
              <section class="log-in">
              <button class="btn btn-greensea" id="login" type="button">登录</button>
                <span>or</span>
                <button class="btn btn-slategray" id="register" type="button">创建账号</button>
              </section>
            </form>
          </div>


        </div>
        <!-- /Page content -->  
      </div>
    </div>
    <!-- Wrap all page content end -->
    	
		<!-- Javascript -->
        <script  src="${basePath}/js/common/jquery/jquery1.8.3.min.js"></script>
        <script  src="${basePath}/js/common/MD5.js"></script>
        <script  src="${basePath}/js/common/supersized.3.2.7.min.js"></script>
        <script  src="${basePath}/js/common/supersized-init.js"></script>
		<script  src="${basePath}/js/common/layer/layer.js"></script>
		
		<script >
			jQuery(document).ready(function() {
			    
				try{
					var _href = window.location.href+"";
					if(_href && _href.indexOf('?kickout')!=-1){
						layer.msg('您已经被踢出，请重新登录！');
					}
				}catch(e){
					
				}
				//回车事件绑定
				document.onkeydown=function(event){
					var e = event || window.event || arguments.callee.caller.arguments[0];
					if(e && e.keyCode==13){ 
						$('#login').click();
					}
				}; 
				
				//登录操作
			    $('#login').click(function(){
			    	
			        var email = $('#email').val();
			        var password = $('#password').val();
			        
			        if(email == '') {
			            layer.msg("email不能为空",function(){});
			            return false;
			        }
			        if(password == '') {
			            layer.msg("password不能为空",function(){});
			            return false;
			        }
			        var pswd = MD5(email +"#" + password),
			        	data = {pswd:pswd,email:email,rememberMe:$("#remember").is(':checked')};
    				
			        $.ajax({
			        	url:"${basePath}/u/submitLogin.shtml",
			        	data:data,
			        	type:"post",
			        	dataType:"json",
			        	beforeSend:function(){
			        		$(".jeegemmask").css("display","block");
			        	},
			        	success:function(result){
        					$(".jeegemmask").fadeOut(300);
        					 
				    		if(result && result.status != 200){
				    			layer.msg(result.message,function(){});
				    			$('.password').val('');
				    			return;
				    		}else{
				    			
				    			window.location.href= result.back_url || "${basePath}/";
				    		}
			        	},
			        	error:function(e){
			        		$(".jeegemmask").fadeOut(300)
			        		console.log(e,e.message);
			        		layer.msg('请看后台Java控制台，是否报错，确定已经配置数据库和Redis',new Function());
			        	}
			        });
			    });
			    $('.page-container form .username, .page-container form .password').keyup(function(){
			        $(this).parent().find('.error').fadeOut('fast');
			    });
			    //注册
			    $("#register").click(function(){
			    	window.location.href="register.shtml";
			    });
			});
        </script>
    
  </body>
</html>
      