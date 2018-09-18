<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/bootstrap.min.css">
  		<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/font-awesome.min.css">
  		<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/ionicons.min.css">
  		<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/AdminLTE.min.css">
  		<link rel="stylesheet" href="<%=request.getContextPath() %>/static/css/_all-skins.min.css">
  		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
		
		<script src="<%=request.getContextPath() %>/static/js/jquery-3.3.1.min.js"></script>
		<script src="<%=request.getContextPath() %>/static/js/jquery-ui.min.js"></script>
		<script src="<%=request.getContextPath() %>/static/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath() %>/static/js/adminlte.min.js"></script>
		<script type="text/javascript">
			$(function() {
				$.widget.bridge('uibutton', $.ui.button);
			});
		</script>
	</head>
	<body class="hold-transition skin-blue sidebar-mini">
		<div class="wrapper">
  			<header class="main-header">
    			<a href="#" class="logo">
      				<span class="logo-mini"><b>AUG</b></span>
      				<span class="logo-lg"><b>Augustars</b>XMALL</span>
    			</a>
    			<nav class="navbar navbar-static-top">
      				<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        				<span class="sr-only">Toggle navigation</span>
      				</a>
      				<div class="navbar-custom-menu">
        				<ul class="nav navbar-nav">
        					<li class="dropdown user user-menu">
            					<a href="#" class="dropdown-toggle" data-toggle="dropdown">
              						<i class="fa fa-user"></i>
              						<span class="hidden-xs">${sessionScope.user.username }</span>
            					</a>
          					</li>
          					<li class="dropdown messages-menu">
            					<a href="<%=request.getContextPath() %>/user/logout" class="dropdown-toggle" data-toggle="dropdown">
              						<i class="fa fa-power-off"></i>
              						<span class="hidden-xs">退出</span>
            					</a>
          					</li>
        				</ul>
      				</div>
    			</nav>
  			</header>
  			<aside class="main-sidebar">
    			<section class="sidebar">
      				<div class="user-panel">
        				<div class="pull-left image">
        					<i class="fa fa-calendar"></i>
        				</div>
        				<div class="pull-left info">
          					<p>
          						<i class="fa fa-calendar"></i>&nbsp;&nbsp;&nbsp;
          						2018-09-18
          					</p>
        				</div>
      				</div>
      				<ul class="sidebar-menu" data-widget="tree">
      					<c:forEach var="first" items="${menuList }">
      						<li class="treeview">
      							<a href="#">
	            					<i class="${first.icon }"></i> 
	            					<span>${first.text }</span>
		            				<span class="pull-right-container">
		              					<i class="fa fa-angle-left pull-right"></i>
		            				</span>
	          					</a>
	          					<ul class="treeview-menu">
	          						<c:forEach var="second" items="${first.menuList }">
	          							<li>
		            						<a href="${second.url }">
		            							<i class="${second.icon }"></i>
		            							${second.text }
		            						</a>
		            					</li>
	          						</c:forEach>
	          					</ul>
      						</li>
      					</c:forEach>
      				</ul>
    			</section>
  			</aside>
  			<div class="content-wrapper"></div>
  			<footer class="main-footer">
    			<div class="pull-right hidden-xs">
      				<b>Version</b> 1.0.0
    			</div>
    			<strong>Copyright &copy; 2018-2020 <a href="http://www.augustars.com">Augustars Studio</a>.</strong> All rights
    			reserved.
  			</footer>
  			<div class="control-sidebar-bg"></div>
		</div>
	</body>
</html>