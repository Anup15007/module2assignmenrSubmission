<%@page import="com.cg.project.beans.UserBean"%>
<html>
<body>
	<div align="center">

		<table>
			<tr>
				<td>firstName :-</td>
				<td>${sessionScope.userBean.firstName}</td>
			</tr>
			<tr>
				<td>lastName :-</td>
				<td>${sessionScope.userBean.lastName}</td>
			</tr>
			<tr>
				<td>bookName :-</td>
				<td>${sessionScope.userBean.bookName}</td>
			</tr>
			<tr>
				<td>movieName :-</td>
				<td>${sessionScope.userBean.movieName}</td>
			</tr>
			<tr>
				<td>fruitName :-</td>
				<td>${sessionScope.userBean.fruitName}</td>
			</tr>
		</table>
	</div>
</body>
</html>