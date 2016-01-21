<%@ include file="/WEB-INF/pages/includes.jsp"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">

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

    </tiles:putAttribute>
</tiles:insertDefinition>