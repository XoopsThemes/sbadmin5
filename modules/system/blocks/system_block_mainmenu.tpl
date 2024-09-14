<a class="nav-link<{if !$mainMenuSbadmin.nothome|default:false}> active<{/if}>" href="<{xoAppUrl ' '}>" title="<{$smarty.const.THEME_HOME}>">
    <div class="sb-nav-link-icon">&nbsp;<i class="fa fa-home"></i></div>&nbsp;<{$smarty.const.THEME_HOME}></a>
<!-- start module menu loop -->
<{foreach item=module from=$mainMenuSbadmin.modules name=module key=key1}>
    <{if $module.sublinks|default:false}>
        <a class="nav-link collapsed<{if $module.highlight|default:false}> active<{/if}>" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLevel1Layouts<{$key1}>" aria-expanded="false" aria-controls="collapseLevel1Layouts<{$key1}>">
            <div class="sb-nav-link-icon">
                <i class="fa <{if $module.highlight|default:false}>fa-check-circle<{else}>fa-cube<{/if}>"></i>
            </div>
            <{$module.name}>
            <div class="sb-sidenav-collapse-arrow"><i class="fa fa-angle-down"></i></div>
        </a>
        <div class="<{if $module.source|default:'Xoopsmain' == 'Modulemenu'}>collapse<{/if}><{if $module.source|default:'Xoopsmain' == 'Xoopsmain' && $module.highlight|default:false}> show<{/if}>" id="collapseLevel1Layouts<{$key1}>" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
            <nav class="sb-sidenav-menu-nested nav">
                <{foreach item=sublink from=$module.sublinks key=key2}>
                    <{if count($sublink.sublinks|default:[]) > 0}>
                        <a class="nav-link collapsed<{if $sublink.highlight|default:false}> active<{/if}>" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLevel2Layouts<{$key2}>" aria-expanded="false" aria-controls="collapseLevel2Layouts<{$key2}>">
                            <{if $sublink.icon|default:false}>
                                <div class="sb-nav-link-icon"><{$sublink.icon}></div>
                            <{/if}>
                            <{$sublink.name}>
                            <div class="sb-sidenav-collapse-arrow"><i class="fa fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="collapseLevel2Layouts<{$key2}>" aria-labelledby="headingtwo" data-bs-parent="#collapseLevel1Layouts<{$key1}>">
                            <nav class="sb-sidenav-menu-nested nav">
                                <{foreach item=sublink2 from=$sublink.sublinks}>
                                    <a class="nav-link" href="<{$sublink2.url}>" title="<{$sublink2.name}>">
                                        <{if $sublink2.icon|default:false}>
                                            <div class="sb-nav-link-icon"><{$sublink2.icon}></div>
                                        <{/if}>
                                        <{$sublink2.name}></a>
                                <{/foreach}>
                            </nav>
                        </div>
                    <{else}>
                        <a class="nav-link" href="<{$sublink.url}>" title="<{$sublink.name}>"><{$sublink.name}></a>
                    <{/if}>
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
