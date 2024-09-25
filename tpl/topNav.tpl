    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fa fa-bars"></i></button>
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="<{$xoops_url}>/index.php"><{$xoops_sitename}></a>

            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0" role="search" action="<{xoAppUrl 'search.php'}>" method="get">
			<div class="input-group">
				<input class="form-control" type="text" name="query"  placeholder="<{$smarty.const.THEME_SEARCH_TEXT}>" aria-label="Search" aria-describedby="basic-addon2" />
				<input type="hidden" name="action" value="results">
				<div class="input-group-append">
                <button class="btn btn-primary" type="submit"><i class="fa fa-search"></i></button>
				</div>
			</div>
			</form>
			<{if $xoops_isuser}>
			<!-- Navbar-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user fa-fw"></i></a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
			<{if $xoops_isadmin}>
                <li><a class="dropdown-item" href="<{$xoops_url}>/admin.php" target="_blank"><{$smarty.const.THEME_ADMINPANEL}></a>
				<div class="dropdown-divider"></div>
			<{/if}>
                <li><a class="dropdown-item" href="<{$xoops_url}>/user.php"><{$smarty.const.THEME_MYPROFILE}></a></li>
                <li><a class="dropdown-item" href="<{$xoops_url}>/edituser.php"><{$smarty.const.THEME_UPDATEPROFILE}></a></li>
				<li><a class="dropdown-item" href="<{$xoops_url}>/notifications.php"><{$smarty.const.THEME_ACCOUNT_NOTIFICATIONS}></a></li>
				<{xoInboxCount assign='unread_count'}>
				<{if $unread_count > 0}>
				<li><a class="dropdown-item" href="<{xoAppUrl 'viewpmsg.php'}>"><{$smarty.const.THEME_ACCOUNT_MESSAGES}>
                    <span class="badge badge-primary badge-pill"><{$unread_count}></span></a></li>
				<{else}>
				<li><a class="dropdown-item" href="<{xoAppUrl 'viewpmsg.php'}>"><{$smarty.const.THEME_ACCOUNT_MESSAGES}></a></li>
				<{/if}>
                <div class="dropdown-divider"></div>
                <li><a class="dropdown-item" href="<{$xoops_url}>/user.php?op=logout"><{$smarty.const.THEME_ACCOUNT_LOGOUT}></a></li>
            </ul>
        </li>
    </ul>
	
	<{/if}>      
            
    </nav>