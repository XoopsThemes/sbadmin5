<main>
			<{if $xoops_page == "index"}>
			<{xoStats}>
			<div class="container-fluid px-4">
                        <h1 class="mt-4"><{$smarty.const.THEME_DASHBOARD}></h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body"><i class="fa fa-user-circle fa-2x"></i>&nbsp;<b><{$smarty.const.THEME_TOTALMEMBERS}></b></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white text-decoration-none" href="#"><h4><{$totalUsers}></h4></a>
                                        <div class="small text-white"><i class="fa fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body"><i class="fa fa-user-plus fa-2x"></i>&nbsp;<b><{$smarty.const.THEME_REGISTERTODAY}></b></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white text-decoration-none" href="#"><h4><{$newUsersToday}></h4></a>
                                        <div class="small text-white"><i class="fa fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body"><i class="fa fa-sticky-note fa-2x"></i>&nbsp;<b><{$smarty.const.THEME_TOTALPOST}></b></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white text-decoration-none" href="#"><h4><{$totalPosts}></h4></a>
                                        <div class="small text-white"><i class="fa fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body"><i class="fa fa-globe fa-2x"></i>&nbsp;<b><{$smarty.const.THEME_TOTALONLINE}></b></div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white text-decoration-none" href="#"><h4><{$totalOnline}></h4></a>
                                        <div class="small text-white"><i class="fa fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
			</div>
			<{/if}>
			
    <br /><{include file="$theme_name/tpl/topCenter.tpl"}> 
    <{if $xoBlocks.page_topleft || $xoBlocks.page_topright}>
    <div class="container-fluid">
        <div class="row">
            <{include file="$theme_name/tpl/topLeft.tpl"}> <{include file="$theme_name/tpl/topRight.tpl"}>
        </div>
    </div>
    <{/if}> 
	
	<{include file="$theme_name/tpl/rightBlock.tpl"}> 
	<{if $xoops_contents}>
    <div class="container-fluid">
		<{if $xoops_page != "index"}>
		<div class="card-header">
            <{if $xoops_pagetitle !=''}>
            <h5 class="mt-2"><{$xoops_pagetitle}></h5>
            <{/if}>
        </div>
		<{/if}>
        <div class="card-body">
            <p class="mb-0">
                <{$xoops_contents}>
            </p>
        </div>
    </div>
    <{/if}> 
	<{if $xoBlocks.page_bottomleft || $xoBlocks.page_bottomright}>
    <div class="container-fluid">
        <div class="row">
            <{include file="$theme_name/tpl/bottomLeft.tpl"}> <{include file="$theme_name/tpl/bottomRight.tpl"}>
        </div>
    </div>
    <{/if}> <{include file="$theme_name/tpl/bottomCenter.tpl"}> 
	
	<{include file="$theme_name/tpl/footerCenter.tpl"}> <{if $xoBlocks.footer_left || $xoBlocks.footer_right}>
    <div class="container-fluid">
        <div class="row">
            <{include file="$theme_name/tpl/footerLeft.tpl"}> <{include file="$theme_name/tpl/footerRight.tpl"}>
        </div>
    </div>
    <{/if}>
</main>
