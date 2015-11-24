<%@ include file="/WEB-INF/pages/includes.jsp"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <h2>List of Counters</h2>
        <div class="container">
            <div class="input-group"> <span class="input-group-addon">Filter</span>
                <input id="filter" type="text" class="form-control" placeholder="Type here..."/>
            </div>
            <table class="table table-bordered table-striped table-hover">
                <thead>
                    <tr>
                        <td>Id</td>
                        <td>Serial number</td>
                        <td>Type</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                  <c:forEach items="${list}" var="entity">
                    <tr>
                        <td><a href="<c:url value='/counter/edit/${entity.id}' />">
                            ${entity.id}</a></td>
                        <td>${entity.name}</td>
                        <td>${entity.counterTypeId}</td>

                        <td><a href="<c:url value='/counter/delete/${entity.id}' />" class="btn btn-danger" role="button">
                                <span class="glyphicon glyphicon-remove-circle"></span>
                            </a>
                        </td>
                    </tr>
                  </c:forEach>
                </tbody>
            </table>
        </div>
        <br/>
        <a href="<c:url value='/counter/new' />">Add New Counter</a>
    </tiles:putAttribute>
</tiles:insertDefinition>