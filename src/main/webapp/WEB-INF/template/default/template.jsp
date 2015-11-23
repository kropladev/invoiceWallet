
<%@ include file="/WEB-INF/pages/includes.jsp"%>
<!DOCTYPE html>
    <head>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>invoice wallet</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
    <!-- IE 6,7,8 is not supported on 2.1.x version of jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
</head>
<body>
    <div class="page">
        <div class="content">
            <tiles:insertAttribute name="menu" />
            <tiles:insertAttribute name="body" />
        </div>
        <tiles:insertAttribute name="footer" />
    </div>
</body>
</html>
