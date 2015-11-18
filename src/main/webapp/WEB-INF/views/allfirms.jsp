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
    <h2>List of Firms</h2>
    <table>
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Address</td>
            <td>Description</td>
            <td>Phone</td>
            <td>Nip</td>
            <td>iban</td>
            <td>Regon</td>
            <td></td>
        </tr>
        <c:forEach items="${list}" var="entity">
            <tr>
            <td><a href="<c:url value='/firm/edit-${entity.id}' />">
                ${entity.id}</a></td>
            <td>${entity.name}</td>
            <td>${entity.address}</td>
            <td>${entity.description}</td>
            <td>${entity.phoneNr}</td>
            <td>${entity.nip}</td>
            <td>${entity.iban}</td>
            <td>${entity.regon}</td>

            <td><a href="<c:url value='/firm/delete-${entity.id}' />">delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    <a href="<c:url value='/firm/new' />">Add New Firm</a>
</body>
</html>