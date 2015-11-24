<%@ include file="/WEB-INF/pages/includes.jsp"%>
<%@taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
  <% pageContext.setAttribute("now", new org.joda.time.DateTime()); %>


<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <h2>List of Counter States</h2>
        <div class="container">
            <div class="input-group"> <span class="input-group-addon">Filter</span>
                <input id="filter" type="text" class="form-control" placeholder="Type here..."/>
            </div>

            <table class="table table-bordered table-striped table-hover">
                <thead>
                    <tr>
                        <td>Id</td>
                        <td>State</td>
                        <td>Read time</td>
                        <td>Counter Id</td>
                        <td></td>
                    </tr>
                </thead>
                <tbody>
                  <c:forEach items="${list}" var="entity">
                    <tr>
                        <td><a href="<c:url value='/counterState/edit/${entity.id}' />">
                            ${entity.id}</a></td>
                        <td>${entity.value}</td>
                        <td> <joda:format value="${entity.readTimestamp}" pattern="yyyy-MM-dd hh:mm:ss" /> </td>
                        <td>${entity.counterId}</td>

                        <td><a href="<c:url value='/counterState/delete/${entity.id}' />" class="btn btn-danger" role="button">
                                <span class="glyphicon glyphicon-remove-circle"></span>
                            </a>
                        </td>
                    </tr>
                  </c:forEach>
                </tbody>
            </table>
        </div>
        <br/>
        <a href="<c:url value='/counterState/new' />">Add New counter State</a>
    </tiles:putAttribute>
</tiles:insertDefinition>