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
    <h2>List of Invoices</h2>
    <table>
        <tr>
            <td>Number</td><td>Amount</td><td>Desc</td><td>Firm Id</td><td></td>
        </tr>
        <c:forEach items="${invoices}" var="invoice">
            <tr>
            <td><a href="<c:url value='/edit-${invoice.id}-invoice' />">
                ${invoice.invoiceNumber}</a></td>
            <td>${invoice.amount}</td>
            <td>${invoice.description}</td>
            <td>${invoice.fkFirm}</td>
            <td><a href="<c:url value='/delete-${invoice.id}-invoice' />">delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    <a href="<c:url value='/new' />">Add New Invoice</a>
</body>
</html>