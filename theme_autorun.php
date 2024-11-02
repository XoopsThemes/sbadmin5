<?php
xoops_load('XoopsFormRendererBootstrap5');
XoopsFormRenderer::getInstance()->set(new XoopsFormRendererBootstrap5());

require_once('theme_blocks.php');
sbadmin5_main_menu();
sbadmin5_dashboard();

