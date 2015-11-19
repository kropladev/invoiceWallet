<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Counter Registration Form</title>

<style>

    .error {
        color: #ff0000;
    }
</style>

</head>

<body>

    <h2>New Counter Registration Form</h2>

    <form:form method="POST" modelAttribute="entity">
        <form:input type="hidden" path="id" id="id"/>
        <table>
            <tr>
                <td><label for="id">id: </label> </td>
                <td><form:input path="id" id="id"/></td>
                <td><form:errors path="id" cssClass="error"/></td>
            </tr>

            <tr>
                <td><label for="name">Serial no: </label> </td>
                <td><form:input path="name" id="name"/></td>
                <td><form:errors path="name" cssClass="error"/></td>
            </tr>

            <tr>
                <td><label for="type">description: </label> </td>
                <td><form:input path="counterTypeId" id="type"/></td>
                <td><form:errors path="counterTypeId" cssClass="error"/></td>
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
    Go back to <a href="<c:url value='/counter/list' />">List of All Firms</a>
</body>
</html>