<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="in.co.rays.controller.proj4.LoginCtl"%>
<%@page import="in.co.rays.bean.proj4.RoleBean"%>
<%@page import="in.co.rays.controller.proj4.ORSView"%>
<%@page import="in.co.rays.bean.proj4.RoleBean"%>
<%@page import="in.co.rays.controller.proj4.LoginCtl"%>
<%@page import="in.co.rays.bean.proj4.UserBean"%>
<%@page import="in.co.rays.controller.proj4.ORSView"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Project-4</title>
</head>
<body >
	<%
		UserBean userBean = (UserBean) session.getAttribute("user");

		boolean userLoggedIn = userBean != null;

		String welcomeMsg = "Hello123456, ";
		if (userLoggedIn) {
			String role = (String) session.getAttribute("role");
			welcomeMsg += userBean.getFirstName()+ "(" + role + ")";

		} else {
			welcomeMsg += "1234";
		}
	%>
	<table style="background-color: white; width: 100%">
		<tr>
			<td><b><a href="<%=ORSView.WELCOME_CTL%>">Welcome</a> </b>| <%
 	if (userLoggedIn) {
 %><b><a
					href="<%=ORSView.LOGIN_CTL%>?operation=<%=LoginCtl.OP_LOG_OUT%>">Logout</a></b>

				<%
					} else {
				%> <b><a href="<%=ORSView.LOGIN_CTL%>">Login</a></b> <%
 	}
 %></td>

			<td rowspan="2">
				<h1 align="right">
					<img src="<%=ORSView.APP_CONTEXT%>/img/logo.png" width="250"
						height="75" >
				</h1>
			</td>
		</tr>
		<tr>
			<td>
				<h3>
					<%=welcomeMsg%></h3>
			</td>
		</tr>

		<%
			if (userLoggedIn) {
		%>

		<tr >
			<td colspan="3"><font style="font-size: 17px"> <b><a
						href="<%=ORSView.MY_PROFILE_CTL%>">MyProfile</a></b>| <b><a
						href="<%=ORSView.CHANGE_PASSWORD_CTL%>">Change Password</a></b> | <b><a
						href="<%=ORSView.GET_MARKSHEET_CTL%>">Get Marksheet</a></b> | <b><a
						href="<%=ORSView.MARKSHEET_MERIT_LIST_CTL%>">Marksheet
							MeritList</a></b> | <%
 	if (userBean.getRoleId() == RoleBean.ADMIN) {%> <b><a 
                        href="<%=ORSView.MARKSHEET_CTL%>">Add Marksheet</a></b> |<b><a
						href="<%=ORSView.MARKSHEET_LIST_CTL%>">Marksheet List</a></b> |<b><a
						href="<%=ORSView.USER_CTL%>">Add User</a></b> | <b><a
						href="<%=ORSView.USER_LIST_CTL%>">User List</a></b> |<b><a
						href="<%=ORSView.COLLEGE_CTL%>">Add College</a></b> | <b><a
						href="<%=ORSView.COLLEGE_LIST_CTL%>">College List</a></b> |<b><a
						href="<%=ORSView.ROLE_CTL%>">Add Role</a></b> | <b><a
						href="<%=ORSView.ROLE_LIST_CTL%>">Role List</a></b> |<br> <b>
						<a href="<%=ORSView.STUDENT_CTL%>">Add Student</a>
				</b> | <b><a href="<%=ORSView.STUDENT_LIST_CTL%>">Student List</a></b> |<b>
						<a href="<%=ORSView.COURSE_CTL%>">Add Course</a>
				</b> | <b><a href="<%=ORSView.COURSE_LIST_CTL%>">Course List</a></b> |<b>
						<a href="<%=ORSView.SUBJECT_CTL%>">Add Subject</a>
				</b> | <b><a href="<%=ORSView.SUBJECT_LIST_CTL%>">Subject List</a></b> |<b>
						<a href="<%=ORSView.FACULTY_CTL%>">Add Faculty</a>
				</b> | <b><a href="<%=ORSView.FACULTY_LIST_CTL%>">Faculty List</a></b> |<b>
						<a href="<%=ORSView.TIMETABLE_CTL%>">Add TimeTable</a>
				</b> |<b> <a href="<%=ORSView.TIMETABLE_LIST_CTL%>">TimeTable
							List</a></b> |<b> <a target="blank" href="<%=ORSView.JAVA_DOC_VIEW%>">Java
							Doc</a>
				</b> | <%
					}
				%> <%
 	if (userBean.getRoleId() == RoleBean.STUDENT) {
 %> <b><a href="<%=ORSView.COLLEGE_LIST_CTL%>">College List</a></b> |<b>
						<a href="<%=ORSView.STUDENT_LIST_CTL%>">Student List</a>
				</b> | <b><a href="<%=ORSView.COURSE_LIST_CTL%>">Course List</a></b> |<b>
						<a href="<%=ORSView.SUBJECT_LIST_CTL%>">Subject List</a>
				</b> |<b> <a href="<%=ORSView.FACULTY_LIST_CTL%>">Faculty List</a></b> |<b>
						<a href="<%=ORSView.TIMETABLE_LIST_CTL%>">TimeTable List</a>
				</b> | <%
					}
				%> <%
 	if (userBean.getRoleId() == RoleBean.KIOSK) {
 %> <b><a href="<%=ORSView.COLLEGE_LIST_CTL%>">College List</a></b> |<b>
						<a href="<%=ORSView.TIMETABLE_LIST_CTL%>">TimeTable List</a>
				</b> |<b> <a href="<%=ORSView.COURSE_LIST_CTL%>">Course List</a>
				</b>| <%
					}
				%> <%
 	if (userBean.getRoleId() == RoleBean.FACULTY) {
 %> <b><a href="<%=ORSView.MARKSHEET_CTL%>">Add Marksheet</a></b> |<b>
						<a href="<%=ORSView.MARKSHEET_LIST_CTL%>">Marksheet List</a></b> |
						<b> <a href="<%=ORSView.COLLEGE_LIST_CTL%>">College List</a></b> |
				<b><a href="<%=ORSView.STUDENT_CTL%>">Add Student</a></b> |
				 <b><a href="<%=ORSView.STUDENT_LIST_CTL%>">Student List</a></b> |
					<b><a href="<%=ORSView.COURSE_LIST_CTL%>">Course List</a></b> |
					 <b><a	href="<%=ORSView.SUBJECT_CTL%>">Add Subject</a></b> |
					  <b> <a href="<%=ORSView.SUBJECT_LIST_CTL%>">Subject List</a></b> |
					   <b><a href="<%=ORSView.TIMETABLE_CTL%>">Add TimeTable</a></b> |
					    <b><a href="<%=ORSView.TIMETABLE_LIST_CTL%>">TimeTable List</a></b> | <%}
 %> <%
 	if (userBean.getRoleId() == RoleBean.COLLEGE_SCHOOL) { %> <b><a
                         href="<%=ORSView.MARKSHEET_CTL%>">Add Marksheet</a></b> | <b><a
						href="<%=ORSView.MARKSHEET_LIST_CTL%>">Marksheet List</a></b> |<b>
						<a href="<%=ORSView.STUDENT_CTL%>">Add Student</a>
				</b> | <b><a href="<%=ORSView.STUDENT_LIST_CTL%>">Student List</a></b> |
					<b><a href="<%=ORSView.FACULTY_LIST_CTL%>">Faculty List</a></b> |<b>
						<a href="<%=ORSView.TIMETABLE_LIST_CTL%>">TimeTable List</a>
				</b> |<b> <a href="<%=ORSView.COURSE_LIST_CTL%>">Course List</a></b> | <%
 	}
 %>
			</font></td>

		</tr>
		<%
			}
		%>
		<tr>
			<td colspan="3"><hr></td>
		</tr>
	</table>

</body>
</html>