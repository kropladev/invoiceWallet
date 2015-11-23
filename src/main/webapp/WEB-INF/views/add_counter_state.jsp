<%@ include file="/WEB-INF/pages/includes.jsp"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <h2>New Counter state Registration Form</h2>

        <form:form method="POST" modelAttribute="entity">
            <form:input type="hidden" path="id" id="id"/>
            <table>
                <tr>
                    <td><label for="value">State(value): </label> </td>
                    <td><form:input path="value" id="value"/></td>
                    <td><form:errors path="value" cssClass="error"/></td>
                </tr>

                <tr>
                    <td><label for="readTimestamp">readTimestamp: </label> </td>
                    <td><form:input path="readTimestamp" id="readTimestamp"/></td>
                    <td><form:errors path="readTimestamp" cssClass="error"/></td>
                </tr>

                <tr>
                    <td><label for="counterId">counterId: </label> </td>
                    <td><form:input path="counterId" id="counterId"/></td>
                    <td><form:errors path="counterId" cssClass="error"/></td>
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
        Go back to <a href="<c:url value='/counterState/list' />">List of All counter states</a>
    </tiles:putAttribute>
</tiles:insertDefinition>