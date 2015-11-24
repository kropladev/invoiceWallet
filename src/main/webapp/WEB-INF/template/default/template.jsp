
<%@ include file="/WEB-INF/pages/includes.jsp"%>
<!DOCTYPE html>
    <head>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>invoice wallet</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

     <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
    <!-- IE 6,7,8 is not supported on 2.1.x version of jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <spring:url value="/resources/js/jquery.tablesorter.min.js" var="tableSorter" />
    <spring:url value="/resources/js/jquery.tablesorter.widgets.min.js" var="tableSorterWidgets" />
    <spring:url value="/resources/css/theme.bootstrap.css" var="bootstrapTheme" />

    <script src="${tableSorter}"></script>
    <script src="${tableSorterWidgets}"></script>
    <link href="${bootstrapTheme}" rel="stylesheet"/>
</head>
</head>
<body>
    <div class="page">
        <div class="content">
            <tiles:insertAttribute name="menu" />
            <tiles:insertAttribute name="body" />


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
