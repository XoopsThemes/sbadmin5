<?php
/*
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting source code
 * which is considered copyrighted (c) material of the original comment or credit authors.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

/**
 * @copyright    XOOPS Project https://xoops.org/
 * @license      GNU GPL 2.0 or later (https://www.gnu.org/licenses/gpl-2.0.html)
 * @package
 * @since
 * @author       XOOPS Development Team, Kazumi Ono (AKA onokazu)
 */

function sbadmin5_main_menu() {

    global $xoTheme, $xoopsModule, $xoopsUser;

    $block               = array();
    //$block['lang_home']  = _MB_SYSTEM_HOME;
    $block['lang_close'] = _CLOSE;
    $module_handler      = xoops_getHandler('module');
    $criteria            = new CriteriaCompo(new Criteria('hasmain', 1));
    $criteria->add(new Criteria('isactive', 1));
    $criteria->add(new Criteria('weight', 0, '>'));
    $modules            = $module_handler->getObjects($criteria, true);
    /** @var XoopsGroupPermHandler $moduleperm_handler */
    $moduleperm_handler = xoops_getHandler('groupperm');
    $groups             = is_object($xoopsUser) ? $xoopsUser->getGroups() : XOOPS_GROUP_ANONYMOUS;
    $read_allowed       = $moduleperm_handler->getItemIds('module_read', $groups);
    $block['modules'] = array();
    foreach (array_keys($modules) as $i) {
        if (in_array($i, $read_allowed)) {
            $block['modules'][$i]['name']      = $modules[$i]->getVar('name');
            $block['modules'][$i]['directory'] = $modules[$i]->getVar('dirname');
            $sublinks                          = $modules[$i]->subLink();
            if ((!empty($xoopsModule)) && ($i == $xoopsModule->getVar('mid'))) {
                $block['modules'][$i]['highlight'] = true;
                $block['nothome']                  = true;
            }
            if ((!empty($xoopsModule)) && ($i == $xoopsModule->getVar('mid'))) {
                $block['modules'][$i]['highlight'] = true;
                $block['nothome']                  = true;
            }
            if ((count($sublinks) > 0) && (!empty($xoopsModule))) {
                foreach ($sublinks as $sublink) {
                    $block['modules'][$i]['sublinks'][] = array(
                        'name' => $sublink['name'],
                        'url'  => XOOPS_URL . '/modules/' . $modules[$i]->getVar('dirname') . '/' . $sublink['url']);
                }
            } else {
                $block['modules'][$i]['sublinks'] = [];
            }
        }
    }

    $GLOBALS['xoopsTpl']->assign('mainMenuSbadmin', $block);

}
