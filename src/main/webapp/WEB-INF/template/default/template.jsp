
<%@ include file="/WEB-INF/pages/includes.jsp"%>
<!DOCTYPE html>
    <head>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>invoice wallet</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/css/bootstrap.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">



    <spring:url value="/resources/js/jquery.tablesorter.min.js" var="tableSorter" />
    <spring:url value="/resources/js/jquery.tablesorter.widgets.min.js" var="tableSorterWidgets" />
    <spring:url value="/resources/css/theme.bootstrap.css" var="bootstrapTheme" />
    <spring:url value="/resources/js/theme.js" var="themeActions" />
    		<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    		<link href='http://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>

    <script src="${tableSorter}"></script>
    <script src="${tableSorterWidgets}"></script>
    <script src="${themeActions}"></script>
    <link href="${bootstrapTheme}" rel="stylesheet"/>
</head>
</head>
<body>
    <tiles:insertAttribute name="header" />
    <div id="page" class="container-fluid page" style="min-height: 627px;">
        <div class="row">
            <tiles:insertAttribute name="menu" />
               <div id="content" class="col-xs-12 col-sm-10">

                    <tiles:insertAttribute name="breadcrumb" />
                    <tiles:insertAttribute name="body" />
                </div>

                    <script >
                    $(document).ready(function () {

                        (function ($) {

                            $('#filter').keyup(function () {
                                console.log('filtering the value:' + $(this).val())
                                var rex = new RegExp($(this).val(), 'i');
                                $('.searchable tr').hide();
                                $('.searchable tr').filter(function () {
                                    return rex.test($(this).text());
                                }).show();
                            })

                            $(function(){
                                $(".table").tablesorter({
                                    theme: 'bootstrap',
                                    widthFixed: false,
                                    headerTemplate: '{content}{icon}',
                                    widgetClass: 'widget-{name}',
                                    widgets: ['zebra', 'columns', 'uitheme'],

                                    widgetOptions: {

                                        zebra: [
                                            'ui-widget-content even',
                                            'ui-state-default odd'
                                        ],

                                        columns: [
                                            'primary',
                                            'secondary',
                                            'tertiary'
                                        ]
                                    }
                                });
                            });

                        }(jQuery));

                    });
                    </script>

        </div>
        <tiles:insertAttribute name="footer" />
    </div>
</body>
</html>
