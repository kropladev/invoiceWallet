<%@ include file="/WEB-INF/pages/includes.jsp"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <h2>New Firm Registration Form</h2>

        <form:form method="POST" modelAttribute="entity">
            <form:input type="hidden" path="id" id="id"/>
            <table>
                <tr>
                    <td><label for="name">Name: </label> </td>
                    <td><form:input path="name" id="name"/></td>
                    <td><form:errors path="name" cssClass="error"/></td>
                </tr>

                <tr>
                    <td><label for="address">Address: </label> </td>
                    <td><form:input path="address" id="address"/></td>
                    <td><form:errors path="address" cssClass="error"/></td>
                </tr>

                <tr>
                    <td><label for="description">description: </label> </td>
                    <td><form:input path="description" id="description"/></td>
                    <td><form:errors path="description" cssClass="error"/></td>
                </tr>

                <tr>
                    <td><label for="phoneNr">phoneNr: </label> </td>
                    <td><form:input path="phoneNr" id="phoneNr"/></td>
                    <td><form:errors path="phoneNr" cssClass="error"/></td>
                </tr>
                <tr>
                    <td><label for="nip">nip: </label> </td>
                    <td><form:input path="nip" id="nip"/></td>
                    <td><form:errors path="nip" cssClass="error"/></td>
                </tr>
                <tr>
                    <td><label for="iban">iban: </label> </td>
                    <td><form:input path="iban" id="iban"/></td>
                    <td><form:errors path="iban" cssClass="error"/></td>
                </tr>
                <tr>
                    <td><label for="regon">regon: </label> </td>
                    <td><form:input path="regon" id="regon"/></td>
                    <td><form:errors path="regon" cssClass="error"/></td>
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
        Go back to <a href="<c:url value='/firm/list' />">List of All Firms</a>
    </tiles:putAttribute>
</tiles:insertDefinition>