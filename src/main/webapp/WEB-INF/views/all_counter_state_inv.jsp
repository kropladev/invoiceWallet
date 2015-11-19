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
    <h2>List of counterStateInv</h2>
    <table>
        <tr>
            <td>Id</td>
            <td>state</td>
            <td>invoiceId</td>
            <td>CounterId</td>
            <td></td>
        </tr>
        <c:forEach items="${list}" var="entity">
            <tr>
            <td><a href="<c:url value='/counterStateInv/edit/${entity.id}' />">
                ${entity.id}</a></td>
            <td>${entity.value}</td>
            <td>${entity.invoiceId}</td>
            <td>${entity.counterId}</td>

            <td><a href="<c:url value='/counterStateInv/delete/${entity.id}' />">delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    <a href="<c:url value='/counterStateInv/new' />">Add New state for invoice</a>
</body>
</html>