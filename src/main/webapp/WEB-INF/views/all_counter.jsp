<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>University Enrollments</title>

    <style>
        tr:first-child{
            font-weight: bold;
            background-color: #C6C9C4;
        }
    </style>
</head>

<body>
    <h2>List of Counters</h2>
    <table>
        <tr>
            <td>Id</td>
            <td>Serial number</td>
            <td>Type</td>
            <td></td>
        </tr>
        <c:forEach items="${list}" var="entity">
            <tr>
            <td><a href="<c:url value='/counter/edit/${entity.id}' />">
                ${entity.id}</a></td>
            <td>${entity.name}</td>
            <td>${entity.counterTypeId}</td>

            <td><a href="<c:url value='/counter/delete/${entity.id}' />">delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    <a href="<c:url value='/counter/new' />">Add New Counter</a>
</body>
</html>