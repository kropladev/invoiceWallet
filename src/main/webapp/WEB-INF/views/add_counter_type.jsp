<%@ include file="/WEB-INF/pages/includes.jsp"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">


        <form:form method="POST" modelAttribute="entity">
            <form:input type="hidden" path="id" id="id"/>
            <table>
                <tr>
                    <td><label for="symbol">symbol: </label> </td>
                    <td><form:input path="symbol" id="symbol"/></td>
                    <td><form:errors path="symbol" cssClass="error"/></td>
                </tr>

                <tr>
                    <td><label for="description">description: </label> </td>
                    <td><form:input path="description" id="description"/></td>
                    <td><form:errors path="description" cssClass="error"/></td>
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
        Go back to <a href="<c:url value='/counterType/list' />">List of All counter types</a>
    </tiles:putAttribute>
</tiles:insertDefinition>