<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <base href="<%=basePath %>" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>管理员界面</title>
  </head>
  <style>
    body{
		 background:
         url(images/background.png),
         url(images/background.png),
		 url(images/admin.jpg);
         background-position:top 60px left 0%，top 40px left 0%,center;
         background-repeat:no-repeat,no-repeat,no-repeat;
         background-size:22% 110%,22% 110%,100% 100%;
         background-attachment: relative,relative,fixed;
       }
  	#back{
  		background-color:white;
	    color:black;
	    clear:both;
	    text-align:right;
	   	padding:5px;	
  	}
	#header {
	    background-color:black;
	    color:white;
	    text-align:center;
	    padding:5px;
	}
	#nav {
	    line-height:20px;
	    height:140%;
	    width:180px;
	    float:left;
	    padding:5px;	      
	}
	#section {
	    width:500px;
	    height:100%;
	    float:left;
	    padding:10px;
	    margin-left:30px	 	 
	}
	#footer {
	    background-color:white;
	    color:LightSlateGray;
	    clear:both;
	    text-align:center;
	   	padding:5px;
	   	position:bottom;	 	 
	}
  </style>
  <body>
  <div id="back">
	  <a href="login.jsp">退出登陆</a>
  </div>
    <div id="header">
    	<h1>欢迎来到管理员界面</h1>
		<hr width="100%" color="LightGrey" />
    </div>
    <%
   application.setAttribute("isAdmin", "1");
    %>
    <div id="nav">
    <br>
    <li>部门信息管理</li>
    <ol>
        <li><a href="cms/department/AddDepart.jsp">增加部门信息</a></li>
        <li><a href="cms/department/DeleteDepart.jsp">删除部门信息</a></li>
        <li><a href="cms/department/ModifyDepart.jsp">修改部门信息</a></li>
        <li><a href="DepartShow" name="isAdmin" value="1">查看部门数据</a></li>
    </ol>
    <br>
    <li>员工信息管理</li>
    <ol>
  		<li><a href="cms/employee/AddEmp.jsp">增加员工信息</a></li>
   		<li><a href="cms/employee/DeleteEmp.jsp">删除员工信息</a></li>
  		<li><a href="cms/employee/ModifyEmp.jsp">修改员工信息</a></li>
   		<li><a href="EmpShow" name="isAdmin" value="1">查看员工数据</a></li>
   	</ol>
   	<br>
    <li>部门员工职位管理</li>
    <ol>
   		<li><a href="cms/empdepart/AddED.jsp">增加职位关联</a></li>
   		<li><a href="cms/empdepart/DeleteED.jsp">删除职位关联</a></li>
   		<li><a href="cms/empdepart/ModifyED.jsp">修改职位关联</a></li>
   		<li><a href="EDShow" name="isAdmin" value="1">查看职位关联数据</a></li>
   		<li><a href="cms/emplimits/AddEL.jsp">增加员工权限</a></li>
   		<li><a href="cms/emplimits/DeleteEL.jsp">删除员工权限</a></li>
   		<li><a href="cms/emplimits/ModifyEL.jsp">修改员工权限</a></li>
   		<li><a href="ELShow" name="isAdmin" value="1">查看员工权限数据</a></li>
   	</ol>
   	<br>
    <li>客户信息管理</li>
    <ol>
   		<li><a href="cms/customer/AddCust.jsp">增加客户信息</a></li>
   		<li><a href="cms/customer/DeleteCust.jsp">删除客户信息</a></li>
   		<li><a href="cms/customer/ModifyCust.jsp">修改客户信息</a></li>
   		<li><a href="=CustShow" name="isAdmin" value="1">查看客户数据</a></li>
   	</ol>
   	<br>
    <li>项目信息管理</li>
   	<ol>
   		<li><a href="cms/project/AddProj.jsp">增加项目信息</a></li>
   		<li><a href="cms/project/DeleteProj.jsp">删除项目信息</a></li>
   		<li><a href="cms/project/ModifyProj.jsp">修改项目信息</a></li>
   		<li><a href="ProjShow" name="isAdmin" value="1">查看项目数据</a></li>
   	</ol>
    </div>
    <div id="section">
    	
    </div>
   <!-- 
   <div id="nav">
    <details>
   	<summary>部门信息管理</summary>
        <ol>
            <li><a href="cms/department/AddDepart.jsp">增加部门信息</a></li>
            <li><a href="cms/department/DeleteDepart.jsp">删除部门信息</a></li>
            <li><a href="cms/department/ModifyDepart.jsp">修改部门信息</a></li>
            <li><a href="DepartShow" name="isAdmin" value="1">查看部门数据信息</a></li>
        </ol>
   </details>
   <br>
   <details>
   	<summary>员工信息管理</summary>
   		<ol>
   			<li><a href="cms/employee/AddEmp.jsp">增加员工信息</a></li>
   			<li><a href="cms/employee/DeleteEmp.jsp">删除员工信息</a></li>
   			<li><a href="cms/employee/ModifyEmp.jsp">修改员工信息</a></li>
   			<li><a href="cms/employee/ScanEmp.jsp">查看员工数据信息</a></li>
   		</ol>
   </details>
   <br>
   <details>
   	<summary>部门员工职位管理</summary>
   		<ol>
   			<li><a href="cms/empdepart/AddED.jsp">增加职位关联信息</a></li>
   			<li><a href="cms/empdepart/DeleteED.jsp">删除职位关联信息</a></li>
   			<li><a href="cms/empdepart/ModifyED.jsp">修改职位关联信息</a></li>
   			<li><a href="cms/empdepart/ScanED.jsp">查看职位关联数据信息</a></li>
   			<li><a href="cms/emplimits/AddEL.jsp">增加员工权限信息</a></li>
   			<li><a href="cms/emplimits/DeleteEL.jsp">删除员工权限信息</a></li>
   			<li><a href="cms/emplimits/ModifyEL.jsp">修改员工权限信息</a></li>
   			<li><a href="cms/emplimits/ScanEL.jsp">查看员工权限数据信息</a></li>
   		</ol>
   </details>
   <br>
   <details>
   	<summary>客户信息管理</summary>
   		<ol>
   			<li><a href="cms/customer/AddCust.jsp">增加客户信息</a></li>
   			<li><a href="cms/customer/DeleteCust.jsp">删除客户信息</a></li>
   			<li><a href="cms/customer/ModifyCust.jsp">修改客户信息</a></li>
   			<li><a href="cms/customer/ScanCust.jsp">查看客户数据信息</a></li>
   		</ol>
   </details>
   <br>
   <details>
   	<summary>项目信息管理</summary>
   		<ol>
   			<li><a href="cms/project/AddProj.jsp">增加项目信息</a></li>
   			<li><a href="cms/project/DeleteProj.jsp">删除项目信息</a></li>
   			<li><a href="cms/project/ModifyProj.jsp">修改项目信息</a></li>
   			<li><a href="cms/project/ScanProj.jsp">查看项目数据信息</a></li>
   		</ol>
   </details> 
   </div> -->
    <div id="footer">
	数据库期末实验系统
	</div>
  </body>
</html>
