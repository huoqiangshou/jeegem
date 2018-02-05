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
                      <li>
                        <a href="validation-elements.html">
                          <i class="fa fa-caret-right"></i> Validation
                        </a>
                      </li>
                      <li>
                        <a href="form-wizard.html">
                          <i class="fa fa-caret-right"></i> Form Wizard
                        </a>
                      </li>
                    </ul>
                  </li>
				  </@shiro.hasAnyRoles>
				    
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-pencil"></i> Interface <b class="fa fa-plus dropdown-plus"></b>
                    </a>
                    <ul class="dropdown-menu">
                      <li>
                        <a href="ui-elements.html">
                          <i class="fa fa-caret-right"></i> UI Elements
                        </a>
                      </li>
                      <li>
                        <a href="typography.html">
                          <i class="fa fa-caret-right"></i> Typography
                        </a>
                      </li>
                      <li>
                        <a href="tiles.html">
                          <i class="fa fa-caret-right"></i> Tiles
                        </a>
                      </li>
                      <li>
                        <a href="portlets.html">
                         <i class="fa fa-caret-right"></i> Portlets
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                      <li>
                        <a href="${basePath}/nestable.html">
                          <i class="fa fa-caret-right"></i> Nestable Lists
                          <span class="label label-greensea">new</span>
                        </a>
                      </li>
                    </ul>
                  </li>

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
</#macro>