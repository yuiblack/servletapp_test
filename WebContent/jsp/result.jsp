<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入 Bootstrap -->
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

<title>result页面</title>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-2 column"></div>
			<div class="col-md-8 column">
				<h1>Student Score Maintenance Key_In</h1>
			</div>
			<div class="col-md-2 column"></div>
		</div>

		<div class="row clearfix">
			<div class="col-md-2 column"></div>
			<div class="col-md-8 column">
				<table class="table table-bordered  table-condensed">
					<tbody>
						<tr class="info">
							<td>STUDENT_ID</td>
							<td>STUDENT_NAME</td>
							<td>CLASS</td>
							<td>GRADE</td>
							<td>SEX</td>
						</tr>
						<c:forEach items="${list}" var="students">
						
						<tr class="warning">
							<td>${students.student_ID}</td>
							<td>${students.student_name}</td>
							<td>${students.student_class}</td>
							<td>${students.grade}</td>
							<td>${students.sex}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<table class="table table-hover table-striped">
					<thead>
						<tr class="info">
							<th>NO.</th>
							<th>Sel</th>
							<th>Curriculum ID</th>
							<th>Curriculum Name</th>
							<th>Score</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${sclist}" var="scores" varStatus="i">
						
							<tr>
								<td>${i.count}</td>
								<td>{x}</td>
								<td>${scores.curriculum_ID}</td>
								<td>${scores.curriculum_name}</td>
								<td>${scores.score}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class="row clearfix">
					<div class="col-md-8 column">
						<ul class="pagination">
							<li><a href="#">Prev</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>

							<li><a href="#">Next</a></li>
						</ul>
					</div>
					<div class="col-md-2 column"></div>
					<div class="col-md-2 column"></div>
				</div>
				<div class="row clearfix">
					<div class="col-md-8 column">
						<a href="${pageContext.request.contextPath}/StudentsServlet?method=update" class="btn btn-default btn-success" role="button">Update</a> 
						<a href="${pageContext.request.contextPath}/StudentsServlet?method=delete" class="btn btn-default btn-danger" role="button">Delete</a>
						<a href="${pageContext.request.contextPath}/jsp/key_in.jsp" class="btn btn-default btn-primary" role="button">Back</a>
					</div>
					<div class="col-md-2 column">
					</div>
					<div class="col-md-2 column"></div>
				</div>
			</div>
			<div class="col-md-2 column"></div>
		</div>
	</div>

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script
		src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>