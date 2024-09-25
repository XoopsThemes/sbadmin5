<nav class="sb-sidenav accordion sb-sidenav-<{$theme_mode}>" id="sidenavAccordion">
    <{if $xoops_isuser|default:false}>
		<div class="clearfix">
			<div class="profile_pic">
				<{if $xoops_avatar|default:false!='avatars/blank.gif'}>
					<img src="<{$xoops_avatar}>" alt="<{$xoops_uname}>" title="<{$xoops_uname}>" class="img-circle profile_img">
				<{else}>
					<{if $xoops_name|default:false}>
						<div class="profile_info"><a href="<{$xoops_url}>/user.php"><span class="avatar-circle" title="<{$xoops_name}>"><{$xoops_name|substr:0:1}></span></a></div>
					<{else}>
						<div class="profile_info"><a href="<{$xoops_url}>/user.php"><span class="avatar-circle" title="<{$xoops_uname}>"><{$xoops_uname|substr:0:1}></span></a></div>
					<{/if}>
				<{/if}>
			</div>

			<div class="profile_info">
				<span><strong><{$smarty.const.THEME_WELCOME}></strong></span>
				<{if $xoops_name|default:false}>
				 	<div class="small"><{$xoops_name}></div>
				<{else}>
				 	<div class="small"><{$xoops_uname}></div>
				<{/if}>
			</div>
		</div>
	<{/if}>
                    
	<div class="sb-sidenav-menu">
		<div class="nav">
			<{if $xoops_menu_sbadmin5|default:false}>
				<{$xoops_menu_sbadmin5}>
			<{/if}>
			<{if $xoBlocks.canvas_left}>
				<{foreach item=block from=$xoBlocks.canvas_left}>
					<{if $block.title}><div class="sb-sidenav-menu-heading"><{$block.title}></div><{/if}>
					<{$block.content}>
				<{/foreach}>
			<{/if}>
	   </div>
	</div>
		
	<{if $xoops_isuser|default:false}>
        <div class="sb-sidenav-footer">
			<div class="small"><{$smarty.const.THEME_LOGGEDINAS}></div>
			<{if $xoops_name}><{$xoops_name}><{else}><{$xoops_uname}><{/if}>
        </div>
	<{/if}>
</nav>
