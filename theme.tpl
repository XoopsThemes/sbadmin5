<!DOCTYPE html>
<html lang="en">
    <head>
        <{assign var=theme_name value=$xoTheme->folderName}>
        <!--theme_mode: dark light white black-->
        <{assign var=theme_mode value='light'}>
        <{assign var=show_dashboard value=false}>
		<meta charset="<{$xoops_charset}>">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="keywords" content="<{$xoops_meta_keywords}>">
		<meta name="description" content="<{$xoops_meta_description}>">
		<meta name="robots" content="<{$xoops_meta_robots}>">
		<meta name="rating" content="<{$xoops_meta_rating}>">
		<meta name="author" content="<{$xoops_meta_author}>">
		<meta name="generator" content="XOOPS">
        <link rel="alternate" type="application/rss+xml" title="" href="<{xoAppUrl 'backend.php'}>" />
        <link href="<{$xoops_url}>/favicon.ico" rel="shortcut icon" />
        <title><{if $xoops_dirname == "system"}><{$xoops_sitename}><{if $xoops_pagetitle !=''}> - <{$xoops_pagetitle}><{/if}><{else}><{if $xoops_pagetitle !=''}><{$xoops_pagetitle}> - <{$xoops_sitename}><{/if}><{/if}></title>
        <{$xoops_module_header}>
        <link href="<{xoImgUrl}>assets/css/styles.css" rel="stylesheet" />
   	    <link href="<{xoImgUrl}>assets/css/xoops.css" rel="stylesheet" />
    </head>
    <!--<body class="sb-nav-fixed" id="<{$xoops_dirname}>">-->
	<body id="<{$xoops_dirname}>">
        <{include file="$theme_name/tpl/topNav.tpl"}>
        <div id="layoutSidenav">
			<div id="layoutSidenav_nav" class="bg-<{$theme_mode}>">
			    <{include file="$theme_name/tpl/leftBlock.tpl"}>
			</div>
            <div id="layoutSidenav_content">
                <{include file="$theme_name/tpl/content.tpl"}>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted"><{$xoops_footer}></div>
                            <div>
                                <a href="#"><{$smarty.const.THEME_PRIVACYPOLICY}></a>
                                &middot;
                                <a href="#"><{$smarty.const.THEME_TERMS}></a>
							</div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<{xoImgUrl}>assets/js/scripts.js"></script>
	</body>
</html>
