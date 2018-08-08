<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
   <head>
      <title>Exhibition Calendar</title>
   </head>

   <body>
      <center>
        <h1>Exhibition calendar</h1>

        <a  href="${pageContext.request.contextPath}/controller?command=home">show</a>
		<hr>
		<p>Search</p>

		<hr>
		<div align="center">
        <table border="1" cellpadding="7">
            <caption><h2>Expo info</h2></caption>
            <tr>

                <th>Name Expo</th>
                <th>Author</th>
                <th>Date From</th>
                <th>Date To</th>
                <th>Expo Center</th>
                <th>Addr</th>
            </tr>
            <c:forEach var="ll" items="${listM}">
                <tr>
                    <td><c:out value="${ll.id}" /></td>
                    <td><c:out value="${ll.name}" /></td>
                    <td><c:out value="${}" /></td>
                    <td><c:out value="${}" /></td>
                    <td><c:out value="${}" /></td>
                    <td>
                    	<a href="/Info?id=<c:out value='${}' />">Info</a>
                        &nbsp;&nbsp;
                        <a href="/Buy?id=<c:out value='${}' />">Buy</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>


      </center>
   </body>
</html>