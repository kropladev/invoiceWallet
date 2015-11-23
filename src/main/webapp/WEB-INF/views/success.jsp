<%@ include file="/WEB-INF/pages/includes.jsp"%>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        message : ${success}
        <br/>
        <br/>
        Go back to <a href="<c:url value='/"+${pageType}+"/list' />">Go back to main list</a>

    </tiles:putAttribute>
</tiles:insertDefinition>