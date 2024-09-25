<?php

namespace XoopsModules\Mymodulename;

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
 * @license      GNU GPL 2 or later (http://www.gnu.org/licenses/gpl-2.0.html)
 * @author       Goffy - XOOPS Development Team
 */
//\defined('\XOOPS_ROOT_PATH') || die('Restricted access');

/**
 * Class Modulemenu
 */
class Modulemenu
{

    /** function to create a list of sublinks
     *
     * @return array
     */
    public function getMenuitemsSbadmin5()
    {
        $moduleDirName = \basename(\dirname(__DIR__));
        $subcount      = 1;
        $pathname      = \XOOPS_ROOT_PATH . '/modules/' . $moduleDirName . '/';
        $urlModule     = \XOOPS_URL . '/modules/' . $moduleDirName . '/';

        require_once $pathname . 'include/common.php';
        $helper = \XoopsModules\Mymodulename\Helper::getInstance();

        //load necessary language files from this module
        $helper->loadLanguage('modinfo');

        // start creation of link list as array
        $items = [];
        $items[$subcount]['name']  = \_MI_MYMODULENAME_SMNAME1;
        $items[$subcount]['url'] =  $urlModule . 'index.php';

        $subcount++;
        $items[$subcount]['name']  = \_MI_MYMODULENAME_SMNAME2;
        $items[$subcount]['url'] =  $urlModule . 'index.php';

        $subcount++;
        $items[$subcount]['name']  = \_MI_MYMODULENAME_SMNAME3;
        $items[$subcount]['url'] =  $urlModule . 'index.php';
        // end creation of link list as array

        return $items;

    }


}
