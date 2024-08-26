
	
    <{if $block.showgroups == true}>
	<div class="row p-2">
		<span class='btn btn-sm btn-light btn-block text-muted'><strong><i class='fa fa-user-circle'></i>&nbsp; <{$smarty.const.THEME_SITEADMIN}></strong></span>
	</div>
		<div class="row row-cols p-2">
        <!-- start group loop -->
        <{foreach item=group from=$block.groups}>
			
            <!-- start group member loop -->
            <{foreach item=user from=$group.users}>

				<div class="col">
					<{if $user.avatar != ""}>
						<a href='<{$xoops_url}>/userinfo.php?uid=<{$user.id}>' target='_blank'><img src="<{$user.avatar}>" title="<{$user.name}>" alt="<{$user.name}>" class='rounded-circle' border='0' height='48' width='48' title="<{$user.name}> | <{$user.joindate}>"></a>
					<{else}>
						<a href='<{$xoops_url}>/userinfo.php?uid=<{$user.id}>' target='_blank'><img src="<{$xoops_url}>/images/blank.gif" title="<{$user.name}>" alt="<{$user.name}>" class='rounded-circle' border='0' height='48' width='48' title="<{$user.name}> | <{$user.joindate}>"></a>
					<{/if}>
                </div>
           
            <{/foreach}>
            <!-- end group member loop -->

        <{/foreach}>
        <!-- end group loop -->
		</div>
	<{/if}>



