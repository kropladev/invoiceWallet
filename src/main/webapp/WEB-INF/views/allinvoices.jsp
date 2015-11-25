<%@ include file="/WEB-INF/pages/includes.jsp"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">

        <h2>List of Invoices</h2>
        <p>The time on the server is ${serverTime}.</p>
        <div class="container">

            <div class="input-group"> <span class="input-group-addon">Filter</span>
                <input id="filter" type="text" class="form-control" placeholder="Type here..."/>
            </div>
            <fmt:setLocale value="pl_PL" scope="session"/>
            <table class="table table-bordered table-striped table-hover">
                <thead>
                    <tr>
                        <th>Number</th>
                        <th>Amount</th>
                        <th>Desc</th>
                        <th>Firm Id</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${invoices}" var="invoice">
                        <tr id="row-${invoice.id}">
                            <td class="alignRight"><a href="<c:url value='/invoice/edit/${invoice.id}' />">${invoice.invoiceNumber}</a></td>

                            <td class="alignRight"><fmt:formatNumber value="${invoice.amount}" type="currency"/></td>
                            <td>${invoice.description}</td>
                            <td>${invoice.fkFirm}[${invoice.firm.name}]</td>
                            <td>
                                <a href="<c:url value='/invoice/delete/${invoice.id}' />" class="btn btn-danger" role="button">
                                    <span class="glyphicon glyphicon-remove-circle"></span>
                                </a>

                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>



        </div>
        <br/>
        <a href="<c:url value='/invoice/new' />">Add New Invoice</a>

    </tiles:putAttribute>
</tiles:insertDefinition>