<!doctype html>
<html lang="<{$xoops_langcode}>">
<head>
		<{assign var=theme_name value=$xoTheme->folderName}>
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

    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300i,400,700&display=swap" rel="stylesheet">
   <link rel="stylesheet" href="<{xoImgUrl}>assets/css/bootstrap.min.css">
    <title><{if $xoops_dirname == "system"}><{$xoops_sitename}><{if $xoops_pagetitle !=''}> - <{$xoops_pagetitle}><{/if}><{else}><{if $xoops_pagetitle !=''}><{$xoops_pagetitle}> - <{$xoops_sitename}><{/if}><{/if}></title>
 
    <style>
        body {
            padding: 0;
            margin: 0;
            height: 100vh;
            font-family: "Nunito Sans";
        }
		
		h4, .h4{
			padding: 0px;
			margin: 0px;
		}

        .form-control {
            line-height: 2;
        }
		
		.fill img {
			object-fit: cover;
			width:100%; height :100%;
			background-color: #FFFFFF;
		}

        .bg-custom {
            background-color: #FFFFFF;
        }

        .btn-custom {
            background-color: #3d2e4f;
            color: #fff;
        }

        .btn-custom:hover {
            background-color: #321d2f;
            color: #fff;
        }
		
		.title-header {
            color: #999;
			text-decoration: none;
        }

        label {
            color: #888;
        }
		alert {
			display:inline-block;
		}
        a,
        a:hover {
            color: #fff;
            text-decoration: none;
        }

        a,
        a:hover {
            text-decoration: none;
        }

        @media(max-width: 932px) {
            .display-none {
                display: none !important;
            }
        }
    </style>
</head>

<body>
    <div class="row m-0 h-100">
        <div class="fill col p-0 text-center d-flex justify-content-center align-items-center d-none d-lg-block">
            <img src="<{xoImgUrl}>assets/img/background.jpg" alt="<{$xoops_sitename}>" title="<{$xoops_sitename}>"  class="w-100">
        </div>
		<div class="fill p-0 d-flex justify-content-center align-items-center d-block d-sm-none">
			<img src="<{xoImgUrl}>assets/img/background.jpg" alt="<{$xoops_sitename}>" title="<{$xoops_sitename}>" class="img-fluid">
        </div>
        <div class="col p-0 bg-custom d-flex justify-content-center align-items-center flex-column w-100">
				<img src="<{$xoops_url}>/images/logo.png" alt="<{$xoops_sitename}>" title="<{$xoops_sitename}>"><br>
				<h4 class='text-dark title-header p-3 text-center'><{$xoops_sitename}></h4>
				<h4 class='text-muted'><{$xoops_slogan}></h4>	
				 
				<div class="text-muted p-3"><{$lang_siteclosemsg}></div>
				<{if $redirect_message|default:false}>
                <div class="alert alert-warning alert-dismissible">
				 <a href="<{$xoops_url}>" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<{$redirect_message|strip_tags}>
				</div>
				<{/if}>
	
            <form class="w-75" action="<{xoAppUrl 'user.php'}>" method="post">
                <div class="mb-3">
                    <label for="<{$smarty.const.THEME_USERNAME}>" class="form-label"><{$smarty.const.THEME_USERNAME}></label>
					<input type="text" name="uname" class="form-control" placeholder="<{$smarty.const.THEME_USERNAME}>" required>
                </div>
                <div class="mb-3">
                    <label for="<{$smarty.const.THEME_PASSWORD}>" class="form-label"><{$smarty.const.THEME_PASSWORD}></label>
					<input type="password" name="pass" class="form-control" placeholder="<{$smarty.const.THEME_PASSWORD}>" required>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="rememberPasswordCheck">
                            <label class="form-check-label" name="rememberme" for="rememberPasswordCheck">
                                <{$smarty.const.THEME_REMEMBERME}>
                            </label>
                        </div>
                    </div>
                </div>
				<input type="hidden" name="xoops_redirect" value="<{$xoops_requesturi}>">
				<input type="hidden" name="xoops_login" value="1">
				<input type="hidden" name="op" value="login" />
                <button type="submit" class="btn btn-custom btn-lg btn-block mt-3"><{$smarty.const.THEME_ACCOUNT_LOGIN}></button>
					
            </form>
			<div class="pt-4 text-dark mb-3 mb-md-0">
				<small> <{$xoops_footer}></small> <br />
			</div>
        </div>
		
    </div>
</body>

</html>
