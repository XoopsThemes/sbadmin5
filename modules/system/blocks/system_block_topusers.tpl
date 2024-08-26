	<div class="row row-cols-5">
			<{foreach item=user from=$block.users}>
               <div class="col text-center p-2">
					<{if $user.avatar != ""}>
						<span class="badge badge-info"><{$user.rank}> | <{$user.posts}></span> <a href='<{$xoops_url}>/userinfo.php?uid=<{$user.id}>' target='_blank'><span class="notify-badge"></span><img src="<{$user.avatar}>" title="<{$user.name}>" alt="<{$user.name}>" class='rounded-circle' border='0' height='48' width='48' title="<{$user.name}>">  </a>
					<{else}>
						<span class="badge badge-info"><{$user.rank}> | <{$user.posts}></span> <a href='<{$xoops_url}>/userinfo.php?uid=<{$user.id}>' target='_blank'><span class="notify-badge"></span><img src="<{$xoops_url}>/images/blank.gif" title="<{$user.name}>" alt="<{$user.name}>" class='rounded-circle' border='0' height='48' width='48' title="<{$user.name}>">  </a>
					<{/if}>
                </div>
            <{/foreach}>
	</div>

