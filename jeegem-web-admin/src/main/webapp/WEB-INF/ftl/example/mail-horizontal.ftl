<!DOCTYPE html>
<html>
  <head>
    <title>JeeGem - Horizontal Mail</title>
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

    <link rel="stylesheet" href="${basePath}/resources/assets/js/vendor/summernote/css/summernote.css">
    <link rel="stylesheet" href="${basePath}/resources/assets/js/vendor/summernote/css/summernote-bs3.css">
    <link rel="stylesheet" href="${basePath}/resources/assets/js/vendor/datatables/css/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${basePath}/resources/assets/js/vendor/datatables/css/ColVis.css">
    <link rel="stylesheet" href="${basePath}/resources/assets/js/vendor/datatables/css/TableTools.css">

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
        <@_navbar.navbar  5 57/>
        <!-- Fixed navbar end -->
        
        <!-- Page content -->
        <div id="content" class="col-md-12">
          
          <!-- page header -->
          <@_pageHeader.pageHeader  '案例页面' '邮箱页面'/>
          <!-- /page header -->
          
          




          <!-- content main container -->
          <div class="main horizontal-mail">
            
            


            <!-- row -->
            <div class="row">


              <div class="col-md-2">

                <ul class="navigation" id="mail-navigation">
                  <li class="mark"><i class="fa fa-envelope-o"></i></li>
                  <li class="compose"><a href="#" class="btn btn-red">Compose Mail</a></li>
                  <li class="folders heading">
                    <h5><i class="fa fa-folder"></i> Folders <a href="#" class="pull-right"><i class="fa fa-plus"></i></a></h5>
                    <ul>
                      <li class="active"><a href="#"><span class="badge badge-red">5</span>Inbox</a></li>
                      <li><a href="#">Sent</a></li>
                      <li><a href="#">Draft</a></li>
                      <li><a href="#">Trash</a></li>
                      <li class="divider"></li>
                      <li class="other"><a href="#">Private</a></li>
                      <li class="other"><a href="#">Work</a></li>
                    </ul>
                  </li>
                  <li class="labels heading">
                    <h5><i class="fa fa-tags"></i> Labels <a href="#" class="pull-right"><i class="fa fa-plus"></i></a></h5>
                    <ul>
                      <li class="tag"><a href="#">Family <span class="label label-cyan"></span></a></li>
                      <li class="tag"><a href="#">Work <span class="label label-red"></span></a></li>
                      <li class="tag"><a href="#">Shop <span class="label label-orange"></span></a></li>
                      <li class="tag"><a href="#">Themeforest <span class="label label-amethyst"></span></a></li>
                      <li class="tag"><a href="#">Google <span class="label label-green"></span></a></li>
                      <li class="tag"><a href="#">Facebook <span class="label label-hotpink"></span></a></li>
                    </ul>
                </li></ul>

              </div>

              <div class="col-md-10">

                <div class="table-responsive inbox" id="mail-inbox">
                  <table class="table table-datatable table-custom" id="inboxDataTable">
                    <thead>
                      <tr>
                        <th class="no-sort controls"></th>
                        <th class="sort-alpha">From</th>
                        <th class="sort-alpha">Subject</th>
                        <th class="sort-amount">Date</th>
                        <th class="text-center no-sort">Attachment</th>
                        <th class="no-sort text-center controls"></th>
                      </tr>
                    </thead>
                    <tbody>
                      
                      <tr class="odd unread">
                        <td>
                          <div class="checkbox check-transparent">
                            <div class="mail-label bg-red"></div>
                            <input type="checkbox" value="1" checked="" id="msg01">
                            <label for="msg01"></label>
                          </div>
                          <a href="#" class="mail-favourite active"><i class="fa fa-star-o"></i></a>
                        </td>
                        <td>Lucius Cashmere (5)</td>
                        <td>Mail Message Subject</td>
                        <td>12.02.2014, 16:23</td>
                        <td class="text-center"><i class="fa fa-paperclip"></i></td>
                        <td class="text-center">
                          <div class="mail-actions">
                            <a href="#" class="reply"><i class="fa fa-reply"></i></a> 
                            <a href="#" class="delete"><i class="fa fa-trash-o"></i></a>
                          </div>
                        </td>
                      </tr>

                      <tr class="even">
                        <td>
                          <div class="checkbox check-transparent">
                            <div class="mail-label bg-red"></div>
                            <input type="checkbox" id="msg02">
                            <label for="msg02"></label>
                          </div>
                          <a href="#" class="mail-favourite"><i class="fa fa-star-o"></i></a>
                        </td>
                        <td>Jesse Phoenix</td>
                        <td>Mail Message Subject</td>
                        <td>11.02.2014, 7:58</td>
                        <td class="text-center"></td>
                        <td class="text-center">
                          <div class="mail-actions">
                            <a href="#" class="reply"><i class="fa fa-reply"></i></a> 
                            <a href="#" class="delete"><i class="fa fa-trash-o"></i></a>
                          </div>
                        </td>
                      </tr>

                      <tr class="odd">
                        <td>
                          <div class="checkbox check-transparent">
                            <input type="checkbox" id="msg03">
                            <label for="msg03"></label>
                          </div>
                          <a href="#" class="mail-favourite active"><i class="fa fa-star-o"></i></a>
                        </td>
                        <td>Dell MacApple</td>
                        <td>Mail Message Subject</td>
                        <td>11.02.2014, 09:24</td>
                        <td class="text-center"><i class="fa fa-paperclip"></i></td>
                        <td class="text-center">
                          <div class="mail-actions">
                            <a href="#" class="reply"><i class="fa fa-reply"></i></a> 
                            <a href="#" class="delete"><i class="fa fa-trash-o"></i></a>
                          </div>
                        </td>
                      </tr>
                      
                      <tr class="even">
                        <td>
                          <div class="checkbox check-transparent">
                            <div class="mail-label bg-cyan"></div>
                            <input type="checkbox" id="msg04">
                            <label for="msg04"></label>
                          </div>
                          <a href="#" class="mail-favourite"><i class="fa fa-star-o"></i></a>
                        </td>
                        <td>Roger Flopple (3)</td>
                        <td>Mail Message Subject</td>
                        <td>11.02.2014, 11:12</td>
                        <td class="text-center"><i class="fa fa-paperclip"></i></td>
                        <td class="text-center">
                          <div class="mail-actions">
                            <a href="#" class="reply"><i class="fa fa-reply"></i></a> 
                            <a href="#" class="delete"><i class="fa fa-trash-o"></i></a>
                          </div>
                        </td>
                      </tr>

                      <tr class="odd">
                        <td>
                          <div class="checkbox check-transparent">
                            <div class="mail-label bg-red"></div>
                            <input type="checkbox" id="msg05">
                            <label for="msg05"></label>
                          </div>
                          <a href="#" class="mail-favourite active"><i class="fa fa-star-o"></i></a>
                        </td>
                        <td>Nico Vulture (8)</td>
                        <td>Mail Message Subject</td>
                        <td>11.02.2014, 13:28</td>
                        <td class="text-center"></td>
                        <td class="text-center">
                          <div class="mail-actions">
                            <a href="#" class="reply"><i class="fa fa-reply"></i></a> 
                            <a href="#" class="delete"><i class="fa fa-trash-o"></i></a>
                          </div>
                        </td>
                      </tr>
                      
                      <tr class="even">
                        <td>
                          <div class="checkbox check-transparent">
                            <input type="checkbox" id="msg06">
                            <label for="msg06"></label>
                          </div>
                          <a href="#" class="mail-favourite"><i class="fa fa-star-o"></i></a>
                        </td>
                        <td>Bobby Socks (2)</td>
                        <td>Mail Message Subject</td>
                        <td>11.02.2014, 13:33</td>
                        <td class="text-center"><i class="fa fa-paperclip"></i></td>
                        <td class="text-center">
                          <div class="mail-actions">
                            <a href="#" class="reply"><i class="fa fa-reply"></i></a> 
                            <a href="#" class="delete"><i class="fa fa-trash-o"></i></a>
                          </div>
                        </td>
                      </tr> 

                      <tr class="odd unread">
                        <td>
                          <div class="checkbox check-transparent">
                            <input type="checkbox" id="msg07">
                            <label for="msg07"></label>
                          </div>
                          <a href="#" class="mail-favourite"><i class="fa fa-star-o"></i></a>
                        </td>
                        <td>Silk Teddy</td>
                        <td>Mail Message Subject</td>
                        <td>11.02.2014, 16:18</td>
                        <td class="text-center"><i class="fa fa-paperclip"></i></td>
                        <td class="text-center">
                          <div class="mail-actions">
                            <a href="#" class="reply"><i class="fa fa-reply"></i></a> 
                            <a href="#" class="delete"><i class="fa fa-trash-o"></i></a>
                          </div>
                        </td>
                      </tr>
                      
                      <tr class="even unread">
                        <td>
                          <div class="checkbox check-transparent">
                            <input type="checkbox" id="msg08">
                            <label for="msg08"></label>
                          </div>
                          <a href="#" class="mail-favourite active"><i class="fa fa-star-o"></i></a>
                        </td>
                        <td>Rodney Hacksaw</td>
                        <td>Mail Message Subject</td>
                        <td>11.02.2014, 17:12</td>
                        <td class="text-center"></td>
                        <td class="text-center">
                          <div class="mail-actions">
                            <a href="#" class="reply"><i class="fa fa-reply"></i></a> 
                            <a href="#" class="delete"><i class="fa fa-trash-o"></i></a>
                          </div>
                        </td>
                      </tr>

                      <tr class="odd unread row_selected">
                        <td>
                          <div class="checkbox check-transparent">
                            <div class="mail-label bg-orange"></div>
                            <input type="checkbox" id="msg09">
                            <label for="msg09"></label>
                          </div>
                          <a href="#" class="mail-favourite"><i class="fa fa-star-o"></i></a>
                        </td>
                        <td>Paul Corduroy</td>
                        <td>Mail Message Subject</td>
                        <td>11.02.2014, 17:35</td>
                        <td class="text-center"></td>
                        <td class="text-center">
                          <div class="mail-actions">
                            <a href="#" class="reply"><i class="fa fa-reply"></i></a> 
                            <a href="#" class="delete"><i class="fa fa-trash-o"></i></a>
                          </div>
                        </td>
                      </tr>
                      
                      <tr class="even unread">
                        <td>
                          <div class="checkbox check-transparent">
                            <div class="mail-label bg-greensea"></div>
                            <input type="checkbox" id="msg10">
                            <label for="msg10"></label>
                          </div>
                          <a href="#" class="mail-favourite active"><i class="fa fa-star-o"></i></a>
                        </td>
                        <td>Tex Montreal (4)</td>
                        <td>Mail Message Subject</td>
                        <td>11.02.2014, 19:12</td>
                        <td class="text-center"><i class="fa fa-paperclip"></i></td>
                        <td class="text-center">
                          <div class="mail-actions">
                            <a href="#" class="reply"><i class="fa fa-reply"></i></a> 
                            <a href="#" class="delete"><i class="fa fa-trash-o"></i></a>
                          </div>
                        </td>
                      </tr>

                    </tbody>
                  </table>
                </div>              


                <div class="mail-content" id="mail-content">
                
                  <div class="quick-navigation">
                    <button type="button" class="btn btn-default pull-left"><i class="fa fa-angle-left"></i></button>
                    <h3>Inbox (3/154)</h3>
                    <button type="button" class="btn btn-default pull-right"><i class="fa fa-angle-right"></i></button>
                  </div>

                  <div class="message">

                    <div class="header">
                      <h1>Mail Message Subject</h1>

                      <ul class="message-info">
                        <li>From: <em>Dell MacApple</em></li>
                        <li>To: <em>me, admin@minoral.com</em></li>
                        <li>Date: <em>10.02.2014, 9:24am</em></li>
                        <li><i class="fa fa-paperclip"></i> <em>(1 file, 12.9 KB)</em></li>
                      </ul>

                      <div class="actions">
                        <div class="btn-group">
                          <button type="button" class="btn btn-default"><i class="fa fa-reply"></i></button>
                          <button type="button" class="btn btn-default"><i class="fa fa-mail-reply-all"></i></button>
                          <button type="button" class="btn btn-default"><i class="fa fa-share"></i></button>
                        </div>

                        <button type="button" class="btn btn-default pull-right"><i class="fa fa-trash-o"></i></button>

                      </div>
                    </div>

                    <div class="content">

                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                      </p>

                      <blockquote class="filled withoutHeader">
                        <p><i class="fa fa-quote-left pull-left"></i>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                      </blockquote>

                      <h4 class="filled"><i class="icon-tags"></i> Attachments</h4>
                      <div class="filled">
                        <ul class="attachments">
                          <li><span class="label label-warning">zip</span> <em>zipped_file.zip (2,9MB) <span class="att-actions"><i class="fa fa-eye att-show"></i><i class="fa fa-share att-forward"></i><i class="fa fa-download att-download"></i></span></em></li>
                          <li><span class="label label-success">doc</span> <em>word_document.docx (1,2MB) <span class="att-actions"><i class="fa fa-eye att-show"></i><i class="fa fa-share att-forward"></i><i class="fa fa-download att-download"></i></span></em></li>
                          <li><span class="label label-primary">xls</span> <em>excel_document.xlsx (459KB) <span class="att-actions"><i class="fa fa-eye att-show"></i><i class="fa fa-share att-forward"></i><i class="fa fa-download att-download"></i></span></em></li>
                        </ul>
                      </div>

                      <h4 class="filled"><i class="icon-mail-reply"></i> Reply</h4>
                      <div>
                        <form>
                          <div id="message-wysiwyg"></div>
                          <button type="submit" class="btn btn-greensea">Send</button>
                        </form>
                      </div>
                      

                    </div>

                  </div>
                                  


                </div>

              </div>


              
            </div>
            <!-- /row -->



          </div>
          <!-- /content container -->






        </div>
        <!-- Page content end -->




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

    <script src="${basePath}/resources/assets/js/vendor/summernote/summernote.min.js"></script>
    <script src="${basePath}/resources/assets/js/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="${basePath}/resources/assets/js/vendor/datatables/ColReorderWithResize.js"></script>
    <script src="${basePath}/resources/assets/js/vendor/datatables/colvis/dataTables.colVis.min.js"></script>
    <script src="${basePath}/resources/assets/js/vendor/datatables/dataTables.bootstrap.js"></script>

    <script src="${basePath}/resources/assets/js/minimal.min.js"></script>

    <script>
    $(function(){


      /****************************************************/
      /**************** ADVANCED DATATABLE ****************/
      /****************************************************/

      var oTable01 = $('#inboxDataTable').dataTable({
        "sDom":
          "R<'row table-heading'<'col-md-6 heading'><'col-md-6'Cf>r>"+
          "t",
        "iDisplayLength": 99999999,
        "oColVis": {
          "buttonText": '<i class="fa fa-cog"></i>',
          "sAlign": "right"
        },
        "oLanguage": {
          "sSearch": ""
        },
        "aoColumnDefs": [
          { 'bSortable': false, 'aTargets': [ "no-sort" ] }
        ],
        "aaSorting": [[ 3, "desc" ]],
        "sScrollY": "200px",
        "bPaginate": false
      });

      $('#inboxDataTable_wrapper .dataTables_filter input').attr("placeholder", "Search in inbox...");

      $('#inboxDataTable_wrapper .heading').html('<h1>Inbox</h1>');

      $('.ColVis_MasterButton').on('click', function(){
        var newtop = $('.ColVis_collection').position().top - 45; 

        $('.ColVis_collection').addClass('dropdown-menu');
        $('.ColVis_collection>li>label').addClass('btn btn-default');
        $('.ColVis_collection').css('top', newtop + 'px');
      });

      /* Add a click handler to the rows - this could be used as a callback */
      $("#inboxDataTable tbody tr").click( function( e ) {
        if ( $(this).hasClass('row_selected') ) {
          $(this).removeClass('row_selected');
        }
        else {
          oTable01.$('tr.row_selected').removeClass('row_selected');
          $(this).addClass('row_selected');
        }
      });

      $('#mail-inbox .mail-favourite').click(function(){
        $(this).toggleClass('active');
      });

      //load wysiwyg editor
      $('#message-wysiwyg').summernote({
        height: 158,   //set editable area's height
        toolbar: [
          //['style', ['style']], // no style button
          ['style', ['bold', 'italic', 'underline', 'clear']],
          ['fontsize', ['fontsize']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['height', ['height']],
          //['insert', ['picture', 'link']], // no insert buttons
          //['table', ['table']], // no table button
          //['help', ['help']] //no help button
        ]
      });

      $("#mail-inbox .dataTables_scrollBody").niceScroll({
        cursorcolor: '#000000',
        zindex: 999999,
        bouncescroll: true,
        cursoropacitymax: 0.4,
        cursorborder: '',
        cursorborderradius: 0,
        cursorwidth: '5px'
      });

      oTable01.fnDraw();

      
    })
      
    </script>
  </body>
</html>
      