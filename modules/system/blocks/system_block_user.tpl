        <{if $xoops_isadmin}>
            <a class="nav-link<{if $module.highlight|default:false}> active<{/if}>" href="<{xoAppUrl 'admin.php'}>" title="<{$block.lang_adminmenu}>"><div class="sb-nav-link-icon"><i class="fa fa-wrench"></i></div><{$block.lang_adminmenu}></a>
            <a class="nav-link<{if $module.highlight|default:false}> active<{/if}>" href="<{xoAppUrl 'user.php'}>" title="<{$block.lang_youraccount}>"><div class="sb-nav-link-icon"><i class="fa fa-user-circle"></i></div><{$block.lang_youraccount}></a>
        <{else}>
            <a class="nav-link" href="<{xoAppUrl 'user.php'}>" title="<{$block.lang_youraccount}>"><div class="sb-nav-link-icon"><i class="fa fa-user-circle"></i></div><{$block.lang_youraccount}></a> 
        <{/if}>
        <a class="nav-link<{if $module.highlight|default:false}> active<{/if}>" href="<{xoAppUrl 'edituser.php'}>" title="<{$block.lang_editaccount}>"><div class="sb-nav-link-icon"><i class="fa fa-edit"></i></div><{$block.lang_editaccount}></a>
        <a class="nav-link<{if $module.highlight|default:false}> active<{/if}>" href="<{xoAppUrl 'notifications.php'}>" title="<{$block.lang_notifications}>"><div class="sb-nav-link-icon"><i class="fa fa-info-circle"></i></div><{$block.lang_notifications}></a>
        <{xoInboxCount assign='unread_count'}>
        <{if $unread_count > 0}>
            <a class="nav-link info" href="<{xoAppUrl 'viewpmsg.php'}>" title="<{$block.lang_inbox}>"><div class="sb-nav-link-icon"><i class="fa fa-envelope"></i></div><{$block.lang_inbox}>&nbsp;<i class="badge badge-primary badge-pill"><{$unread_count}></i> </a>
        <{else}>
            <a class="nav-link<{if $module.highlight|default:false}> active<{/if}>" href="<{xoAppUrl 'viewpmsg.php'}>" title="<{$block.lang_inbox}>"><div class="sb-nav-link-icon"><i class="fa fa-envelope-open"></i></div><{$block.lang_inbox}></a>
        <{/if}>
        <a class="nav-link<{if $module.highlight|default:false}> active<{/if}>" href="<{xoAppUrl 'user.php?op=logout'}>" title="<{$block.lang_logout}>"><div class="sb-nav-link-icon"><i class="fa fa-arrow-right"></i></div><{$block.lang_logout}></a>

