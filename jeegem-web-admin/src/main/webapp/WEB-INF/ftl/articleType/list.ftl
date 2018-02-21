<!DOCTYPE html>
<html>
  <head>
    <title>${token.nickname} ---类目管理</title>
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
	<link rel="stylesheet" href="${basePath}/resources/assets/js/vendor/modals/css/component.css">
    
    <link href="${basePath}/resources/assets/css/minimal.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="${basePath}/common/html5shiv.js"></script>
      <script src="${basePath}/resources/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="bg-1">

    <!-- Preloader -->
    <div class="mask"><div id="loader"></div></div>
    <!--/Preloader -->

    <!-- Wrap all page content here -->
    <div id="wrap">

      <!-- Make page fluid -->
      <div class="row">
        
        <!-- Fixed navbar -->
       	<@_navbar.navbar  4 41/>
        <!-- Fixed navbar end-->
        
        <!-- Page content -->
        <div id="content" class="col-md-12">
          
          <!-- page header -->
          <@_pageHeader.pageHeader  'CMS管理' '类目管理'/>
          <!-- /page header -->
          

          <!-- content main container -->
          <div class="main">

            <!-- row -->
            <div class="row">

              <!-- col 6 -->
              <div class="col-md-12">

                <!-- tile -->
                <section class="tile color transparent-black">
                  <div class="tile-header">
                      <a href="#updateArticleTypeModal" role="button" class="btn btn-cyan" id="updateArticleType" data-toggle="modal" disabled>修改类目</a>
                      <a href="#addArticleTypeModal" role="button" class="btn btn-red" data-toggle="modal">新增类目</a>
                      <a href="javascript:void(0);" role="button" class="btn btn-orange" id="deleteArticleType" >删除类目</a>
                  </div>

                  <div class="tile-body nopadding">
                    
                    <table class="table">
                      <thead>
                        <tr>
                          <th>
                          	<div class="checkbox check-transparent">
                              <input type="checkbox"  id="checkAll">
                              <label for="checkAll"></label>
                            </div>
                          </th>
                          <th >排序序号</th>
                          <th>类目名称</th>
                          <th>SEO关键字</th>
                          <th>SEO描述</th>
                        </tr>
                      </thead>
                      <tbody>
                        <#if page?exists && page.list?size gt 0 >
							<#list page.list as item>
		                        <tr>
		                          <td>
		                          	  <div class="checkbox check-transparent">
			                              <input type="checkbox" value="${item.id}" check='box'  id="chck${item.id}">
			                              <label for="chck${item.id}"></label>
		                          	  </div>
		                          </td>
		                          <td>${item.sequence?default('未设置')}</td>
		                          <td>${item.typeName?default('未设置')}</td>
		                          <td>${item.keywords}</td>
		                          <td>${item.description}</td>
		                        </tr>
	                      	</#list>
                      	</#if>
                      </tbody>
                    </table>
                    
					<#if page?exists>
	                  <!-- tile footer -->
	                  <div class="tile-footer bg-transparent-white-2 rounded-bottom-corners">
	                    <div class="row">  
	                      
	                      <div class="col-sm-10 text-right">
	                        <ul class="pagination pagination-xs nomargin pagination-custom">
	                          ${page.jeeGemPageHtml}
	                        </ul>
	                      </div>
						  
	                    </div>
                  		</div>
                  </#if>
                    
                  </div>
                </section>


              </div>


              
            </div>


          </div>

        </div>
        <!-- Page content end -->
        
		<div class="md-modal md-effect-1 md-orange colorize-overlay " id="errorMessageModal">
	      <div class="md-content">
	        <h3>错误提示</h3>
	        <div>
	          <p>问题信息:</p>
	          <ul>
	            <li><strong>Read:</strong> 请正确选择。。。.</li>
	          </ul>
	          <button class="md-close btn btn-default" id="closeMessageModal">关闭!</button>
	        </div>
	      </div>
	    </div>
        
	<!--  Modals start--> 
	<div class="modal fade" id="updateArticleTypeModal" tabindex="-1" role="dialog" aria-labelledby="modalConfirmLabel" 
	aria-hidden="true" >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">关闭</button>
            <h3 class="modal-title" id="modalConfirmLabel"><strong>类目更新</strong></h3>
          </div>
          <div class="modal-body">
            <form role="form" id="updateFormId" method="post" action="${basePath}/articleType/updateArticleTypeById.shtml">
              <input type="hidden" id="updateArticleTypeId" name="id" />
              <div class="form-group">
                <label for="exampleInput">类型名称</label>
                <input type="text" class="form-control" id="updateTypeName" name="typeName" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1">
              </div>

              <div class="form-group">
                <label for="passwordInput">排列序号</label>
                <input type="text" class="form-control" id="updateSequence" name="sequence" parsley-trigger="change"  parsley-required="true" parsley-type="digits" parsley-validation-minlength="1">
              </div>

              <div class="form-group">
                <label for="placeholderInput">SEO关键字</label>
                <input type="text" class="form-control" id="updateKeywords" name="keywords" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1">
              </div>

              <div class="form-group">
                <label>SEO描述</label>
                <textarea class="form-control" rows="3" id="updateDescription" name="description" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1"></textarea>
              </div>

            </form>
          </div>
          <div class="modal-footer">
            <button class="btn btn-red" data-dismiss="modal" aria-hidden="true">关闭</button>
            <button class="btn btn-green" onclick="updateForm()">保存</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->   
    

	<div class="modal fade" id="addArticleTypeModal" tabindex="-1" role="dialog" aria-labelledby="modalConfirmLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
        <form role="form" parsley-validate="" method="post" action="${basePath}/articleType/addArticleType.shtml" id="articleTypeForm">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">关闭</button>
            <h3 class="modal-title" id="modalConfirmLabel"><strong>类型</strong> 新增</h3>
          </div>
          <div class="modal-body">
            
<div class="form-group">
                        <label for="input07" class="col-sm-2 control-label">文章类型</label>
                        <div class="col-sm-4" id="selectbox">
                          <select class="chosen-select chosen-transparent form-control" name="articleType.id" id="input07" parsley-trigger="change" parsley-required="true" parsley-error-container="#selectbox">
                            <option value="">选择文章类型
                            <#if articleTypes?exists && articleTypes?size gt 0 >
                            <#list articleTypes as item>
                            	<option value="${item.id}">${item.typeName}
                            </#list>
                            </#if>
                          </select>
                        </div>
              <div class="form-group">
                <label for="exampleInput">类型名称</label>
                <input type="text" class="form-control" id="typeName" name="typeName" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1">
              </div>

              <div class="form-group">
                <label for="passwordInput">排列序号</label>
                <input type="text" class="form-control" id="sequence" name="sequence" parsley-trigger="change"  parsley-required="true" parsley-type="digits" parsley-validation-minlength="1">
              </div>

              <div class="form-group">
                <label for="placeholderInput">SEO关键字</label>
                <input type="text" class="form-control" id="keywords" name="keywords" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1">
              </div>

              <div class="form-group">
                <label>SEO描述</label>
                <textarea class="form-control" rows="3" id="description" name="description" parsley-trigger="change" parsley-required="true" parsley-minlength="4" parsley-validation-minlength="1"></textarea>
              </div>
            
          </div>
          <div class="modal-footer">
            <button class="btn btn-red" data-dismiss="modal" aria-hidden="true">关闭</button>
            <button class="btn btn-green" onclick="saveArticleType()">保存</button>
          </div>
          </form>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->   
    <!-- / Modals end--> 


        <div id="mmenu" class="right-panel">
          <!-- Nav tabs -->
          <ul class="nav nav-tabs nav-justified">
            <li class="active"><a href="#mmenu-users" data-toggle="tab"><i class="fa fa-users"></i></a></li>
            <li class=""><a href="#mmenu-history" data-toggle="tab"><i class="fa fa-clock-o"></i></a></li>
            <li class=""><a href="#mmenu-friends" data-toggle="tab"><i class="fa fa-heart"></i></a></li>
            <li class=""><a href="#mmenu-settings" data-toggle="tab"><i class="fa fa-gear"></i></a></li>
          </ul>
              
          <!-- Tab panes -->
          <div class="tab-content">
            <div class="tab-pane active" id="mmenu-users">
              <h5><strong>Online</strong> Users</h5>

              <ul class="users-list">
                
                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/ici-avatar.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Ing. Imrich <strong>Kamarel</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Ulaanbaatar, Mongolia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="online">
                  <div class="media">
                    
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/arnold-avatar.jpg" alt="">
                    </a>
                    <span class="badge badge-red unread">3</span>

                    <div class="media-body">
                      <h6 class="media-heading">Arnold <strong>Karlsberg</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Bratislava, Slovakia</small>
                      <span class="badge badge-outline status"></span>
                    </div>

                  </div>
                </li>

                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/peter-avatar.jpg" alt="">

                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Peter <strong>Kay</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Kosice, Slovakia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/george-avatar.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">George <strong>McCain</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Prague, Czech Republic</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="busy">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/random-avatar1.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Lucius <strong>Cashmere</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Wien, Austria</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="busy">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/random-avatar2.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Jesse <strong>Phoenix</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Berlin, Germany</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

              </ul>

              <h5><strong>Offline</strong> Users</h5>

              <ul class="users-list">
                
                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/random-avatar4.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Dell <strong>MacApple</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Paris, France</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/random-avatar5.jpg" alt="">
                    </a>

                    <div class="media-body">
                      <h6 class="media-heading">Roger <strong>Flopple</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Rome, Italia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                    
                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/random-avatar6.jpg" alt="">

                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Nico <strong>Vulture</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Kyjev, Ukraine</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/random-avatar7.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Bobby <strong>Socks</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Moscow, Russia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/random-avatar8.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Anna <strong>Opichia</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Budapest, Hungary</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

              </ul>

            </div>

            <div class="tab-pane" id="mmenu-history">
              <h5><strong>Chat</strong> History</h5>

              <ul class="history-list">
                
                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/ici-avatar.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Ing. Imrich <strong>Kamarel</strong></h6>
                      <small>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="busy">
                  <div class="media">
                    
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/arnold-avatar.jpg" alt="">
                    </a>
                    <span class="badge badge-red unread">3</span>

                    <div class="media-body">
                      <h6 class="media-heading">Arnold <strong>Karlsberg</strong></h6>
                      <small>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</small>
                      <span class="badge badge-outline status"></span>
                    </div>

                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/peter-avatar.jpg" alt="">

                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Peter <strong>Kay</strong></h6>
                      <small>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit </small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

              </ul>
                
            </div>

            <div class="tab-pane" id="mmenu-friends">
              <h5><strong>Friends</strong> List</h5>
                <ul class="favourite-list">
                
                <li class="online">
                  <div class="media">
                    
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/arnold-avatar.jpg" alt="">
                    </a>
                    <span class="badge badge-red unread">3</span>

                    <div class="media-body">
                      <h6 class="media-heading">Arnold <strong>Karlsberg</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Bratislava, Slovakia</small>
                      <span class="badge badge-outline status"></span>
                    </div>

                  </div>
                </li>

                <li class="offline">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/random-avatar8.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Anna <strong>Opichia</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Budapest, Hungary</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="busy">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/random-avatar1.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Lucius <strong>Cashmere</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Wien, Austria</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

                <li class="online">
                  <div class="media">
                    <a class="pull-left profile-photo" href="#">
                      <img class="media-object" src="${basePath}/resources/assets/images/ici-avatar.jpg" alt="">
                    </a>
                    <div class="media-body">
                      <h6 class="media-heading">Ing. Imrich <strong>Kamarel</strong></h6>
                      <small><i class="fa fa-map-marker"></i> Ulaanbaatar, Mongolia</small>
                      <span class="badge badge-outline status"></span>
                    </div>
                  </div>
                </li>

              </ul>
            </div>

            <div class="tab-pane pane-settings" id="mmenu-settings">
              <h5><strong>Chat</strong> Settings</h5>

              <ul class="settings">
               
                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Show Offline Users</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-offline" checked="">
                        <label class="onoffswitch-label" for="show-offline">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Show Fullname</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-fullname">
                        <label class="onoffswitch-label" for="show-fullname">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">History Enable</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-history" checked="">
                        <label class="onoffswitch-label" for="show-history">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Show Locations</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-location" checked="">
                        <label class="onoffswitch-label" for="show-location">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Notifications</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-notifications">
                        <label class="onoffswitch-label" for="show-notifications">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="form-group">
                    <label class="col-xs-8 control-label">Show Undread Count</label>
                    <div class="col-xs-4 control-label">
                      <div class="onoffswitch greensea">
                        <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="show-unread" checked="">
                        <label class="onoffswitch-label" for="show-unread">
                          <span class="onoffswitch-inner"></span>
                          <span class="onoffswitch-switch"></span>
                        </label>
                      </div>
                    </div>
                  </div>
                </li>

              </ul>
                
            </div><!-- tab-pane -->
              
          </div><!-- tab-content -->
        </div>






      </div>
      <!-- Make page fluid-->




    </div>
    <!-- Wrap all page content end -->



    <section class="videocontent" id="video"></section>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${basePath}/resources/jquery/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${basePath}/resources/assets/js/vendor/bootstrap/bootstrap.min.js"></script>
    <script src="${basePath}/resources/assets/js/vendor/bootstrap/bootstrap-dropdown-multilevel.js"></script>
    
    <script type="text/javascript" src="${basePath}/resources/assets/js/vendor/mmenu/js/jquery.mmenu.min.js"></script>
    <script type="text/javascript" src="${basePath}/resources/assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="${basePath}/resources/assets/js/vendor/nicescroll/jquery.nicescroll.min.js"></script>
    <script type="text/javascript" src="${basePath}/resources/assets/js/vendor/animate-numbers/jquery.animateNumbers.js"></script>
    <script type="text/javascript" src="${basePath}/resources/assets/js/vendor/videobackground/jquery.videobackground.js"></script>
    <script type="text/javascript" src="${basePath}/resources/assets/js/vendor/blockui/jquery.blockUI.js"></script>

    <script src="${basePath}/resources/assets/js/vendor/chosen/chosen.jquery.min.js"></script>
	<script src="${basePath}/resources/assets/js/vendor/parsley/parsley.js"></script>
	
    <script src="${basePath}/resources/assets/js/vendor/modals/classie.js"></script>
    <script src="${basePath}/resources/assets/js/vendor/modals/modalEffects.js"></script>
    <script>
      // this is important for IEs
      var polyfilter_scriptpath = '${basePath}/resources/assets/js/vendor/modals/';
    </script>
    <script src="${basePath}/resources/assets/js/vendor/modals/cssParser.js"></script>
    <script src="${basePath}/resources/assets/js/vendor/modals/css-filters-polyfill.js"></script>
	
	<script  src="${basePath}/js/common/layer/layer.js"></script>
    <script src="${basePath}/resources/assets/js/minimal.js"></script>
    <script>
    
    function changeNickName(obj){
			$.post('${basePath}/user/updateByAjax.shtml',{"nickname":obj.value,"id":obj.id},function(result){
				
			},'json');
    }
    
    $(function(){

      //check all checkboxes
      $('table thead input[type="checkbox"]').change(function () {
        $(this).parents('table').find('tbody input[type="checkbox"]').prop('checked', $(this).prop('checked'));
      });

      // sortable table
      $('.table.table-sortable th.sortable').click(function() {
        var o = $(this).hasClass('sort-asc') ? 'sort-desc' : 'sort-asc';
        $(this).parents('table').find('th.sortable').removeClass('sort-asc').removeClass('sort-desc');
        $(this).addClass(o);
      });

      //chosen select input
      $(".chosen-select").chosen({disable_search_threshold: 10});

      //check toggling
      $('.check-toggler').on('click', function(){
        $(this).toggleClass('checked');
      })
      
      $("input[type='checkbox']").click(function(){
      	var count = $("input[check='box']:checked").length;
      	if(count==1){
      		$("#updateArticleType").attr("disabled",false);
      	}else{
      		$("#updateArticleType").attr("disabled",true);
      	}
      	
      });
      
      $("#deleteArticleType").click(function(){
      		
      		var count = $("input[check='box']:checked").length;
      		
      		if(count==0){
      			$("#errorMessageModal").addClass("md-show");
      		}else{
      			$("#errorMessageModal").removeClass("md-show");
      				
					var checked = $("input[check='box']:checked");
					var ids=[];
					$.each(checked,function(){
						ids.push(this.value);
					});
      				
					$.post('/articleType/deleteByIds.shtml',{ids:ids.join(',')},function(result){
						setTimeout(function(){
							window.location.href="/articleType/list.shtml";
						},1000);
					},'json');
      			
      		}
      		
      		
      		
      });
      
     $("#closeMessageModal").click(function(){
  		$("#errorMessageModal").removeClass("md-show");
     });
      
     $("#updateArticleType").click(function(){
  		var count = $("input[check='box']:checked").length;
  		
  		if(count != 1){
  			$("#errorMessageModal").addClass("md-show");
  		}else{
  			$("#errorMessageModal").removeClass("md-show");
  			
  			var checked = $("input[check='box']:checked");
			var ids=[];
			$.each(checked,function(){
				ids.push(this.value);
			});
  			
			$.post('${basePath}/articleType/getArcicleTypeById.shtml',{id:ids[0]},function(result){
				$("#updateTypeName").val(result.typeName);
				$("#updateSequence").val(result.sequence);
				$("#updateKeywords").val(result.keywords);
				$("#updateDescription").val(result.description);
				$("#updateArticleTypeId").val(result.id);
			},'json');
  			
  		}
  		
     });
      
      
    })
      
	  function saveArticleType(){
      	$("#articleTypeForm").submit();
      }
      
      function updateForm(){
      	$("#updateFormId").submit();
      }
      
    </script>
  </body>
</html>
      