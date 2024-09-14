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
 * @author       XOOPS Development Team, Kazumi Ono (AKA onokazu)
 */

function sbadmin5_main_menu() {
    /* this function creates by default
    - a list of all active modules and
    - a list of sublinks for current module
    this is the same what XOOPS does by default for the main menu block

    if there is a class Modulemenu is available in the module then this list of active modules/sublinks will be used instead
     */
    global $xoTheme, $xoopsModule, $xoopsUser;

    $block               = array();
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
            $moduleDirName = $modules[$i]->getVar('dirname');
            $block['modules'][$i]['name']      = $modules[$i]->getVar('name');
            $block['modules'][$i]['directory'] = $modules[$i]->getVar('dirname');
            $block['modules'][$i]['sublinks']  = [];
            if ((!empty($xoopsModule)) && ($i == $xoopsModule->getVar('mid'))) {
                $block['modules'][$i]['highlight'] = true;
                $block['nothome']                  = true;
            }
            if ((!empty($xoopsModule)) && ($i == $xoopsModule->getVar('mid'))) {
                $block['modules'][$i]['highlight'] = true;
                $block['nothome']                  = true;
            }
            // check whether class Modulemenu is available
            $ucfModulemenu = ucfirst($moduleDirName);
            $menuClass = "\\XoopsModules\\{$ucfModulemenu}\\Modulemenu";
            if (class_exists($menuClass)) {
                // use sublinks created by class Modulemenu
                $block['modules'][$i]['source'] = 'Modulemenu';
                $menuHandler = new $menuClass();
                $block['modules'][$i]['sublinks'] = $menuHandler->getMenuitemsSbadmin5();
            } else {
                // Fallback: use sublinks from xoops_version.php
                // sublinks from xoops_version.php are only available if the module is the current module
                $sublinks = $modules[$i]->subLink();
                $block['modules'][$i]['source'] = 'Xoopsmain';
                if ((count($sublinks) > 0) && (!empty($xoopsModule))) {
                    foreach ($sublinks as $sublink) {
                        $block['modules'][$i]['sublinks'][] = [
                            'name' => $sublink['name'],
                            'url'  => XOOPS_URL . '/modules/' . $modules[$i]->getVar('dirname') . '/' . $sublink['url'],
                            'icon' => '<i class="fa fa-check-circle"></i>'];
                    }
                }
            }
        }
    }

    $GLOBALS['xoopsTpl']->assign('mainMenuSbadmin', $block);

}
