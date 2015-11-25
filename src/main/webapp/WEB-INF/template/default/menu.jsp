<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="sidebar-left" class="col-xs-2 col-sm-2">
			<ul class="nav main-menu">
				<li>
					<a href="/invoiceWallet/home" class="ajax-link">
						<i class="fa fa-dashboard"></i>
						<span class="hidden-xs">Home</span>
					</a>
				</li>
                <li>
                    <a href="/invoiceWallet/invoice" class="ajax-link">
                        <i class="fa fa-dashboard"></i>
                        <span class="hidden-xs">Invoices</span>
                    </a>
                </li>
                <li>
                    <a href="/invoiceWallet/firm" class="ajax-link">
                        <i class="fa fa-dashboard"></i>
                        <span class="hidden-xs">Firms</span>
                    </a>
                </li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle">
						<i class="fa fa-bar-chart-o"></i>
						<span class="hidden-xs">Counters</span>
					</a>
					<ul class="dropdown-menu">
					    <li><a class="ajax-link" href="/invoiceWallet/counter/">Counters</a></li>
                        <li><a class="ajax-link" href="/invoiceWallet/counterState/">States</a></li>
                        <li><a class="ajax-link" href="/invoiceWallet/counterStateInv/">Invoice states</a></li>
                        <li><a class="ajax-link" href="/invoiceWallet/counterType/">Types</a></li>
					</ul>
				</li>


			</ul>
		</div>

