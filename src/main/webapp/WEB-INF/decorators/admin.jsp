<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/common/taglib.jsp"%>

<!DOCTYPE html>

<html>

<head>

<!-- Required meta tags -->

<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->

<link
	href="<c:url value="/templates/user/css/bootstrap-5.0.2-bootstrap.min.css"/>"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="<c:url value="/templates/user/css/ajax-font-awesome-6.0.0-beta2-all.min.css"/>"
	integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="/css/mystyles.css" />

<link rel="stylesheet"
	href="<c:url value="/templates/user/css/ajax-font-awesome-6.1.1-all.min.css"/>"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link href="<c:url value="/templates/user/css/boxicons-2.0.9-boxicons.min.css"/>"
	rel="stylesheet" />
<link href='<c:url value = "/templates/user/css/style.css"/>'
	rel="stylesheet" type="text/css">

<title>Index</title>

</head>

<body>



	<header class="row">

		<div class="col">

			<%@include file="/common/admin/header.jsp"%>

		</div>

	</header>

	<main class="container-fluid">

		<!-- <nav class ="row">

<div class="col">

<div></div>

</div>

</nav> -->

		<div class="row mt-4">

			<div class="col mt-5 mb-5">

				<sitemesh:write property='body'></sitemesh:write>

			</div>

		</div>

	</main>

	<footer class="row">

		<div class="col">

			<%@include file="/common/admin/footer.jsp"%>

		</div>

	</footer>





	<!-- JS -->
	<script src="<c:url value="/templates/user/js/jquery-3.6.0.slim.min.js"/>"
		type="text/javascript"></script>
	<script
		src="<c:url value="/templates/user/js/ajax-1.12.9-popper.min.js"/>"
		type="text/javascript"></script>
<!-- 	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript"></script> -->

</body>

</html>