<%@ include file="/WEB-INF/pages/includes.jsp"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <h2>List of Firms</h2>
        <div class="container">
        <table class="table table-bordered table-striped table-hover">
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
            <tbody>
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
        <script>
            $(document).ready(function(){
                addActionButtonsForEachTableRow();
            });

            function addActionButtonsForEachTableRow(){
                $(tr).each
            }

        </script>
        <br/>
        <a href="<c:url value='/firm/new' />">Add New Firm</a>
    </tiles:putAttribute>
</tiles:insertDefinition>