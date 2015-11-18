<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Invoice Registration Form</title>

<style>

    .error {
        color: #ff0000;
    }
</style>

</head>

<body>

    <h2>new Invoice Registration Form</h2>

    <form:form method="POST" modelAttribute="invoice">
        <form:input type="hidden" path="id" id="id"/>
        <table>
            <tr>
                <td><label for="invoiceNumber">Name: </label> </td>
                <td><form:input path="invoiceNumber" id="invoiceNumber"/></td>
                <td><form:errors path="invoiceNumber" cssClass="error"/></td>
            </tr>

            <tr>
                <td><label for="tradeDate">Invoice trade Date: </label> </td>
                <td><form:input path="tradeDate" id="tradeDate"/></td>
                <td><form:errors path="tradeDate" cssClass="error"/></td>
            </tr>

            <tr>
                <td><label for="payDate">Invoice settlement Date: </label> </td>
                <td><form:input path="payDate" id="payDate"/></td>
                <td><form:errors path="payDate" cssClass="error"/></td>
            </tr>

            <tr>
                <td><label for="amount">Amount: </label> </td>
                <td><form:input path="amount" id="amount"/></td>
                <td><form:errors path="amount" cssClass="error"/></td>
            </tr>
            <tr>
                <td><label for="description">Description: </label> </td>
                <td><form:input path="description" id="description"/></td>
                <td><form:errors path="description" cssClass="error"/></td>
            </tr>
            <tr>
                <td><label for="fkFirm">FirmId: </label> </td>
                <td><form:input path="fkFirm" id="fkFirm"/></td>
                <td><form:errors path="fkFirm" cssClass="error"/></td>
            </tr>


            <tr>
                <td colspan="3">
                    <c:choose>
                        <c:when test="${edit}">
                            <input type="submit" value="Update"/>
                        </c:when>
                        <c:otherwise>
                            <input type="submit" value="Register"/>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </table>
    </form:form>
    <br/>
    <br/>
    Go back to <a href="<c:url value='/invoice/list' />">List of All Invoices</a>
</body>
</html>