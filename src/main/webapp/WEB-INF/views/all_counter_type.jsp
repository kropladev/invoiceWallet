<%@ include file="/WEB-INF/pages/includes.jsp"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <h2>List of Counter types</h2>
        <div class="container">

            <div class="input-group"> <span class="input-group-addon">Filter</span>
                <input id="filter" type="text" class="form-control" placeholder="Type here..."/>
            </div>

            <table class="table table-bordered table-striped table-hover">
                </thead>
                    <tr>
                        <td>Id</td>
                        <td>Symbol</td>
                        <td>Description</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                  <c:forEach items="${list}" var="entity">
                    <tr>
                        <td><a href="<c:url value='/counterType/edit/${entity.id}' />">
                            ${entity.id}</a></td>
                        <td>${entity.symbol}</td>
                        <td>${entity.description}</td>

                        <td><a href="<c:url value='/counterType/delete/${entity.id}' />" class="btn btn-danger" role="button">
                            <span class="glyphicon glyphicon-remove-circle"></span>
                            </a>
                        </td>
                    </tr>
                  </c:forEach>
                </tbody>
            </table>
        </div>
        <br/>
        <a href="<c:url value='/counterType/new' />">Add New type</a>
    </tiles:putAttribute>
</tiles:insertDefinition>