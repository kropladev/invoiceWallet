<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="/invoiceWallet/home">Home</a></li>
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