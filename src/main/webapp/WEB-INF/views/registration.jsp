<%@ include file="/WEB-INF/pages/includes.jsp"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
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
    </tiles:putAttribute>
</tiles:insertDefinition>