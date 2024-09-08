my new custom block
<a class="nav-link<{if !$mainMenuSbadmin.nothome|default:false}> active<{/if}>" href="<{xoAppUrl ' '}>" title="<{$smarty.const.THEME_HOME}>">
    <div class="sb-nav-link-icon">&nbsp;<i class="fa fa-home"></i></div>&nbsp;<{$smarty.const.THEME_HOME}></a>
<!-- start module menu loop -->
<{foreach item=module from=$mainMenuSbadmin.modules}>
    <{if $module.sublinks}>
        <a class="nav-link <{if $module.highlight|default:false}> active<{/if}>" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
            <div class="sb-nav-link-icon">
                <i class="fa <{if $module.highlight|default:false}>fa-check-circle<{else}>fa-cube<{/if}>"></i>
            </div>
            <{$module.name}></a>
        <div class="" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
            <nav class="sb-sidenav-menu-nested nav">
                <{foreach item=sublink from=$module.sublinks}>
                    <a class="nav-link" href="<{$sublink.url}>" title="<{$sublink.name}>"><{$sublink.name}></a>
                <{/foreach}>
            </nav>
        </div>
    <{else}>
        <a class="nav-link<{if $module.highlight|default:false}> active<{/if}>" href="<{$xoops_url}>/modules/<{$module.directory}>/" title="<{$module.name}>">
            <div class="sb-nav-link-icon">
                <i class="fa <{if $module.highlight|default:false}>fa-check-circle<{else}>fa-circle<{/if}>"></i></div>
            <{$module.name}></a>
    <{/if}>
<{/foreach}>
<!-- end module menu loop -->
