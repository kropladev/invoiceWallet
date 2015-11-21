<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="UTF8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>University Enrollments</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>


<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="/invoiceWallet/invoice/">Invoices</a></li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Counters
                <span class="caret"></span></a>
            <ul class="dropdown-menu">
                <li><a href="/invoiceWallet/counter/">Counters</a></li>
                <li><a href="/invoiceWallet/counterState/">States</a></li>
                <li><a href="/invoiceWallet/counterStateInv/">Invoice states</a></li>
                <li><a href="/invoiceWallet/counterType/">Types</a></li>
            </ul>
        </li>

        <li><a href="/invoiceWallet/firm/">Firms</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

    <h2>List of Invoices</h2>
    <div class="container">
        <table class="table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    <th>Number</th>
                    <th>Amount</th>
                    <th>Desc</th>
                    <th>Firm Id</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${invoices}" var="invoice">
                    <tr>
                        <td><a href="<c:url value='/invoice/edit/${invoice.id}' />">${invoice.invoiceNumber}</a></td>
                        <td>${invoice.amount}</td>
                        <td>${invoice.description}</td>
                        <td>${invoice.fkFirm}[${invoice.firm.name}]</td>
                        <td><a href="<c:url value='/invoice/delete/${invoice.id}' />">delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <br/>
    <a href="<c:url value='/invoice/new' />">Add New Invoice</a>
</body>
</html>