<%@ include file="/WEB-INF/pages/includes.jsp"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="container">

            <div class="input-group"> <span class="input-group-addon">Filter</span>
                <input id="filter" type="text" class="form-control" placeholder="Type here..."/>
            </div>

            <table class="table table-bordered table-striped table-hover">
                <thead>
                    <tr>
                        <td>Id</td>
                        <td>state</td>
                        <td>invoiceId</td>
                        <td>CounterId</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                  <c:forEach items="${list}" var="entity">
                    <tr>
                        <td><a href="<c:url value='/counterStateInv/edit/${entity.id}' />">
                            ${entity.id}</a></td>
                        <td>${entity.value}</td>
                        <td>${entity.invoiceId}</td>
                        <td>${entity.counterId}</td>

                        <td><a href="<c:url value='/counterStateInv/delete/${entity.id}' />" class="btn btn-danger" role="button">
                                <span class="glyphicon glyphicon-remove-circle"></span>
                            </a>
                        </td>
                    </tr>
                  </c:forEach>
                </tbody>
            </table>
        </div>
        <br/>
        <a href="<c:url value='/counterStateInv/new' />">Add New state for invoice</a>
    </tiles:putAttribute>
</tiles:insertDefinition>