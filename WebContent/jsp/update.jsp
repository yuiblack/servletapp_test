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

		<title>update页面</title>

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
				<div class="col-md-8 column">
					<table class="table table-bordered table-condensed table-responsive">
						<tbody>
							<tr class="info">
								<td>
									STUDENT_ID
								</td>
								<td>
									STUDENT_NAME
								</td>
								<td>
									CLASS
								</td>
								<td>
									GRADE
								</td>
								<td>
									SEX
								</td>
							</tr>
							<tr class="warning">
								<td class="text-center">
									<label>
										<input type="checkbox" class="ace">
										<span class="lbl"></span>
									</label>
								</td>

								<td>
									TB - Monthly
								</td>
								<td>
									01/04/2012
								</td>
								<td>
									Approved
								</td>
								<td>
									Approved
								</td>
							</tr>
						</tbody>
					</table>

					<a href="${pageContext.request.contextPath}/StudentsServlet?method=updateData" class="btn btn-default btn-success"
					 role="button">Update</a>
					<a href="${pageContext.request.contextPath}/StudentsServlet?method=delete" class="btn btn-default btn-primary" role="button">Back</a>
				</div>
				<div class="col-md-2 column">
				</div>
			</div>

		</div>
		<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
		<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
		<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
		<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</body>
</html>
