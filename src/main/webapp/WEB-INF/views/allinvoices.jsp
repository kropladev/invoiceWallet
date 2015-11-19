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
            <td><a href="<c:url value='/invoice/edit/${invoice.id}' />">
                ${invoice.invoiceNumber}</a></td>
            <td>${invoice.amount}</td>
            <td>${invoice.description}</td>
            <td>${invoice.fkFirm}[${invoice.firm.name}]</td>
            <td><a href="<c:url value='/invoice/delete/${invoice.id}' />">delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br/>
    <a href="<c:url value='/invoice/new' />">Add New Invoice</a>
</body>
</html>