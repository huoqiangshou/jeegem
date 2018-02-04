<!DOCTYPE html>
<html>
  <head>
    <title>Jeegem - Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">

    <link rel="icon" type="image/ico" href="${basePath}/resources/assets/images/favicon.ico">
    <!-- Bootstrap -->
    <link href="${basePath}/resources/assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="${basePath}/resources/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${basePath}/resources/assets/css/vendor/animate/animate.css">
    <link type="text/css" rel="stylesheet" media="all" href="${basePath}/resources/assets/js/vendor/mmenu/css/jquery.mmenu.all.css">
    <link rel="stylesheet" href="${basePath}/resources/assets/js/vendor/videobackground/css/jquery.videobackground.css">
    <link rel="stylesheet" href="${basePath}/resources/assets/css/vendor/bootstrap-checkbox.css">
    <link rel="stylesheet" href="${basePath}/resources/assets/css/vendor/bootstrap/bootstrap-dropdown-multilevel.css">

    <link rel="stylesheet" href="${basePath}/resources/assets/js/vendor/chosen/css/chosen.min.css">
    <link rel="stylesheet" href="${basePath}/resources/assets/js/vendor/chosen/css/chosen-bootstrap.css">

    <link href="${basePath}/resources/assets/css/minimal.css" rel="stylesheet">

   <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="${basePath}/common/html5shiv.js"></script>
      <script src="${basePath}/resources/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="bg-4">

    <!-- Preloader -->

    <div id="wrap">

      <div class="row" >

        <!-- Page content -->
        <div id="jeegemcontent" class="col-md-12" style="padding-left: 30%;padding-top: 5%;">
          
          <!-- content main container -->
          <div class="main">

            <!-- row -->
            <div class="row">

              <!-- col 12 -->
              <div class="col-md-6">

                <!-- tile -->
                <section class="tile color transparent-black">


                  <!-- tile header -->
                  <div class="tile-header" align="center">
                    <h1 style="font-size: 50px;"><strong >注册</strong> </h1>
                  </div>

                  <!-- tile body -->
                  <div class="tile-body">
                    
                    <form class="form-horizontal" id="_form" action="" method="post">
                      
                      <div class="form-group">
                        <label for="nickname" class="col-sm-4 control-label">Nickname *</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" name="nickname" id="nickname" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="email" class="col-sm-4 control-label">Email Account *</label>
                        <div class="col-sm-8">
                          <input type="text" class="form-control" name="email" id="email" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="password" class="col-sm-4 control-label">Password *</label>
                        <div class="col-sm-8">
                          <input type="password" class="form-control" id="password">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="re_password" class="col-sm-4 control-label">Password Confirm *</label>
                        <div class="col-sm-8">
                          <input type="password" class="form-control" id="re_password" >
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="vcode" class="col-sm-4 control-label">验证码 *</label>
                        <div class="col-sm-4">
                          <input type="text" class="form-control" id="vcode" name="vcode" >
                        </div>
                        <div class="col-sm-4">
                          <img src="${basePath}/open/getGifCode.shtml" id="gifCode"/>
                        </div>
                      </div>

                      <div class="form-group form-footer">
                        <div class="col-sm-offset-4 col-sm-8">
                          <button type="button" class="btn btn-primary " id="register">提交</button>
                          <button type="button" class="btn btn-default" id="login">登录</button>
                        </div>
                      </div>
                    </form>
                  </div>
                  
                </section>

              </div>

            </div>

          </div>

        </div>

      </div>

    </div>
	
		<script  src="${basePath}/js/common/jquery/jquery1.8.3.min.js"></script>
        <script  src="${basePath}/js/common/MD5.js"></script>
        <script  src="${basePath}/js/common/supersized.3.2.7.min.js"></script>
        <script  src="${basePath}/js/common/supersized-init.js"></script>
		<script  src="${basePath}/js/common/layer/layer.js"></script>
	
    <script>
		jQuery(document).ready(function() {
				// 用click事件
			    $(document).click( function(event) {
			        console.log('click');
			        event.stopPropagation();
			    });
				
				//验证码
				$("#gifCode").on("click",function(){
					jQuery("#gifCode").attr("src","${basePath}/open/getGifCode.shtml?d"+new Date().getTime());
				});
				
			    $('#register').click(function(){
			    	
			    	if($('[name=nickname]').val().length ==0){
			    		
			    		return layer.msg('用户名不为空！',function(){}),!1;
			    	}
			    	
			    	if($('[name=email]').val().length ==0){
			    		return layer.msg('email不可为空！',function(){}),!1;
			    	}
			    	
			    	var re_password = $("#re_password").val();
			    	var password = $("#password").val();
			    	if(password != re_password){
			    		return layer.msg('2次密码输入不一样！',function(){}),!1;
			    	}
			    	
			    	if($('[name=vcode]').val().length !=4){
			    		return layer.msg('验证码的长度为4位！',function(){}),!1;
			    	}
			    	var load = layer.load();
			    	$.post("${basePath}/u/subRegister.shtml",$("#_form").serialize() ,function(result){
			    		layer.close(load);
			    		if(result && result.status!= 200){
			    			return layer.msg(result.message,function(){}),!1;
			    		}else{
			    			layer.msg('注册成功！' );
			    			window.location.href= result.back_url || "${basePath}/";
			    		}
			    	},"json");
			        
			    });
			    $("form :text,form :password").keyup(function(){
			        $(this).parent().find('.error').fadeOut('fast');
			    });
			    //跳转
			    $("#login").click(function(){
			    	window.location.href="login.shtml";
			    });
			
			});
    
      
    </script>
  </body>
</html>
      