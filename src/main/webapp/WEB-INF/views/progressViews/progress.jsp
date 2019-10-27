<%--
  Created by IntelliJ IDEA.
  User: rene
  Date: 23/10/19
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Blank</title>

    <!-- Custom fonts for this template-->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
    <link href="/slimYB/static/sb-admin-2.min.css" rel="stylesheet">
    <link href="/slimYB/static/update-progress.css" rel="stylesheet">


</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">
    <!-- Sidebar -->
    <%--    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">--%>

    <%--        <!-- Sidebar - Brand -->--%>
    <%--        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">--%>
    <%--            <div class="sidebar-brand-icon rotate-n-15">--%>
    <%--                <i class="fas fa-laugh-wink"></i>--%>
    <%--            </div>--%>
    <%--            <div class="sidebar-brand-text mx-3">SB Admin <sup>2</sup></div>--%>
    <%--        </a>--%>

    <%--        <!-- Divider -->--%>
    <%--        <hr class="sidebar-divider my-0">--%>

    <%--        <!-- Nav Item - Dashboard -->--%>
    <%--        <li class="nav-item">--%>
    <%--            <a class="nav-link" href="index.html">--%>
    <%--                <i class="fas fa-fw fa-tachometer-alt"></i>--%>
    <%--                <span>Dashboard</span></a>--%>
    <%--        </li>--%>

    <%--        <!-- Divider -->--%>
    <%--        <hr class="sidebar-divider">--%>

    <%--        <!-- Heading -->--%>
    <%--        <div class="sidebar-heading">--%>
    <%--            Interface--%>
    <%--        </div>--%>

    <%--        <!-- Nav Item - Pages Collapse Menu -->--%>
    <%--        <li class="nav-item">--%>
    <%--            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"--%>
    <%--               aria-controls="collapseTwo">--%>
    <%--                <i class="fas fa-fw fa-cog"></i>--%>
    <%--                <span>Components</span>--%>
    <%--            </a>--%>
    <%--            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">--%>
    <%--                <div class="bg-white py-2 collapse-inner rounded">--%>
    <%--                    <h6 class="collapse-header">Custom Components:</h6>--%>
    <%--                    <a class="collapse-item" href="buttons.html">Buttons</a>--%>
    <%--                    <a class="collapse-item" href="cards.html">Cards</a>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </li>--%>

    <%--        <!-- Nav Item - Utilities Collapse Menu -->--%>
    <%--        <li class="nav-item">--%>
    <%--            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"--%>
    <%--               aria-expanded="true" aria-controls="collapseUtilities">--%>
    <%--                <i class="fas fa-fw fa-wrench"></i>--%>
    <%--                <span>Utilities</span>--%>
    <%--            </a>--%>
    <%--            <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">--%>
    <%--                <div class="bg-white py-2 collapse-inner rounded">--%>
    <%--                    <h6 class="collapse-header">Custom Utilities:</h6>--%>
    <%--                    <a class="collapse-item" href="utilities-color.html">Colors</a>--%>
    <%--                    <a class="collapse-item" href="utilities-border.html">Borders</a>--%>
    <%--                    <a class="collapse-item" href="utilities-animation.html">Animations</a>--%>
    <%--                    <a class="collapse-item" href="utilities-other.html">Other</a>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </li>--%>

    <%--        <!-- Divider -->--%>
    <%--        <hr class="sidebar-divider">--%>

    <%--        <!-- Heading -->--%>
    <%--        <div class="sidebar-heading">--%>
    <%--            Addons--%>
    <%--        </div>--%>

    <%--        <!-- Nav Item - Pages Collapse Menu -->--%>
    <%--        <li class="nav-item active">--%>
    <%--            <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true"--%>
    <%--               aria-controls="collapsePages">--%>
    <%--                <i class="fas fa-fw fa-folder"></i>--%>
    <%--                <span>Pages</span>--%>
    <%--            </a>--%>
    <%--            <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">--%>
    <%--                <div class="bg-white py-2 collapse-inner rounded">--%>
    <%--                    <h6 class="collapse-header">Login Screens:</h6>--%>
    <%--                    <a class="collapse-item" href="login.html">Login</a>--%>
    <%--                    <a class="collapse-item" href="register.html">Register</a>--%>
    <%--                    <a class="collapse-item" href="forgot-password.html">Forgot Password</a>--%>
    <%--                    <div class="collapse-divider"></div>--%>
    <%--                    <h6 class="collapse-header">Other Pages:</h6>--%>
    <%--                    <a class="collapse-item" href="404.html">404 Page</a>--%>
    <%--                    <a class="collapse-item active" href="blank.html">Blank Page</a>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </li>--%>

    <%--        <!-- Nav Item - Charts -->--%>
    <%--        <li class="nav-item">--%>
    <%--            <a class="nav-link" href="charts.html">--%>
    <%--                <i class="fas fa-fw fa-chart-area"></i>--%>
    <%--                <span>Charts</span></a>--%>
    <%--        </li>--%>

    <%--        <!-- Nav Item - Tables -->--%>
    <%--        <li class="nav-item">--%>
    <%--            <a class="nav-link" href="tables.html">--%>
    <%--                <i class="fas fa-fw fa-table"></i>--%>
    <%--                <span>Tables</span></a>--%>
    <%--        </li>--%>

    <%--        <!-- Divider -->--%>
    <%--        <hr class="sidebar-divider d-none d-md-block">--%>

    <%--        <!-- Sidebar Toggler (Sidebar) -->--%>
    <%--        <div class="text-center d-none d-md-inline">--%>
    <%--            <button class="rounded-circle border-0" id="sidebarToggle"></button>--%>
    <%--        </div>--%>

    <%--    </ul>--%>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>

                <!-- Topbar Search -->
                <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                               aria-label="Search" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="button">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </form>

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="Search for..."
                                           aria-label="Search" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <!-- Nav Item - Alerts -->
                    <li class="nav-item dropdown no-arrow mx-1">
                        <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                           data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-bell fa-fw"></i>
                            <!-- Counter - Alerts -->
                            <span class="badge badge-danger badge-counter">3+</span>
                        </a>
                        <!-- Dropdown - Alerts -->
                        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="alertsDropdown">
                            <h6 class="dropdown-header">
                                Alerts Center
                            </h6>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="mr-3">
                                    <div class="icon-circle bg-primary">
                                        <i class="fas fa-file-alt text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <div class="small text-gray-500">December 12, 2019</div>
                                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="mr-3">
                                    <div class="icon-circle bg-success">
                                        <i class="fas fa-donate text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <div class="small text-gray-500">December 7, 2019</div>
                                    $290.29 has been deposited into your account!
                                </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="mr-3">
                                    <div class="icon-circle bg-warning">
                                        <i class="fas fa-exclamation-triangle text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <div class="small text-gray-500">December 2, 2019</div>
                                    Spending Alert: We've noticed unusually high spending for your account.
                                </div>
                            </a>
                            <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                        </div>
                    </li>

                    <!-- Nav Item - Messages -->
                    <li class="nav-item dropdown no-arrow mx-1">
                        <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                           data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-envelope fa-fw"></i>
                            <!-- Counter - Messages -->
                            <span class="badge badge-danger badge-counter">7</span>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="messagesDropdown">
                            <h6 class="dropdown-header">
                                Message Center
                            </h6>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="dropdown-list-image mr-3">
                                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60"
                                         alt="">
                                    <div class="status-indicator bg-success"></div>
                                </div>
                                <div class="font-weight-bold">
                                    <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                        problem I've been
                                        having.
                                    </div>
                                    <div class="small text-gray-500">Emily Fowler · 58m</div>
                                </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="dropdown-list-image mr-3">
                                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60"
                                         alt="">
                                    <div class="status-indicator"></div>
                                </div>
                                <div>
                                    <div class="text-truncate">I have the photos that you ordered last month, how would
                                        you like them
                                        sent to you?
                                    </div>
                                    <div class="small text-gray-500">Jae Chun · 1d</div>
                                </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="dropdown-list-image mr-3">
                                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60"
                                         alt="">
                                    <div class="status-indicator bg-warning"></div>
                                </div>
                                <div>
                                    <div class="text-truncate">Last month's report looks great, I am very happy with the
                                        progress so
                                        far, keep up the good work!
                                    </div>
                                    <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                </div>
                            </a>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="dropdown-list-image mr-3">
                                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                         alt="">
                                    <div class="status-indicator bg-success"></div>
                                </div>
                                <div>
                                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told
                                        me that people
                                        say this to all dogs, even if they aren't good...
                                    </div>
                                    <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                </div>
                            </a>
                            <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                        </div>
                    </li>

                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                            <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profile
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                Settings
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                Activity Log
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-4 text-gray-800">Progress Dashboard</h1>
                    <a data-toggle="modal" data-target="#edit-modal"
                       class="d-none d-sm-inline-block btn btn-sm btn-success shadow-sm" id="upload-button"><i
                            class="fas fa-pencil-alt text-white"></i> Update Progress</a>
                    <a data-toggle="modal" data-target="#set-modal"
                       class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm" id="upload-button"><i
                            class="fas fa-pencil-alt text-white"></i> Set Your Goal!</a>
                </div>

                <div class="modal fade bd-example-modal-lg" id="set-modal" tabindex="-1" role="dialog"
                     aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl" id="set-modal-d">
                        <div class="modal-content">
                            <!-- <div class="container"> -->
                            <!-- <div class="card o-hidden border-0 shadow-lg my-5"> -->
                            <div class="card-body p-0">
                                <!-- Nested Row within Card Body -->
                                <div class="row">
                                    <div class="col-lg-7">
                                        <div class="p-5">
                                            <div class="text-center">
                                                <h1 class="h4 text-gray-900 mb-4">Set Your Goal Now!</h1>
                                                <h1 class="h6 text-gray-900 mb-4" id="label_input">Body Statistics</h1>
                                            </div>
                                            <form class="user" action="/slimYB/goal/setGoal" method="post">
                                                <div class="form-group row">
                                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                                        <input type="number"
                                                               class="form-control form-control-user"
                                                               name="goal_days"
                                                               placeholder="Duration (days)">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               name="goal_weight"
                                                               placeholder="Goal Weight">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-sm-12 mb-3 mb-sm-0">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               placeholder="Goal Thigh Girth" name="goal_thigh_girth">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-sm-12">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               placeholder="Goal Waist Girth" name="goal_waist_girth">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-sm-12">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               placeholder="Goal Hip Girth" name="goal_hip_girth">
                                                    </div>
                                                </div>
                                                <Button class="btn btn-primary btn-user btn-block"
                                                        id="log-on-button" type="submit">
                                                    Set Goal!
                                                </Button>
                                            </form>

                                        </div>
                                    </div>
                                    <div class="col-lg-5 d-none d-lg-block input-goal-img"></div>

                                </div>
                            </div>
                            <!-- </div> -->
                            <!-- </div> -->

                        </div>
                    </div>
                </div>


                <div class="modal fade bd-example-modal-lg" id="edit-modal" tabindex="-1" role="dialog"
                     aria-labelledby="myLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl" id="edit-modal-d">
                        <div class="modal-content">
                            <!-- <div class="container"> -->
                            <!-- <div class="card o-hidden border-0 shadow-lg my-5"> -->
                            <div class="card-body p-0">
                                <!-- Nested Row within Card Body -->
                                <div class="row">
                                    <div class="col-lg-5 d-none d-lg-block input-progress-img"></div>
                                    <div class="col-lg-7">
                                        <div class="p-5">
                                            <div class="text-center">
                                                <h1 class="h4 text-gray-900 mb-4">Record Now for Today!</h1>
                                                <h1 class="h6 text-gray-900 mb-4" id="label_input">Body Statistics</h1>
                                            </div>
                                            <form class="user" action="/slimYB/goal/addRecord" method="post">
                                                <div class="form-group row">
                                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               name="current_weight"
                                                               placeholder="Weight">
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-sm-4 mb-3 mb-sm-0">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               placeholder="Thigh Girth" name="current_thigh_girth">
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               placeholder="Waist Girth" name="current_waist_girth">
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               placeholder="Hip Girth" name="current_hip_girth">
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="text-center">
                                                    <h1 class="h6 text-gray-900 mb-4" id="label_input">Today's
                                                        Activity</h1>
                                                </div>

                                                <div class="form-group row">
                                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               placeholder="Walking Steps" name="current_walking_steps">
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               placeholder="Running Distance"
                                                               name="current_running_distance">
                                                    </div>
                                                </div>
                                                <hr>
                                                <div class="text-center">
                                                    <h1 class="h6 text-gray-900 mb-4" id="label_input">Today's
                                                        Intake</h1>
                                                </div>
                                                <div class="form-group row">
                                                    <div class="col-sm-4 mb-3 mb-sm-0">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               placeholder="Protein" name="current_intake_protein">
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               placeholder="Carbohydrate"
                                                               name="current_intake_carbohydrate">
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <input type="number" step="0.1"
                                                               class="form-control form-control-user"
                                                               placeholder="Fat" name="current_intake_fat">
                                                    </div>
                                                </div>
                                                <Button class="btn btn-primary btn-user btn-block"
                                                        id="log-on-button" type="submit">
                                                    Log on Record!
                                                </Button>
                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- </div> -->
                            <!-- </div> -->

                        </div>
                    </div>
                </div>


                <div class="row">
                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Goal
                                            Weight
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800" id="card-goal">${goalWeight}
                                            kg
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Today is
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800" id="card-day">
                                            Day ${numberOfRecords}</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Current
                                            Progress
                                        </div>
                                        <div class="row no-gutters align-items-center">
                                            <div class="col-auto">
                                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"
                                                     id="card-progress">50%
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="progress progress-sm mr-2">
                                                    <div class="progress-bar bg-info" role="progressbar"
                                                         id="card-progress-bar"
                                                         style="width: 50%" aria-valuenow="50"
                                                         aria-valuemin="0" aria-valuemax="100"></div>
                                                </div>
                                            </div>
                                            <script>
                                                let w = ${currentWeight} / ${goalWeight};
                                                let p = w * 100;
                                                document.getElementById("card-progress").innerHTML = p + " %";
                                                document.getElementById("card-progress-bar").style = "aria-valuenow= " + "'" + p + "'";
                                            </script>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Pending Requests Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-warning shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Steps
                                            Today
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"
                                             id="card-steps">${currentSteps} steps
                                        </div>

                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-comments fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="row">

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Current
                                            Weight
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"
                                             id="card-weight">${currentWeight} kg
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Current /
                                            Goal Thigh Girth
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"
                                             id="card-thigh">${currentThigh} out of ${goalThigh} cm
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Current /
                                            Goal Waist Girth
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"
                                             id="card-waist">${currentWaist} out of ${goalWaist} cm
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Pending Requests Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Current /
                                            Goal Hip Girth
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800" id="card-hip">${currentHip}
                                            out of ${goalHip}
                                            cm
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-comments fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">

                    <!-- Area Chart -->
                    <div class="col-xl-8 col-lg-7">
                        <div class="card shadow mb-4">
                            <!-- Card Header - Dropdown -->
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">Weights Overview</h6>
                                <div class="dropdown no-arrow">
                                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                       data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                         aria-labelledby="dropdownMenuLink">
                                        <div class="dropdown-header">Dropdown Header:</div>
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Card Body -->
                            <div class="card-body">
                                <div class="chart-area">
                                    <canvas id="myAreaChart"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Pie Chart -->
                    <div class="col-xl-4 col-lg-5">
                        <div class="card shadow mb-4">
                            <!-- Card Header - Dropdown -->
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">Intake Proportion</h6>
                                <div class="dropdown no-arrow">
                                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                       data-toggle="dropdown"
                                       aria-haspopup="true" aria-expanded="false">
                                        <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                                         aria-labelledby="dropdownMenuLink">
                                        <div class="dropdown-header">Dropdown Header:</div>
                                        <a class="dropdown-item" href="#">Action</a>
                                        <a class="dropdown-item" href="#">Another action</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Something else here</a>
                                    </div>
                                </div>
                            </div>
                            <!-- Card Body -->
                            <div class="card-body">
                                <div class="chart-pie pt-4 pb-2">
                                    <canvas id="myPieChart"></canvas>
                                </div>
                                <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> Protein
                    </span>
                                    <span class="mr-2">
                      <i class="fas fa-circle text-success"></i> Carbohydrate
                    </span>
                                    <span class="mr-2">
                      <i class="fas fa-circle text-info"></i> Fat
                    </span>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; SlimYB 2019</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

</div>
<%--    <!-- Core plugin JavaScript-->--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Page level custom scripts -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.js"></script>
<%--    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/chart-area-demo.js"></script>--%>
<%--    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/chart-pie-demo.js"></script>--%>
<!-- Custom scripts for all pages-->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/sb-admin-2.min.js"></script>
<script type="text/javascript" src="https://kit.fontawesome.com/45c008b6a4.js" crossorigin="anonymous"></script>
<script type="text/javascript"
        src=" https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</body>

</html>

<script>
    $(document).ready(function () {
        $('#dataTable').DataTable();
    });

</script>
<script>
    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    function number_format(number, decimals, dec_point, thousands_sep) {
        // *     example: number_format(1234.56, 2, ',', ' ');
        // *     return: '1 234,56'
        number = (number + '').replace(',', '').replace(' ', '');
        var n = !isFinite(+number) ? 0 : +number,
            prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
            sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
            dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
            s = '',
            toFixedFix = function (n, prec) {
                var k = Math.pow(10, prec);
                return '' + Math.round(n * k) / k;
            };
        // Fix for IE parseFloat(0.55).toFixed(0) = 0;
        s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
        if (s[0].length > 3) {
            s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
        }
        if ((s[1] || '').length < prec) {
            s[1] = s[1] || '';
            s[1] += new Array(prec - s[1].length + 1).join('0');
        }
        return s.join(dec);
    }

    let labels = ${progressDates};
    let data = ${progressWeights};
    // Area Chart Example
    var ctx = document.getElementById("myAreaChart");
    var myLineChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: labels,
            datasets: [{
                label: "Weights",
                lineTension: 0.3,
                backgroundColor: "rgba(78, 115, 223, 0.05)",
                borderColor: "rgba(78, 115, 223, 1)",
                pointRadius: 3,
                pointBackgroundColor: "rgba(78, 115, 223, 1)",
                pointBorderColor: "rgba(78, 115, 223, 1)",
                pointHoverRadius: 3,
                pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
                pointHoverBorderColor: "rgba(78, 115, 223, 1)",
                pointHitRadius: 10,
                pointBorderWidth: 2,
                data: ${progressWeights},
            }],
        },
        options: {
            maintainAspectRatio: false,
            layout: {
                padding: {
                    left: 10,
                    right: 25,
                    top: 25,
                    bottom: 0
                }
            },
            scales: {
                xAxes: [{
                    time: {
                        unit: 'date'
                    },
                    gridLines: {
                        display: false,
                        drawBorder: false
                    },
                    ticks: {
                        maxTicksLimit: 10
                    }
                }],
                yAxes: [{
                    ticks: {
                        maxTicksLimit: 5,
                        padding: 10,
                        // Include a dollar sign in the ticks
                        callback: function (value, index, values) {
                            return number_format(value) + " kg";
                        }
                    },
                    gridLines: {
                        color: "rgb(234, 236, 244)",
                        zeroLineColor: "rgb(234, 236, 244)",
                        drawBorder: false,
                        borderDash: [2],
                        zeroLineBorderDash: [2]
                    }
                }],
            },
            legend: {
                display: false
            },
            tooltips: {
                backgroundColor: "rgb(255,255,255)",
                bodyFontColor: "#858796",
                titleMarginBottom: 10,
                titleFontColor: '#6e707e',
                titleFontSize: 14,
                borderColor: '#dddfeb',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                intersect: false,
                mode: 'index',
                caretPadding: 10,
                callbacks: {
                    label: function (tooltipItem, chart) {
                        var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
                        return datasetLabel + ": " + number_format(tooltipItem.yLabel) + " kg";
                    }
                }
            }
        }
    });
</script>

<script>
    // Set new default font family and font color to mimic Bootstrap's default styling
    Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
    Chart.defaults.global.defaultFontColor = '#858796';

    // Pie Chart Example
    var ctx = document.getElementById("myPieChart");
    var myPieChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
            labels: ["Protein", "Carbohydrate", "Fat"],
            datasets: [{
                data: ${progressIntakes},
                backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
                hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
                hoverBorderColor: "rgba(234, 236, 244, 1)",
            }],
        },
        options: {
            maintainAspectRatio: false,
            tooltips: {
                backgroundColor: "rgb(255,255,255)",
                bodyFontColor: "#858796",
                borderColor: '#dddfeb',
                borderWidth: 1,
                xPadding: 15,
                yPadding: 15,
                displayColors: false,
                caretPadding: 10,
            },
            legend: {
                display: false
            },
            cutoutPercentage: 80,
        },
    });
</script>

<script>


</script>