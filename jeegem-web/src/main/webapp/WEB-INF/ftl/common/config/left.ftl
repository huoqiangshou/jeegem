<!-- 
	其他地方使用:<@_left.user  1 1/> 这样的
	第一个用于判断是哪个菜单
	第二个是用于判断是具体菜单下面的小菜单
 -->
<#macro user index1  index2>
<ul class="nav navbar-nav side-nav" id="sidebar">
              
              <li class="collapsed-content"> 
                <ul>
                  <li class="search"><!-- Collapsed search pasting here at 768px --></li>
                </ul>
              </li>

              <li class="navigation" id="navigation">
                <a href="#" class="sidebar-toggle" data-toggle="#navigation">Navigation <i class="fa fa-angle-up"></i></a>
                
                <ul class="menu">
                   <li class="dropdown  ${(index1==1)?string('open active',' ')}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-th-large"></i> 个人中心 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li class="${(index2==1)?string('active',' ')}">
                        <a href="${basePath}/user/index.shtml">
                          <i class="fa fa-caret-right"></i> 个人资料
                        </a>
                      </li>
                      <li class="${(index2==2)?string('active',' ')}">
                        <a href="${basePath}/user/updateSelf.shtml">
                          <i class="fa fa-caret-right"></i> 资料修改
                        </a>
                      </li>
                      <li class="${(index2==3)?string('active',' ')}">
                        <a href="${basePath}/user/updatePswd.shtml">
                          <i class="fa fa-caret-right"></i> 密码修改
                        </a>
                      </li>
                    </ul>
                  </li>
                  <@shiro.hasAnyRoles name='888888,100002'>
                  <li class="dropdown ${(index1==2)?string('open active',' ')}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-list"></i> 用户中心 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li class="${(index2==21)?string('active',' ')}">
                        <a href="${basePath}/member/list.shtml" >
                          <i class="fa fa-caret-right"></i> 用户列表
                        </a>
                      </li>
                      <li class="${(index2==22)?string('active',' ')}">
                        <a href="${basePath}/member/online.shtml" >
                          <i class="fa fa-caret-right"></i> 在线用户
                        </a>
                      </li>
                    </ul>
                  </li>
				  </@shiro.hasAnyRoles>
				 
				 <@shiro.hasAnyRoles name='888888,100003'>
                  <li class="dropdown ${(index1==3)?string('open active',' ')}">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-pencil"></i> 权限管理 <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <@shiro.hasPermission name="/role/index.shtml">
                      <li class="${(index2==31)?string('active',' ')}">
                        <a href="${basePath}/role/index.shtml">
                          <i class="fa fa-caret-right"></i> 角色列表
                        </a>
                      </li>
                      </@shiro.hasPermission>
                      
                      <@shiro.hasPermission name="/role/allocation.shtml">
                      <li class="${(index2==32)?string('active',' ')}">
                        <a href="${basePath}/role/allocation.shtml">
                          <i class="fa fa-caret-right"></i> 角色分配
                        </a>
                      </li>
                      </@shiro.hasPermission>
                      
                      <@shiro.hasPermission name="/permission/index.shtml">
                      <li class="${(index2==33)?string('active',' ')}">
                        <a href="${basePath}/permission/index.shtml">
                          <i class="fa fa-caret-right"></i> 权限列表
                        </a>
                      </li>
                      </@shiro.hasPermission>
                      
                      <@shiro.hasPermission name="/permission/allocation.shtml">
                      <li class="${(index2==34)?string('active',' ')}">
                        <a href="${basePath}/permission/allocation.shtml">
                          <i class="fa fa-caret-right"></i> 权限分配
                        </a>
                      </li>
                      </@shiro.hasPermission>
                      
                    </ul>
                  </li>
				</@shiro.hasAnyRoles>
					 
                  <li>
                    <a href="${basePath}/buttons.html">
                      <i class="fa fa-tint"></i> Buttons & Icons
                    </a>
                  </li>
                  <li>
                    <a href="${basePath}/grid.html">
                      <i class="fa fa-th"></i> Grid Layout
                    </a>
                  </li>

                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-desktop"></i> Example Pages <b class="fa fa-plus dropdown-plus"></b>
                      <span class="label label-greensea">mails</span>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="login.html">
                          <i class="fa fa-caret-right"></i> Login Page
                        </a>
                      </li>
                      <li>
                        <a href="calendar.html">
                          <i class="fa fa-caret-right"></i> Calendar
                        </a>
                      </li>
                      <li>
                        <a href="page404.html">
                          <i class="fa fa-caret-right"></i> Page 404
                        </a>
                      </li>
                      <li>
                        <a href="page500.html">
                          <i class="fa fa-caret-right"></i> Page 500
                        </a>
                      </li>
                      <li>
                        <a href="page-offline.html">
                          <i class="fa fa-caret-right"></i> Page Offline
                        </a>
                      </li>
                      <li>
                        <a href="invoice.html">
                          <i class="fa fa-caret-right"></i> Invoice
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                      <li>
                        <a href="blank-page.html">
                          <i class="fa fa-caret-right"></i> Blank Page
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                      <li>
                        <a href="locked-screen.html">
                          <i class="fa fa-caret-right"></i> Locked Screen
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                      <li>
                        <a href="gallery.html">
                          <i class="fa fa-caret-right"></i> Gallery
                        </a>
                      </li>
                      <li>
                        <a href="timeline.html">
                          <i class="fa fa-caret-right"></i> Timeline
                        </a>
                      </li>
                      <li>
                        <a href="chat.html">
                          <i class="fa fa-caret-right"></i> Chat
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                      <li>
                        <a href="search-results.html">
                          <i class="fa fa-caret-right"></i> Search Results
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                      <li>
                      <li>
                        <a href="profile-page.html">
                          <i class="fa fa-caret-right"></i> Profile Page
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                      <li>
                        <a href="weather-page.html">
                          <i class="fa fa-caret-right"></i> Weather Page
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                      <li>
                        <a href="frontpage/index.html">
                          <i class="fa fa-caret-right"></i> Front Page
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                      <li>
                        <a href="mail.html">
                          <i class="fa fa-caret-right"></i> Vertical Mail
                          <span class="badge badge-red">5</span>
                        </a>
                      </li>
                      <li>
                        <a href="mail-horizontal.html">
                          <i class="fa fa-caret-right"></i> Horizontal Mail
                          <span class="label label-greensea">mails</span>
                        </a>
                      </li>
                      <li>
                        <a href="vector-maps.html">
                          <i class="fa fa-caret-right"></i> Vector Maps
                        </a>
                      </li>
                      <li>
                        <a href="google-maps.html">
                          <i class="fa fa-caret-right"></i> Google Maps
                        </a>
                      </li>
                    </li></ul>
                    <li>
                    <a href="widgets.html">
                      <i class="fa fa-play-circle"></i> Widgets
                    </a>
                  </li>

                  <li>
                    <a href="charts.html">
                      <i class="fa fa-bar-chart-o"></i> Charts & Graphs
                    </a>
                  </li>

                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-folder"></i> Menu Levels <b class="fa fa-plus dropdown-plus"></b>
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


                </li></ul>

              

              
            </li></ul>
            
            
            
            
</#macro>