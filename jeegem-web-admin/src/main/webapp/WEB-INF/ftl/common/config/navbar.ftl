<#macro navbar parent child>
<script baseUrl="${basePath}" src="${basePath}/js/user.login.js"></script>
<div class="navbar navbar-default navbar-fixed-top navbar-transparent-black mm-fixed-top" role="navigation" id="navbar">
          
          <!-- Branding -->
			<div class="navbar-header col-md-2">
			            <a class="navbar-brand" href="index.html">
			              <strong>Jee</strong>Gem
			            </a>
			            <div class="sidebar-collapse">
			              <a href="#">
			                <i class="fa fa-bars"></i>
			              </a>
			            </div>
			</div> 
          <!-- Branding end -->

          <!-- .nav-collapse -->
          <div class="navbar-collapse">
                        
            <!-- Page refresh -->
            
            <!-- /Page refresh -->

            <!-- Search -->
            
            <!-- Search end -->

            <!-- Quick Actions -->
			<ul class="nav navbar-nav quick-actions">
              
              <li class="dropdown divided">
                
                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                  <i class="fa fa-tasks"></i>
                  <span class="label label-transparent-black">2</span>
                </a>
				
                <ul class="dropdown-menu wide arrow nopadding bordered">
                  <li><h1>You have <strong>2</strong> new tasks</h1></li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Layout</div>
                        <div class="percent">80%</div>
                      </div>
                      <div class="progress progress-striped progress-thin">
                        <div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                          <span class="sr-only">40% Complete (success)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Schemes</div>
                        <div class="percent">15%</div>
                      </div>
                      <div class="progress progress-striped active progress-thin">
                        <div class="progress-bar progress-bar-cyan" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 15%">
                          <span class="sr-only">45% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Forms</div>
                        <div class="percent">5%</div>
                      </div>
                      <div class="progress progress-striped progress-thin">
                        <div class="progress-bar progress-bar-orange" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 5%">
                          <span class="sr-only">5% Complete (warning)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">JavaScript</div>
                        <div class="percent">30%</div>
                      </div>
                      <div class="progress progress-striped progress-thin">
                        <div class="progress-bar progress-bar-red" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                          <span class="sr-only">30% Complete (danger)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Dropdowns</div>
                        <div class="percent">60%</div>
                      </div>
                      <div class="progress progress-striped progress-thin">
                        <div class="progress-bar progress-bar-amethyst" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                          <span class="sr-only">60% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li><a href="#">Check all tasks <i class="fa fa-angle-right"></i></a></li>
                </ul>

              </li>

              <li class="dropdown divided">
                
                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                  <i class="fa fa-envelope"></i>
                  <span class="label label-transparent-black">1</span>
                </a>

                <ul class="dropdown-menu wider arrow nopadding messages">
                  <li><h1>You have <strong>1</strong> new message</h1></li>
                  <li>
                    <a class="cyan" href="#">
                      <div class="profile-photo">
                        <img src="${basePath}/resources/assets/images/ici-avatar.jpg" alt="">
                      </div>
                      <div class="message-info">
                        <span class="sender">Ing. Imrich Kamarel</span>
                        <span class="time">12 mins</span>
                        <div class="message-content">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum</div>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a class="green" href="#">
                      <div class="profile-photo">
                        <img src="${basePath}/resources/assets/images/arnold-avatar.jpg" alt="">
                      </div>
                      <div class="message-info">
                        <span class="sender">Arnold Karlsberg</span>
                        <span class="time">1 hour</span>
                        <div class="message-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <div class="profile-photo">
                        <img src="${basePath}/resources/assets/images/profile-photo.jpg" alt="">
                      </div>
                      <div class="message-info">
                        <span class="sender">John Douey</span>
                        <span class="time">3 hours</span>
                        <div class="message-content">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</div>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a class="red" href="#">
                      <div class="profile-photo">
                        <img src="${basePath}/resources/assets/images/peter-avatar.jpg" alt="">
                      </div>
                      <div class="message-info">
                        <span class="sender">Peter Kay</span>
                        <span class="time">5 hours</span>
                        <div class="message-content">Ut enim ad minim veniam, quis nostrud exercitation</div>
                      </div>
                    </a>
                  </li>

                  <li>
                    <a class="orange" href="#">
                      <div class="profile-photo">
                        <img src="${basePath}/resources/assets/images/george-avatar.jpg" alt="">
                      </div>
                      <div class="message-info">
                        <span class="sender">George McCain</span>
                        <span class="time">6 hours</span>
                        <div class="message-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
                      </div>
                    </a>
                  </li>


                  <li class="topborder"><a href="#">Check all messages <i class="fa fa-angle-right"></i></a></li>
                </ul>

              </li>

              <li class="dropdown divided">
                
                <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                  <i class="fa fa-bell"></i>
                  <span class="label label-transparent-black">3</span>
                </a>

                <ul class="dropdown-menu wide arrow nopadding bordered">
                  <li><h1>You have <strong>3</strong> new notifications</h1></li>
                  
                  <li>
                    <a href="#">
                      <span class="label label-green"><i class="fa fa-user"></i></span>
                      New user registered.
                      <span class="small">18 mins</span>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <span class="label label-red"><i class="fa fa-power-off"></i></span>
                      Server down.
                      <span class="small">27 mins</span>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <span class="label label-orange"><i class="fa fa-plus"></i></span>
                      New order.
                      <span class="small">36 mins</span>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <span class="label label-cyan"><i class="fa fa-power-off"></i></span>
                      Server restared.
                      <span class="small">45 mins</span>
                    </a>
                  </li>

                  <li>
                    <a href="#">
                      <span class="label label-amethyst"><i class="fa fa-power-off"></i></span>
                      Server started.
                      <span class="small">50 mins</span>
                    </a>
                  </li>

                   <li><a href="#">Check all notifications <i class="fa fa-angle-right"></i></a></li>
                </ul>

              </li>

              <li class="dropdown divided user" id="current-user">
                <div class="profile-photo">
                  <img src="${basePath}/resources/assets/images/profile-photo.jpg" alt="">
                </div>
                <a class="dropdown-toggle options" data-toggle="dropdown" href="${basePath}/user/index.shtml">
                  ${token.nickname} <i class="fa fa-caret-down"></i>
                </a>
                
                <ul class="dropdown-menu arrow settings">

                  <li>
                    
                    <h3>Backgrounds:</h3>
                    <ul id="color-schemes">
                      <li><a href="#" class="bg-1"></a></li>
                      <li><a href="#" class="bg-2"></a></li>
                      <li><a href="#" class="bg-3"></a></li>
                      <li><a href="#" class="bg-4"></a></li>
                      <li><a href="#" class="bg-5"></a></li>
                      <li><a href="#" class="bg-6"></a></li>
                      <li class="title">Solid Backgrounds:</li>
                      <li><a href="#" class="solid-bg-1"></a></li>
                      <li><a href="#" class="solid-bg-2"></a></li>
                      <li><a href="#" class="solid-bg-3"></a></li>
                      <li><a href="#" class="solid-bg-4"></a></li>
                      <li><a href="#" class="solid-bg-5"></a></li>
                      <li><a href="#" class="solid-bg-6"></a></li>
                    </ul>


                  </li>

                  <li class="divider"></li>



                  <li>

                    <div class="form-group videobg-check">
                      <label class="col-xs-8 control-label">Video BG</label>
                      <div class="col-xs-4 control-label">
                        <div class="onoffswitch greensea small">
                          <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="videobg-check">
                          <label class="onoffswitch-label" for="videobg-check">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                          </label>
                        </div>
                      </div>
                    </div>

                    <ul id="videobackgrounds">
                      <li class="title">Choose type:</li>
                      <li><a href="#" class="video-bg-1"></a></li>
                      <li><a href="#" class="video-bg-2"></a></li>
                      <li><a href="#" class="video-bg-3"></a></li>
                      <li><a href="#" class="video-bg-4"></a></li>
                      <li><a href="#" class="video-bg-5"></a></li>
                      <li><a href="#" class="video-bg-6"></a></li>
                      <li><a href="#" class="video-bg-7"></a></li>
                      <li><a href="#" class="video-bg-8"></a></li>
                      <li><a href="#" class="video-bg-9"></a></li>
                      <li><a href="#" class="video-bg-10"></a></li>
                    </ul>

                  </li>


                  <li class="divider"></li>

                  <li>
                    <a href="${basePath}/user/index.shtml"><i class="fa fa-user"></i> 个人资料</a>
                  </li>

                  <li>
                    <a href="#"><i class="fa fa-calendar"></i> Calendar</a>
                  </li>

                  <li>
                    <a href="#"><i class="fa fa-envelope"></i> Inbox <span class="badge badge-red" id="user-inbox">3</span></a>
                  </li>

                  <li class="divider"></li>
				  <@shiro.user>
                  <li>
                    <a href="javascript:void(0);" onclick="jeegemLogout();"><i class="fa fa-power-off"></i> 退出</a>
                  </li>
                  </@shiro.user>
                </ul>
              </li>

              <li>
                <a href="#mmenu"><i class="fa fa-comments"></i></a>
              </li>
            </ul>
            <!-- /Quick Actions -->

            <!-- Sidebar -->
			<ul class="nav navbar-nav side-nav" id="sidebar">
              
              <li class="collapsed-content"> 
                <ul>
                  <li class="search"><!-- Collapsed search pasting here at 768px --></li>
                </ul>
              </li>

              <li class="navigation" id="navigation">
                <a href="#" class="sidebar-toggle" data-toggle="#navigation">Navigation <i class="fa fa-angle-up"></i></a>
                
                <ul class="menu">
                   <li class="dropdown  ${(parent==1)?string('open active',' ')}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-th-large"></i> 个人中心 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li class="${(child==1)?string('active',' ')}">
                        <a href="${basePath}/user/index.shtml">
                          <i class="fa fa-caret-right"></i> 个人资料
                        </a>
                      </li>
                      <li class="${(child==2)?string('active',' ')}">
                        <a href="${basePath}/user/updateProfile.shtml">
                          <i class="fa fa-caret-right"></i> 资料修改
                        </a>
                      </li>
                      <li class="${(child==3)?string('active',' ')}">
                        <a href="${basePath}/user/updatePassword.shtml">
                          <i class="fa fa-caret-right"></i> 密码修改
                        </a>
                      </li>
                      <li class="${(child==4)?string('active',' ')}">
                        <a href="${basePath}/role/mypermission.shtml">
                          <i class="fa fa-caret-right"></i> 我的权限
                        </a>
                      </li>
                    </ul>
                  </li>
                  <@shiro.hasAnyRoles name='888888,100002'>
                  <li class="dropdown ${(parent==2)?string('open active',' ')}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-list"></i> 用户中心 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li class="${(child==21)?string('active',' ')}">
                        <a href="${basePath}/member/list.shtml" >
                          <i class="fa fa-caret-right"></i> 用户列表
                        </a>
                      </li>
                      <li class="${(child==22)?string('active',' ')}">
                        <a href="${basePath}/member/online.shtml" >
                          <i class="fa fa-caret-right"></i> 在线用户
                        </a>
                      </li>
                    </ul>
                  </li>
				  </@shiro.hasAnyRoles>
				 
				 <@shiro.hasAnyRoles name='888888,100003'>
                  <li class="dropdown ${(parent==3)?string('open active',' ')}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-pencil"></i> 权限管理 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <@shiro.hasPermission name="/role/index.shtml">
                      <li class="${(child==31)?string('active',' ')}">
                        <a href="${basePath}/role/index.shtml">
                          <i class="fa fa-caret-right"></i> 角色列表
                        </a>
                      </li>
                      </@shiro.hasPermission>
                      
                      <@shiro.hasPermission name="/role/allocation.shtml">
                      <li class="${(child==32)?string('active',' ')}">
                        <a href="${basePath}/role/allocation.shtml">
                          <i class="fa fa-caret-right"></i> 角色分配
                        </a>
                      </li>
                      </@shiro.hasPermission>
                      
                      <@shiro.hasPermission name="/permission/index.shtml">
                      <li class="${(child==33)?string('active',' ')}">
                        <a href="${basePath}/permission/index.shtml">
                          <i class="fa fa-caret-right"></i> 权限列表
                        </a>
                      </li>
                      </@shiro.hasPermission>
                      
                      <@shiro.hasPermission name="/permission/allocation.shtml">
                      <li class="${(child==34)?string('active',' ')}">
                        <a href="${basePath}/permission/allocation.shtml">
                          <i class="fa fa-caret-right"></i> 权限分配
                        </a>
                      </li>
                      </@shiro.hasPermission>
                      
                    </ul>
                  </li>
				</@shiro.hasAnyRoles>
					 
				<li class="dropdown ${(parent==4)?string('open active',' ')}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-desktop"></i> CMS管理 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li class="${(child==41)?string('active',' ')}">
                        <a href="${basePath}/articleType/list.shtml">
                          <i class="fa fa-caret-right"></i> 类目管理
                        </a>
                      </li>
                      <li class="${(child==42)?string('active',' ')}">
                        <a href="${basePath}/article/addArticle.shtml">
                          <i class="fa fa-caret-right"></i> 发布文章
                        </a>
                      </li>
                      <li class="${(child==43)?string('active',' ')}">
                        <a href="${basePath}/article/list.shtml">
                          <i class="fa fa-caret-right"></i> 文章列表
                        </a>
                      </li>
                    </li>                
                    </ul>
                  </li>


                </li>
				<li class="dropdown ${(parent==5)?string('open active',' ')}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-desktop"></i> 案例页面 <b class="fa fa-plus dropdown-plus"></b>
                      <span class="label label-greensea">mails</span>
                    </a>
                    
                    <ul class="dropdown-menu">
                      <li class="${(child==50)?string('active',' ')}">
                        <a href="${basePath}/example/charts.shtml">
                          <i class="fa fa-caret-right"></i> 报表图表
                          <span class="label label-greensea">mails</span>
                        </a>
                      </li>
                      <li class="${(child==51)?string('active',' ')}">
                        <a href="${basePath}/example/calendar.shtml">
                          <i class="fa fa-caret-right"></i> 日历组件
                        </a>
                      </li>
                      <li class="${(child==52)?string('active',' ')}">
                        <a href="${basePath}/example/invoice.shtml">
                          <i class="fa fa-caret-right"></i> 发票管理
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                      <li class="${(child==53)?string('active',' ')}">
                        <a href="${basePath}/example/timeline.shtml">
                          <i class="fa fa-caret-right"></i> 时间线轴
                        </a>
                      </li>
                      <li class="${(child==54)?string('active',' ')}">
                        <a href="${basePath}/example/chat.shtml">
                          <i class="fa fa-caret-right"></i> 聊天工具
                        </a>
                      </li>
                      <li class="${(child==55)?string('active',' ')}">
                        <a href="${basePath}/example/search-results.shtml">
                          <i class="fa fa-caret-right"></i> 搜索结果
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                      <li>
                      <li class="${(child==56)?string('active',' ')}">
                        <a href="${basePath}/example/profile-page.shtml">
                          <i class="fa fa-caret-right"></i> 个人主页
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                      <li class="${(child==57)?string('active',' ')}">
                        <a href="${basePath}/example/mail-horizontal.shtml">
                          <i class="fa fa-caret-right"></i> 邮箱页面
                          <span class="label label-greensea">mails</span>
                        </a>
                      </li>
                      
                      
                      
                    </li>
                
					<li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-folder"></i> 一级菜单 <b class="fa fa-plus dropdown-plus"></b>
                      <span class="label label-cyan">new</span>
                    </a>
                    <ul class="dropdown-menu">
                      <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 1.1</a></li>

                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-folder"></i> Menu Level 1.2 <b class="fa fa-plus dropdown-plus"></b></a>
                        <ul class="dropdown-menu">
                          <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 2.1</a></li>
                          <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 2.2</a></li>
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-folder"></i> Menu Level 2.3 <b class="fa fa-plus dropdown-plus"></b></a>
                            <ul class="dropdown-menu">
                              <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 3.1</a></li>
                              <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 3.2</a></li>
                              <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-folder"></i> Menu Level 3.3 <b class="fa fa-plus dropdown-plus"></b></a>
                                <ul class="dropdown-menu">
                                  <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 4.1</a></li>
                                   <li class="dropdown">
                                      <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-folder"></i> Menu Level 4.2 <b class="fa fa-plus dropdown-plus"></b></a>
                                      <ul class="dropdown-menu">
                                        <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 5.1</a></li>
                                        <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 5.2</a></li>
                                      </ul>
                                    </li>
                                </ul>
                              </li>
                            </ul>
                          </li>
                        </ul>
                      </li>

                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-folder"></i> Menu Level 1.3 <b class="fa fa-plus dropdown-plus"></b></a>
                        <ul class="dropdown-menu">
                          <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 2.1</a></li>
                          <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 2.2</a></li>
                          <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-folder"></i> Menu Level 2.3 <b class="fa fa-plus dropdown-plus"></b></a>
                            <ul class="dropdown-menu">
                              <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 3.1</a></li>
                              <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 3.2</a></li>
                              <li><a href="#"><i class="fa fa-caret-right"></i> Menu Level 3.3</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>

                    </ul>
                  </li>
                
                </ul>

              

              
            </li></ul>
            <!-- Sidebar end -->

          </div>
          <!--/.nav-collapse -->

        </div>            
</#macro>