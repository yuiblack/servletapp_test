<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<!-- 引入 Bootstrap -->
		<!-- 新 Bootstrap 核心 CSS 文件 -->
		<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

		<title>key_in页面</title>
		
		
	</head>
	<body>
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-2 column">
				</div>
				<div class="col-md-8 column">
					<h1 class="bg-success">
						Student Score Maintenance Key_In
					</h1>
				</div>
				<div class="col-md-2 column">
				</div>
			</div>

			<div class="row clearfix">
				<div class="col-md-2 column">
				</div>
				<div class="col-md-4 column">
					<form class="center-block" onsubmit="${pageContext.request.contextPath }/students_search.action"
					action="${pageContext.request.contextPath }/students_search.action" id="keyIn" >
						<div class="form-group">
							<label for="Student_ID">Student ID</label><input type="text" class="form-control" name="Student_ID" id="sID" placeholder="Input Student ID such as '1428401001'"/>
						</div>
						<div class="form-group">
							<label for="Curriculum_ID">Curriculum ID</label><input type="text" class="form-control" name="Curriculum_ID" id="cID"  placeholder="Input Curriculum ID such as '00001'" />
						</div>
 						<input class="btn btn-default btn-primary" role="button" type=submit value=Search>
						
						<a class="btn btn-default btn-success" role="button" href="${pageContext.request.contextPath }/jsp/add.jsp" >New</a>
					</form>
				
					
				</div>
				<div class="col-md-6 column">
				</div>
			</div>
		</div>

		<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</body>
</html>
