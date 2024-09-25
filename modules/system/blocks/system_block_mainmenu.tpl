<a class="nav-link<{if !$mainMenuSbadmin.nothome|default:false}> active<{/if}>" href="<{xoAppUrl ' '}>" title="<{$smarty.const.THEME_HOME}>">
    <div class="sb-nav-link-icon">&nbsp;<i class="fa fa-home"></i></div>&nbsp;<{$smarty.const.THEME_HOME}></a>
<!-- start module menu loop -->
<{foreach item=module from=$mainMenuSbadmin.modules name=module key=key0}>
    <{if $module.sublinks|default:false}>
        <a class="nav-link collapsed<{if $module.highlight|default:false}> active<{/if}>" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLevel0Layouts<{$key0}>" aria-expanded="false" aria-controls="collapseLevel0Layouts<{$key0}>">
            <div class="sb-nav-link-icon">
                <i class="fa <{if $module.highlight|default:false}>fa-check-circle<{else}>fa-cube<{/if}>"></i>
            </div>
            <{$module.name}>
            <div class="sb-sidenav-collapse-arrow"><i class="fa fa-angle-down"></i></div>
        </a>
        <div class="<{if $module.source|default:'Xoopsmain' == 'Modulemenu'}>collapse<{/if}><{if $module.highlight|default:false}> show<{/if}>" id="collapseLevel0Layouts<{$key0}>" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
            <nav class="sb-sidenav-menu-nested nav">
                <{foreach item=sublink1 from=$module.sublinks key=key1}>
                    <{if count($sublink1.sublinks|default:[]) > 0}>
                        <a class="nav-link collapsed<{if $sublink1.highlight|default:false}> active<{/if}>" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLevel1Layouts<{$key1}>" aria-expanded="false" aria-controls="collapseLevel1Layouts<{$key1}>">
                            <{if $sublink1.icon|default:false}>
                                <div class="sb-nav-link-icon"><{$sublink1.icon}></div>
                            <{/if}>
                            <{$sublink1.name}>
                            <div class="sb-sidenav-collapse-arrow"><i class="fa fa-angle-down"></i></div>
                        </a>
                        <div class="collapse<{if $sublink1.highlight|default:false}> show<{/if}>" id="collapseLevel1Layouts<{$key1}>" aria-labelledby="headingtwo" data-bs-parent="#collapseLevel0Layouts<{$key0}>">
                            <nav class="sb-sidenav-menu-nested nav">
                                <{foreach item=sublink2 from=$sublink1.sublinks key=key2}>
                                    <{if count($sublink2.sublinks|default:[]) > 0}>
                                        <a class="nav-link collapsed<{if $sublink2.highlight|default:false}> active<{/if}>" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLevel2Layouts<{$key2}>" aria-expanded="false" aria-controls="collapseLevel2Layouts<{$key2}>">
                                            <{if $sublink2.icon|default:false}>
                                                <div class="sb-nav-link-icon"><{$sublink2.icon}></div>
                                            <{/if}>
                                            <{$sublink2.name}>
                                            <div class="sb-sidenav-collapse-arrow"><i class="fa fa-angle-down"></i></div>
                                        </a>
                                        <div class="collapse<{if $sublink2.highlight|default:false}> show<{/if}>" id="collapseLevel2Layouts<{$key2}>" aria-labelledby="headingthree" data-bs-parent="#collapseLevel1Layouts<{$key1}>">
                                            <nav class="sb-sidenav-menu-nested nav">
                                                <{foreach item=sublink3 from=$sublink2.sublinks key=key3}>
                                                    <{if count($sublink3.sublinks|default:[]) > 0}>
                                                        <a class="nav-link collapsed<{if $sublink3.highlight|default:false}> active<{/if}>" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLevel3Layouts<{$key3}>" aria-expanded="false" aria-controls="collapseLevel3Layouts<{$key3}>">
                                                            <{if $sublink3.icon|default:false}>
                                                                <div class="sb-nav-link-icon"><{$sublink3.icon}></div>
                                                            <{/if}>
                                                            <{$sublink3.name}>
                                                            <div class="sb-sidenav-collapse-arrow"><i class="fa fa-angle-down"></i></div>
                                                        </a>
                                                        <div class="collapse<{if $sublink3.highlight|default:false}> show<{/if}>" id="collapseLevel3Layouts<{$key3}>" aria-labelledby="headingfour" data-bs-parent="#collapseLevel2Layouts<{$key2}>">
                                                            <nav class="sb-sidenav-menu-nested nav">
                                                                <{foreach item=sublink4 from=$sublink3.sublinks}>
                                                                    <a class="nav-link" href="<{$sublink4.url}>" title="<{$sublink4.name}>">
                                                                        <{if $sublink4.icon|default:false}>
                                                                            <div class="sb-nav-link-icon"><{$sublink4.icon}></div>
                                                                        <{/if}>
                                                                        <{$sublink4.name}></a>
                                                                <{/foreach}>
                                                            </nav>
                                                        </div>
                                                    <{else}>
                                                        <a class="nav-link<{if $sublink3.highlight|default:false}> active<{/if}>" href="<{$sublink3.url}>" title="<{$sublink3.name}>">
                                                            <{if $sublink3.icon|default:false}>
                                                                <div class="sb-nav-link-icon"><{$sublink3.icon}></div>
                                                            <{/if}>
                                                            <{$sublink3.name}></a>
                                                    <{/if}>
                                                <{/foreach}>
                                            </nav>
                                        </div>
                                    <{else}>
                                        <a class="nav-link<{if $sublink2.highlight|default:false}> active<{/if}>" href="<{$sublink2.url}>" title="<{$sublink2.name}>">
                                            <{if $sublink2.icon|default:false}>
                                                <div class="sb-nav-link-icon"><{$sublink2.icon}></div>
                                            <{/if}>
                                            <{$sublink2.name}></a>
                                    <{/if}>
                                <{/foreach}>
                            </nav>
                        </div>
                    <{else}>
                        <a class="nav-link<{if $sublink1.highlight|default:false}> active<{/if}>" href="<{$sublink1.url}>" title="<{$sublink1.name}>">
                            <{if $sublink1.icon|default:false}>
                                <div class="sb-nav-link-icon"><{$sublink1.icon}></div>
                            <{/if}>
                            <{$sublink1.name}></a>
                    <{/if}>
                <{/foreach}>
            </nav>
        </div>
    <{else}>
        <a class="nav-link<{if $module.highlight|default:false}> active<{/if}>" href="<{$xoops_url}>/modules/<{$module.directory}>/" title="<{$module.name}>">
            <div class="sb-nav-link-icon">
            <{if $module.icon|default:false}>
                <{$module.icon}>
            <{else}>
                <i class="fa <{if $module.highlight|default:false}>fa-check-circle<{else}>fa-circle<{/if}>"></i>
            <{/if}>
            </div>
            <{$module.name}></a>
    <{/if}>
<{/foreach}>
<!-- end module menu loop -->
