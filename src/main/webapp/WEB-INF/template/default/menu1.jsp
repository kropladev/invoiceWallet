<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="sidebar-left" class="col-xs-2 col-sm-2">
			<ul class="nav nav-pills nav-stacked left-menu" id="stacked-menu">
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
				<li>
					<a href="#" data-target="#submenu1" data-toggle="collapse" data-parent="#stacked-menu">
						<i class="fa fa-bar-chart-o"></i>
						<span class="hidden-xs">Counters</span>
					</a>
					<ul class="nav nav-stacked collapse left-submenu" id="#submenu1">
					    <li><a  href="/invoiceWallet/counter/">Counters</a></li>
                        <li><a  href="/invoiceWallet/counterState/">States</a></li>
                        <li><a  href="/invoiceWallet/counterStateInv/">Invoice states</a></li>
                        <li><a  href="/invoiceWallet/counterType/">Types</a></li>
					</ul>
				</li>


			</ul>
		</div>

