<%@ include file="/WEB-INF/pages/includes.jsp"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="container">
            <div class="input-group"> <span class="input-group-addon">Filter</span>
                <input id="filter" type="text" class="form-control" placeholder="Type here...">
            </div>
            <table id="firmListTable" class="table table-bordered table-striped table-hover tablesorter">
                <thead>
                    <tr>
                        <td>Id</td>
                        <td>Name</td>
                        <td>Address</td>
                        <td>Description</td>
                        <td>Phone</td>
                        <td>Nip</td>
                        <td>iban</td>
                        <td>Regon</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody class="searchable">
                  <c:forEach items="${list}" var="entity">
                    <tr>
                        <td><a href="<c:url value='/firm/edit-${entity.id}' />">
                            ${entity.id}</a></td>
                        <td>${entity.name}</td>
                        <td>${entity.address}</td>
                        <td>${entity.description}</td>
                        <td>${entity.phoneNr}</td>
                        <td>${entity.nip}</td>
                        <td>${entity.iban}</td>
                        <td>${entity.regon}</td>

                        <td>
                            <a href="<c:url value='/firm/delete-${entity.id}' />" class="btn btn-danger" role="button">
                                <span class="glyphicon glyphicon-remove-circle"></span>
                            </a>
                        </td>
                    </tr>
                  </c:forEach>
                </tbody>
            </table>
        </div>
        <br/>
        <a href="<c:url value='/firm/new' />">Add New Firm</a>


    </tiles:putAttribute>
</tiles:insertDefinition>