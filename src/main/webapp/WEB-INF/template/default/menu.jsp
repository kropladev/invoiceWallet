<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div id="sidebar-left" class="col-xs-2 col-sm-2">
		<ul class="nav nav-pills nav-stacked left-menu" id="stacked-menu">
		    <li> <a href="/invoiceWallet/home">
		            <i class="fa fa-home"></i>
		            <span class="hidden-xs">Home</span>
		          </a>
		    </li>
		    <li> <a href="/invoiceWallet/invoice">
		            <i class="fa fa-book"></i>
		            <span class="hidden-xs">Invoices</span>
		          </a>
		    </li>
		    <li> <a href="/invoiceWallet/firm">
		            <i class="fa fa-building-o"></i>
		            <span class="hidden-xs">Firms</span>
		          </a>
		    </li>

            <li>
                <a href="#" data-target="#item1" data-toggle="collapse" data-parent="#stacked-menu">
                    <i class="fa fa-edit"></i>
                    <span class="hidden-xs">Counters</span>
                    <span class="caret arrow"></span>
                </a>

                <ul class="nav nav-stacked collapse left-submenu" id="item1">
                    <li><a  href="/invoiceWallet/counter/">Counters</a></li>
                    <li><a  href="/invoiceWallet/counterState/">States</a></li>
                    <li><a  href="/invoiceWallet/counterStateInv/">Invoice states</a></li>
                    <li><a  href="/invoiceWallet/counterType/">Types</a></li>
                </ul>
            </li>

        </ul>
		</div>

