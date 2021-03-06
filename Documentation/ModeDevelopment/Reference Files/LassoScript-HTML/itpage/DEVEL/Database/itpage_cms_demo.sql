/*
 Navicat MySQL Data Transfer

 Source Server         : Xserve3 itPage
 Source Server Version : 50067
 Source Host           : 97.65.136.220
 Source Database       : itpage_cms_demo

 Target Server Version : 50067
 File Encoding         : UTF-8

 Date: 08/25/2009 14:40:48 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `cms_content`
-- ----------------------------
DROP TABLE IF EXISTS `cms_content`;
CREATE TABLE `cms_content` (
  `ID` int(11) NOT NULL auto_increment,
  `HeirarchyID` varchar(11) NOT NULL default '',
  `PortfolioGroupID` int(11) default NULL,
  `GalleryGroupID` int(11) default NULL,
  `Headline` varchar(255) NOT NULL default '',
  `URLSlug` varchar(255) NOT NULL,
  `Subhead` varchar(200) NOT NULL default '',
  `Author` varchar(64) default '',
  `Text_1` text NOT NULL,
  `Text_2` text NOT NULL,
  `Price_1` varchar(12) NOT NULL default '',
  `Price_2` varchar(12) NOT NULL default '',
  `Image_Thumb` varchar(96) NOT NULL default '',
  `Image_Med` varchar(96) NOT NULL default '',
  `Image_Large` varchar(96) NOT NULL default '',
  `Image_Caption` varchar(255) NOT NULL default '',
  `Image_Title` varchar(64) NOT NULL default '',
  `Media_File` varchar(96) NOT NULL,
  `URL` varchar(128) NOT NULL default '',
  `Active` char(1) NOT NULL default '',
  `PageKeywords` text,
  `PageAuthor` varchar(255) default '',
  `PageDescription` text,
  `PageCopyright` varchar(255) default '',
  `PageTitle` text,
  `PageTemplate` varchar(128) NOT NULL default '',
  `PageStylesheet` varchar(128) NOT NULL,
  `Testimonial` varchar(12) NOT NULL default '',
  `Story` varchar(12) NOT NULL,
  `DateCreated` date NOT NULL default '0000-00-00',
  `DateModified` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`ID`),
  KEY `Headline` (`Headline`),
  KEY `Subhead` (`Subhead`),
  KEY `Image_Thumb` (`Image_Thumb`),
  KEY `Image_Med` (`Image_Med`),
  KEY `Image_Large` (`Image_Large`),
  KEY `Image_Caption` (`Image_Caption`),
  KEY `Image_Title` (`Image_Title`),
  KEY `URL` (`URL`),
  KEY `Date_Created` (`DateCreated`),
  KEY `Date_Modified` (`DateModified`),
  KEY `Active` (`Active`),
  KEY `HeirarchyID` (`HeirarchyID`),
  KEY `URLSlug` (`URLSlug`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_content`
-- ----------------------------
INSERT INTO `cms_content` VALUES ('1', '24', '5', '0', 'itPage Content Management System', 'itpage content management system', 'Welcome to the Demo Site', '', '<p>This is the demo site for itPage, a Content Management System (CMS) for the Lasso Professional language.Whether you are an end-user looking for an economical CMS solution, or a developer looking for a CMS that is easy enough for end-users, you will find that itPage has something to offer.</p>\r\n<h3>Try it Out</h3>\r\n<p><strong>IMPORTANT: </strong>The data for this site resets every day! You can play around with the admin and see how it all works, see your changes appear immediately. But at the end of the day, we\'ll wipe the data and start over.</p>\r\n<p><strong>Admin Login</strong><br />\r\nURL: <a href=\"http://demo.itpage.ws/admin/\" target=\"_blank\">http://demo.itpage.ws/admin/</a><br />\r\nID: Super<br />\r\nPW: Demo</p>\r\n<h3>How does it Work?</h3>\r\n<p>Go to the <a href=\"http://demo.itpage.ws/documentation\" target=\"_blank\">Documentation</a> page for screencasts and documentation.</p>\r\n<p>&nbsp;</p>', '', '', '', '', '', '', '', '', '', '', 'Y', '', '', '', '', '', 'Template2_SplitL_pf5Top.html', '', '', '', '2005-08-02', '2009-08-25'), ('2', '2', '4', '0', 'Features Overview', 'features overview', '', '', '<h3>Front-End Features</h3>\r\n<ul>\r\n    <li>Galleries</li>\r\n    <li>Testimonials</li>\r\n    <li>Multiple templates</li>\r\n    <li>Clean URLs</li>\r\n    <li>Flexible navigation options</li>\r\n    <li>Rotating stories</li>\r\n    <li>Built-in content search -- nothing to code</li>\r\n    <li>Robust image support, including native .swf and automatic conversion of video to Flash video</li>\r\n    <li>User-management system</li>\r\n    <li>CSS-driven means pages load quickly</li>\r\n    <li>jQuery used for several elegant features</li>\r\n</ul>', '<h3>Back-End Features</h3>\r\n<ul>\r\n    <li>Easily activate/deactivate pages or entire heirarchy nodes</li>\r\n    <li>Create, edit, and store page content</li>\r\n    <li>Modify site heirarchy using nested-set architecture</li>\r\n    <li>Image library contains images for the entire site - photos, PDFs, even video</li>\r\n    <li>Password reset feature for users</li>\r\n    <li>SEO tailoring on site-wide or per-page basis</li>\r\n    <li>Recommended for use with MySQL database</li>\r\n    <li>Image conversion hooks directly into ImageMagick using PassThru</li>\r\n    <li>Extensible</li>\r\n    <li>MySQL datasource</li>\r\n    <li>Site custom tags are automatically loaded</li>\r\n    <li>Tooltips provide admin help</li>\r\n    <li>Site-wide or page-specific tailoring of meta information (keywords, description, author)</li>\r\n</ul>', '', '', '', '', '', '', '', '', '', 'Y', '', '', '', '', '', '', '', '', '', '2009-08-17', '2009-08-24'), ('3', '2', '0', '1', 'Gallery Demo', 'gallery demo', '', '', '<p>The itPage Gallery displayed above features an elegant method to display photographs, artwork, or other visuals.</p>\r\n<ul>\r\n    <li>Show as many images in a gallery as you like</li>\r\n    <li>Elegant fade-in/fade-out motion</li>\r\n    <li>Gallery pages can be separately styled from the rest of the site</li>\r\n    <li>Any image in the Image Library can be used</li>\r\n    <li>Great for graphic artists, photographers, painters, craftspeople</li>\r\n    <li>No special authoring</li>\r\n</ul>\r\n<p>Any page on your site can have a gallery!</p>\r\n<p>The gallery is built on jQuery\'s <a href=\"http://monc.se/kitchen/146/galleria-a-javascript-image-gallery\">Galleria</a> plugin.</p>', '', '', '', '', '', '', '', '', '', '', 'Y', '', '', '', '', '', 'Template_Gallery.html', '', '', '', '2009-08-17', '2009-08-24'), ('4', '96', '5', '0', 'Documentation and Training Resources', 'documentation and training resources', '', '', '<h2>For Users</h2>\r\n<p>There is documentation on features, administrative functions, operate itPage.</p>\r\n<h3><strong>Documentation</strong></h3>\r\n<p>Information on administrative functions of itPage can be found on the <a href=\"http://www.itpage.ws/wiki/\">itPage Wiki</a> site.</p>\r\n<h3>Screencasts</h3>\r\n<p>Tutorial screencasts help with administrative functions of itPage can be found on the <a href=\"http://www.itpage.ws/wiki/\">itPage Wiki</a> site. Look for the category &quot;Tutorials&quot; in the left navpanel.</p>\r\n<h2>For Developers</h2>\r\n<h3><strong>Codebase</strong></h3>\r\n<p>The itPage codebase is hosted as a Subversion project on <a href=\"http://code.google.com/p/itpage/\">Google Code</a>. The project maintainer is <a href=\"mailto:support@iterate.ws?subject=Referral%20from%20itPage%20Site\">Eric Landmann</a>, of <a href=\"http://www.iterate.ws/\">Iterate LLC</a>, Madison, Wisconsin, USA.</p>\r\n<h3><strong>Documentation</strong></h3>\r\n<p>Information on system requirements, database setup, support utilities, itPage codebase installation, administrative functions, terminology, and operation of itPage can be found on the <a href=\"http://www.itpage.ws/wiki/\">itPage Wiki</a> site.</p>\r\n<h3>Talk List</h3>\r\n<p>There is a talk list for itPage managed through Google Groups. You can sign up for this list at the <a href=\"http://groups.google.com/group/itPageTalk\">itPageTalk Google Groups</a> site. The talk list is primarily for developers, although users may subscribe if interested.</p>\r\n<h2>Paid Support</h2>\r\n<p>Besides the publicly-available resources, there is the option of paid tech support offered by the project maintainer (<a href=\"mailto:support@iterate.ws?subject=itPage%20Support%20Inquiry\">Eric Landmann</a>). Contact him directly.</p>', '', '', '', '', 'GeekWorkstation_7i4.jpg', '', '', '', '', '', 'Y', '', '', '', '', '', '', '', '', '', '2009-08-23', '2009-08-25'), ('5', '25', '0', '0', 'itPage License and Warranty Information', 'itpage license and warranty information', '', '', '<h2>Warranty</h2>\r\n<p>There is no warranty for itPage code, either express or implied. The use of the itPage codebase is solely at your own risk.</p>\r\n<h2>License</h2>\r\n<p>itPage is provided under the open-source <a href=\"http://creativecommons.org/licenses/by/3.0/\">Creative Commons Attribution</a> license. See that page for details. A condition of this license is that you provide attribution. A link on a site running itPage back to the <a href=\"http://www.itpage.ws/\">itPage site</a> will be considered acceptable.</p>\r\n<h2>Lasso Professional</h2>\r\n<p>Lasso(TM), LassoScript, Lasso Professional, Lasso Studio, and related terms are trademarks of <a href=\"http://www.lassosoft.com/Company/index.lasso\">LassoSoft, LLC</a>. Lasso&nbsp; Professional is a commercial middleware product offered by Lassosoft. Iterate LLC is not affiliated with LassoSoft. For more information on LassoSoft, please <a href=\"http://www.lassosoft.com/Company/Contact/index.lasso\">contact them</a> directly.</p>', '', '', '', '', 'cc_y74.jpg', '', '', '', '', '', 'Y', '', '', '', '', '', '', '', '', '', '2009-08-23', '2009-08-25'), ('6', '71', '1', '0', 'About itPage', 'about itpage', '', '', '<h2>History</h2>\r\n<p>itPage has been under evolution since November 2004, starting with an initial posting on <a href=\"http://www.lassoforge.com/\">LassoForge</a> as <a href=\"http://www.lassoforge.com/projects.lasso?PR=17\">&quot;Easy CMS&quot;</a>. This was the start of the codebase that eventually became itPage.</p>\r\n<h2>Maintainer</h2>\r\n<p>The project maintainer is <a href=\"mailto:support@iterate.ws?subject=Referral%20from%20itPage%20Site\">Eric Landmann</a>, of <a href=\"http://www.iterate.ws/\">Iterate LLC</a>, Madison, Wisconsin, USA. The codebase is under active development. Go to the <a href=\"http://code.google.com/p/itpage/\">Google Code</a> site to see project history.</p>\r\n<h2>Contributors and Credits</h2>\r\n<p>itPage has benefited from the robust, supportive community of developers working in <a href=\"http://www.lassosoft.com/\">Lasso Professional</a>. Some of those developers who have contributed indirectly to this effort through their public contributions on <a href=\"http://www.tagswap.net/\">tagswap.net</a> and <a href=\"http://www.listsearch.com/Lasso/\">LassoTalk</a> include: Bil Corry, Johan S&ouml;lve, Jason Huck, Greg Willits, Steffan Cline, Brian Loomis, Marc Pope, Jim Van Heule, Rich Fortnum, Seth Ganahl, Tami Williams, Alex Pilson, Chris Corwin, G&ouml;ran T&ouml;rnquist, Ke Carlton, Steve Piercy, Jono Guthrie, Jess Landmann, Pier Kuipers, John May, Fletcher Sandbeck, Adam Randall, and Wade Maxfield.</p>', '', '', '', '', 'EasyCMSonLF_B91.jpg', '', 'itPage originally debuted in 2004 as EasyCMS.', '', '', '', 'Y', '', '', '', '', '', 'Template2_SplitL_pf5Bot.html', '', '', '', '2009-08-23', '2009-08-25');

-- ----------------------------
--  Table structure for `cms_errors`
-- ----------------------------
DROP TABLE IF EXISTS `cms_errors`;
CREATE TABLE `cms_errors` (
  `ID` bigint(20) NOT NULL auto_increment,
  `Code` int(255) NOT NULL default '0',
  `Title` varchar(128) character set latin1 NOT NULL default '',
  `Message` varchar(255) character set latin1 NOT NULL default '',
  `Attrib` varchar(4) character set latin1 NOT NULL default '',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_errors`
-- ----------------------------
INSERT INTO `cms_errors` VALUES ('1', '1001', 'Add Successful', 'The record was successfully added.', 'Pos'), ('2', '1002', 'Add Failed', 'The add failed. The error was: <form_input>.', 'Neg'), ('3', '1003', 'Required Information Missing', 'The value entered for <b><form_input></b> cannot be blank. Please enter valid information and submit again.', 'Neg'), ('4', '1011', 'Update Successful', 'The database was successfully updated.', 'Pos'), ('5', '1012', 'Update Failed', 'The update failed. The error was: <form_input>.', 'Neg'), ('6', '1021', 'Delete Successful', 'The record was successfully deleted.', 'Pos'), ('7', '1022', 'Delete Failed', 'The delete failed. The error was: <form_input>.', 'Neg'), ('8', '2000', 'No Records Found', 'Sorry, no records were found with that search criteria.', 'Neg'), ('9', '3001', 'E-mail Sent', 'The e-mail was successfully sent.', 'Pos'), ('10', '3002', 'E-mail Failed', 'The e-mail failed. The error was: <form_input>.', 'Neg'), ('11', '3003', 'E-mail Format Error', 'The e-mail address submitted is not formed correctly (name@domain.com). Please re-submit.', 'Neg'), ('12', '6001', 'Login Successful', 'You have successfully logged in.', 'Pos'), ('13', '6002', 'Login Error', 'The access information you entered does not match our records. Please check it and try again.', 'Neg'), ('14', '6003', 'Session Expired', 'Sorry, your session has expired. Please log in again.', 'Neg'), ('15', '6004', 'Access Restricted', 'This is an administrator-only function.', 'Neg'), ('16', '7000', 'Maintenance Routine Successful', 'The maintenance routine was successfully run.', 'Pos'), ('17', '7001', 'Maintenance Routine Failed', 'The requested maintenance routine failed.', 'Neg'), ('18', '7011', 'Export Successful', '<form_input> records were successfully copied.', 'Pos'), ('19', '7012', 'Export Failed', 'The export failed. The error was: <form_input>.', 'Neg'), ('20', '9000', 'ERROR', 'Some type of other error occurred.', 'Neg'), ('21', '9001', 'ERROR', '<form_input>', 'Neg'), ('23', '9002', 'Database Error', 'There was an error with the database [Error 9002].', 'Neg'), ('24', '5026', 'Duplicate User', 'A user with that name already exists. Please choose a different name.', 'Neg'), ('31', '6005', 'Logout Successful', 'You have been successfully logged-out of the system.', 'Pos'), ('33', '1014', 'System Settings Updated', 'The system settings were successfully updated.', 'Pos'), ('34', '1023', 'Delete Successful', '<form_input> was successfully deleted.', 'Pos'), ('35', '7100', 'Upload Successful', 'The file upload was successful.', 'Pos'), ('36', '7101', 'Upload Failed', 'The file upload failed. The error was: <form_input>.', 'Neg'), ('37', '7102', 'File Upload Error', 'Sorry, your file was not uploaded because it is an invalid file type.', 'Neg'), ('39', '1102', 'E-mail Validation Failed', 'The e-mail address appears to be malformed, please correct it.', 'Neg'), ('40', '1004', 'Add Successful', 'The <form_input> record was successfully added. ', 'Pos'), ('41', '1013', 'Update Successful', 'The update to <form_input> was successful.', 'Pos'), ('42', '5060', 'Illegal Filetype', 'The uploaded filetype cannot be converted. Please upload a different filetype.', 'Neg'), ('44', '3004', 'Support Request Sent', 'The support request e-mail was successfully sent.', 'Pos'), ('45', '5021', 'Invalid Zip Code', 'Sorry, that is not a valid zip code. Please try again.', 'Neg'), ('46', '5019', 'No Locations Found', 'Sorry, there are no Steep & Brew locations closer than 60 miles to the zip code you entered.', 'Neg'), ('47', '5061', 'File Not Found', 'The requested file was not found on the server.', 'Neg'), ('48', '7023', 'Media Error', 'There was a problem with the media file. The error was: <form_input> Try a different file.', 'Neg'), ('49', '7024', 'Image Not Used', 'The image is not used anywhere in the website.', 'Neg');

-- ----------------------------
--  Table structure for `cms_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `cms_gallery`;
CREATE TABLE `cms_gallery` (
  `gallery_id` int(11) NOT NULL auto_increment,
  `gallery_title` varchar(64) collate utf8_bin NOT NULL default '',
  `gallery_caption` text collate utf8_bin NOT NULL,
  `gallery_URL` varchar(255) collate utf8_bin NOT NULL default '',
  `gallery_thumb` varchar(96) collate utf8_bin NOT NULL default '',
  `Active` char(1) collate utf8_bin NOT NULL default '',
  `DateModified` date NOT NULL,
  PRIMARY KEY  (`gallery_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `cms_gallery`
-- ----------------------------
INSERT INTO `cms_gallery` VALUES ('1', '', 0x43757a636f20746f776e207371756172652e, '', '1CuzcoSquare_d8e.jpg', 'Y', '2009-06-22'), ('2', '', 0x5275696e73206f662053616373617977616d616e2c2061626f76652043757a636f2c20506572752e, '', '2SacsaywamanA_ex8.jpg', 'Y', '2009-07-08'), ('4', '', 0x416e6f7468657220736d616c6c2c207665727920616e6369656e74207275696e732061626f76652043757a636f2e, '', '4AboveCuzco_WTv.jpg', 'Y', '2009-06-22'), ('5', '', 0x5465727261636564206669656c6473206869676820696e20612076616c6c65792e, '', '5Terraces_kkk.jpg', 'Y', '2009-06-22'), ('6', '', 0x416d617a696e672073746f6e65776f726b206f6620616e20496e63616e2077616c6c2e, '', '6Wall_d4D.jpg', 'Y', '2009-06-22'), ('7', '', 0x466c75746520706c617965722070657263686564206f6e20746f70206f6620616e20616e6369656e742073746f6e652077616c6c2e, '', '7FlutePlayer_87V.jpg', 'Y', '2009-06-22'), ('8', '', 0x4d6f7265207465727261636564206669656c6473206f6e207374656570207465727261696e2e, '', '8Terraces2_7YH.jpg', 'Y', '2009-06-22'), ('9', '', 0x53746f6e6520686f75736573207065726368206f6e20612073746565702068696c6c736964652e, '', '9RockHouses_Ajw.jpg', 'Y', '2009-06-22'), ('10', '', 0x456e7472616e6365207369676e20666f72204d61636368752050696363687520776f726c6420686572697461676520736974652e, '', '10MachuPicchuSign_Xen.jpg', 'Y', '2009-06-22'), ('11', '', 0x5465727261636573206174204d61636875205069636368752e, '', '11MachuPicchuTerraces_FDQ.jpg', 'Y', '2009-06-22'), ('12', '', 0x4c6f6f6b696e6720646f776e206f6e2074686520736164646c6520686967682061626f766520746865207269766572207768657265204d61636875205069636368752072657374732e, '', '12MachuPicchuHaze_hFi.jpg', 'Y', '2009-06-22'), ('13', '', 0x50657275205261696c2070756c6c696e6720696e746f2041677561732043616c69656e7465732e, '', '14AguasCalientePeruRail_rfm.jpg', 'Y', '2009-08-17'), ('14', '', '', '', '5Terraces_kkk.jpg', 'Y', '2009-08-20');

-- ----------------------------
--  Table structure for `cms_gallerygroups`
-- ----------------------------
DROP TABLE IF EXISTS `cms_gallerygroups`;
CREATE TABLE `cms_gallerygroups` (
  `gg_groupid` int(11) NOT NULL auto_increment,
  `gg_name` varchar(128) collate utf8_bin NOT NULL default '',
  `gg_text` text collate utf8_bin NOT NULL,
  `Active` char(1) collate utf8_bin NOT NULL default '',
  `DateCreated` date NOT NULL,
  `DateModified` date NOT NULL,
  PRIMARY KEY  (`gg_groupid`),
  KEY `gg_groupid` (`gg_groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `cms_gallerygroups`
-- ----------------------------
INSERT INTO `cms_gallerygroups` VALUES ('1', 'Peruvian Ruins and Imagery Gallery', 0x3c703e416e6369656e74207275696e7320616e642061206c6974746c6520626974206f66206d6f756e7461696e207363656e6572792066726f6d20506572752e3c2f703e, 'Y', '2009-06-22', '2009-06-22'), ('2', 'test group 1', 0x3c703e736f6d65206465736372697074697665207465787420686572653c2f703e, 'Y', '2009-08-20', '2009-08-20');

-- ----------------------------
--  Table structure for `cms_gg2gallery`
-- ----------------------------
DROP TABLE IF EXISTS `cms_gg2gallery`;
CREATE TABLE `cms_gg2gallery` (
  `ID` int(11) NOT NULL auto_increment,
  `gg_groupid` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `gg_groupid` (`gg_groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `cms_gg2gallery`
-- ----------------------------
INSERT INTO `cms_gg2gallery` VALUES ('2', '1', '1'), ('3', '1', '2'), ('4', '1', '4'), ('5', '1', '5'), ('6', '1', '6'), ('7', '1', '7'), ('8', '1', '8'), ('9', '1', '9'), ('10', '1', '10'), ('11', '1', '11'), ('12', '1', '12'), ('13', '1', '13');

-- ----------------------------
--  Table structure for `cms_heirarchy`
-- ----------------------------
DROP TABLE IF EXISTS `cms_heirarchy`;
CREATE TABLE `cms_heirarchy` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `HeirarchySlug` varchar(255) NOT NULL,
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `status` int(2) NOT NULL default '1',
  `uniqueSeed` varchar(255) NOT NULL default '',
  `Active` char(1) default 'Y',
  `Userprivs_PrivID` tinyint(4) NOT NULL default '0',
  `DateModified` timestamp NULL default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_heirarchy`
-- ----------------------------
INSERT INTO `cms_heirarchy` VALUES ('2', 'Features', 'features', '3', '4', '1', '42AA0AC3188372375ETRX10790ED', 'Y', '0', '2009-08-17 10:41:44'), ('24', 'Home', 'home', '1', '2', '1', '4CC9977D18fa335BC6mSgy86A6E9', 'Y', '0', null), ('25', 'License', 'license', '7', '8', '1', '4CC9977D18fa335C36wqXY86D650', 'Y', '0', '2009-08-23 15:45:08'), ('71', 'About', 'about', '9', '10', '1', '42AA0AC40f49025687sGm33ABEB3', 'Y', '0', '2009-08-16 12:01:36'), ('96', 'Documentation', 'Documentation', '5', '6', '1', '631078FE13ec91D743kyt1C33669', 'Y', '0', '2009-08-16 12:06:43');

-- ----------------------------
--  Table structure for `cms_pg2portfolio`
-- ----------------------------
DROP TABLE IF EXISTS `cms_pg2portfolio`;
CREATE TABLE `cms_pg2portfolio` (
  `ID` int(11) NOT NULL auto_increment,
  `pg_groupid` int(11) NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `pg_groupid` (`pg_groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `cms_pg2portfolio`
-- ----------------------------
INSERT INTO `cms_pg2portfolio` VALUES ('23', '4', '11'), ('22', '4', '10'), ('3', '2', '4'), ('4', '2', '5'), ('5', '2', '6'), ('6', '2', '7'), ('7', '2', '8'), ('8', '2', '9'), ('24', '4', '14'), ('21', '3', '15'), ('20', '3', '14'), ('19', '3', '13'), ('18', '3', '12'), ('17', '3', '11'), ('16', '3', '10'), ('25', '4', '15'), ('26', '4', '16'), ('49', '5', '33'), ('48', '5', '19'), ('47', '5', '18'), ('30', '6', '20'), ('31', '6', '21'), ('32', '6', '22'), ('33', '6', '23'), ('34', '6', '24'), ('35', '6', '25'), ('36', '6', '26'), ('37', '6', '27'), ('38', '6', '28'), ('39', '6', '29'), ('40', '6', '30'), ('41', '6', '31'), ('46', '5', '17'), ('50', '1', '33'), ('51', '1', '35'), ('52', '1', '36');

-- ----------------------------
--  Table structure for `cms_portfolio`
-- ----------------------------
DROP TABLE IF EXISTS `cms_portfolio`;
CREATE TABLE `cms_portfolio` (
  `portfolio_id` int(11) NOT NULL auto_increment,
  `portfolio_title` varchar(64) collate utf8_bin NOT NULL default '',
  `portfolio_caption` text collate utf8_bin NOT NULL,
  `portfolio_URL` varchar(255) collate utf8_bin NOT NULL default '',
  `portfolio_thumb` varchar(96) collate utf8_bin NOT NULL default '',
  `Active` char(1) collate utf8_bin NOT NULL default '',
  `DateModified` date NOT NULL,
  PRIMARY KEY  (`portfolio_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `cms_portfolio`
-- ----------------------------
INSERT INTO `cms_portfolio` VALUES ('17', '', 0x69745061676520697320686f7374656420617320612070726f6a656374206f6e20476f6f676c6520436f64652e, '', 'GoogleCode_hD3.jpg', 'Y', '2009-08-24'), ('4', '', 0x526f636b20686f75736573206f6e20612068696c6c7369646520686967682061626f766520746865205361637265642056616c6c65792e, '', '9RockHouses_Ajw.jpg', 'Y', '2009-08-23'), ('5', '', 0x4c6f6f6b696e6720646f776e206f6e207465727261636564206669656c64732e, '', '8Terraces2_7YH.jpg', 'Y', '2009-08-23'), ('6', '', 0x5465727261636564206669656c6473206f6e20766572792073746565702c20726f636b792068696c6c736964652e, '', '11MachuPicchuTerraces_FDQ.jpg', 'Y', '2009-08-23'), ('7', '', 0x4c6f6f6b696e6720646f776e206f6e20746865204d616368752050696363687520736974652066726f6d20487561796e61205069636368752e, '', '12MachuPicchuHaze_hFi.jpg', 'Y', '2009-08-23'), ('8', '', 0x50657275205261696c2070756c6c696e6720696e746f2041677561732043616c69656e7465732e, '', '14AguasCalientePeruRail_rfm.jpg', 'Y', '2009-08-23'), ('9', '', 0x546865206d61696e20746f776e2073717561726520696e2043757a636f2c20506572752e, '', '1CuzcoSquare_d8e.jpg', 'Y', '2009-08-23'), ('18', '', 0x546865726520697320612074616c6b206c697374207468726f75676820476f6f676c652047726f7570732e, '', 'GoogleGroups_m7e.jpg', 'Y', '2009-08-24'), ('19', '', 0x446f63756d656e746174696f6e206973206f6e20746865206974506167652057696b692e, '', 'Wiki8_09_eZH.jpg', 'Y', '2009-08-24'), ('35', '', 0x4e696365206c6f676f2c206875683f, '', 'itPage-Vert-Logo-200_yUo.jpg', 'Y', '2009-08-25'), ('36', '', 0x6974506167652075736573204d7953514c2c2077686963682069732074686520776f726c642773206d6f737420706f70756c6172206f70656e2d736f757263652064617461626173652e, '', 'powered-by-mysql-167x86_aoy.jpg', 'Y', '2009-08-25'), ('33', '', 0x69745061676520697320706f7765726564206279204c6173736f2050726f66657373696f6e616c2e, 'http://www.lassosoft.com/', 'LassoSoft_MiniLogo_White_hmB.jpg', 'Y', '2009-08-24');

-- ----------------------------
--  Table structure for `cms_portfoliogroups`
-- ----------------------------
DROP TABLE IF EXISTS `cms_portfoliogroups`;
CREATE TABLE `cms_portfoliogroups` (
  `pg_groupid` int(11) NOT NULL auto_increment,
  `pg_name` varchar(128) collate utf8_bin NOT NULL default '',
  `Active` char(1) collate utf8_bin NOT NULL default '',
  `DateCreated` date NOT NULL,
  `DateModified` date NOT NULL,
  PRIMARY KEY  (`pg_groupid`),
  KEY `pg_groupid` (`pg_groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `cms_portfoliogroups`
-- ----------------------------
INSERT INTO `cms_portfoliogroups` VALUES ('1', 'Logos Portfolio Group', 'Y', '2009-08-17', '2009-08-17'), ('2', 'Peru Photos PG', 'Y', '2009-08-23', '2009-08-23'), ('5', 'Documentation PG', 'Y', '2009-08-24', '2009-08-24');

-- ----------------------------
--  Table structure for `cms_questions`
-- ----------------------------
DROP TABLE IF EXISTS `cms_questions`;
CREATE TABLE `cms_questions` (
  `ID` bigint(20) NOT NULL auto_increment,
  `Question_ID` varchar(64) NOT NULL default '',
  `Question_Text` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `Question_ID` (`Question_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_questions`
-- ----------------------------
INSERT INTO `cms_questions` VALUES ('1', '1', 'What is your mother\'s maiden name?'), ('2', '2', 'Where were you born?'), ('3', '3', 'What are the last 6 digits of your driver\'s license?'), ('4', '4', 'What is your private answer?'), ('5', '5', 'Where is your secret hiding place?'), ('6', '6', 'Who is your mentor?'), ('7', '7', 'What is your favorite vacation?'), ('8', '8', 'What is your father\'s hobby?'), ('9', '9', 'What is your sibling\'s nickname?'), ('10', '10', 'What is the name of your favorite movie?'), ('11', '11', 'What was your first car?'), ('12', '12', 'Where was your first date?'), ('13', '13', 'What is your favorite place?');

-- ----------------------------
--  Table structure for `cms_states`
-- ----------------------------
DROP TABLE IF EXISTS `cms_states`;
CREATE TABLE `cms_states` (
  `ID` bigint(20) NOT NULL auto_increment,
  `State_Abbrev` char(2) NOT NULL default '',
  `State_Name` char(24) NOT NULL default '',
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_states`
-- ----------------------------
INSERT INTO `cms_states` VALUES ('1', 'AL', 'Alabama'), ('2', 'AK', 'Alaska'), ('3', 'AZ', 'Arizona'), ('4', 'AR', 'Arkansas'), ('5', 'CA', 'California'), ('6', 'CO', 'Colorado'), ('7', 'CT', 'Connecticut'), ('8', 'DE', 'Delaware'), ('9', 'DC', 'District of Columbia'), ('10', 'FL', 'Florida'), ('11', 'GA', 'Georgia'), ('12', 'HI', 'Hawaii'), ('13', 'ID', 'Idaho'), ('14', 'IL', 'Illinois'), ('15', 'IN', 'Indiana'), ('16', 'IA', 'Iowa'), ('17', 'KS', 'Kansas'), ('18', 'KY', 'Kentucky'), ('19', 'LA', 'Louisiana'), ('20', 'ME', 'Maine'), ('21', 'MD', 'Maryland'), ('22', 'MA', 'Massachusetts'), ('23', 'MI', 'Michigan'), ('24', 'MN', 'Minnesota'), ('25', 'MS', 'Mississippi'), ('26', 'MO', 'Missouri'), ('27', 'MT', 'Montana'), ('28', 'NE', 'Nebraska'), ('29', 'NV', 'Nevada'), ('30', 'NH', 'New Hampshire'), ('31', 'NJ', 'New Jersey'), ('32', 'NM', 'New Mexico'), ('33', 'NY', 'New York'), ('34', 'NC', 'North Carolina'), ('35', 'ND', 'North Dakota'), ('36', 'OH', 'Ohio'), ('37', 'OK', 'Oklahoma'), ('38', 'OR', 'Oregon'), ('39', 'PA', 'Pennsylvania'), ('40', 'RI', 'Rhode Island'), ('41', 'SC', 'South Carolina'), ('42', 'SD', 'South Dakota'), ('43', 'TN', 'Tennessee'), ('44', 'TX', 'Texas'), ('45', 'UT', 'Utah'), ('46', 'VT', 'Vermont'), ('47', 'VA', 'Virginia'), ('48', 'WA', 'Washington'), ('49', 'WV', 'West Virginia'), ('50', 'WI', 'Wisconsin'), ('51', 'WY', 'Wyoming'), ('52', 'AB', 'Alberta'), ('53', 'BC', 'British Columbia'), ('54', 'LB', 'Labrador'), ('55', 'MB', 'Manitoba'), ('56', 'NB', 'New Brunswick'), ('57', 'NF', 'Newfoundland'), ('58', 'NT', 'Northwest Territories'), ('59', 'NS', 'Nova Scotia'), ('60', 'ON', 'Ontario'), ('61', 'PE', 'Prince Edward Island'), ('62', 'QU', 'Quebec'), ('63', 'SK', 'Saskatchewan'), ('64', 'YT', 'Yukon Territory'), ('65', 'ZZ', 'Other (Non-US or Canada)');

-- ----------------------------
--  Table structure for `cms_stories`
-- ----------------------------
DROP TABLE IF EXISTS `cms_stories`;
CREATE TABLE `cms_stories` (
  `id` int(11) NOT NULL auto_increment,
  `Story_Head` varchar(255) NOT NULL default '',
  `Story_Comment` text NOT NULL,
  `Story_Name` varchar(255) NOT NULL default '',
  `Story_Thumb` varchar(96) NOT NULL default '',
  `Active` char(1) NOT NULL default 'N',
  `DateCreated` date NOT NULL,
  `DateModified` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `cms_sys`
-- ----------------------------
DROP TABLE IF EXISTS `cms_sys`;
CREATE TABLE `cms_sys` (
  `id` int(11) NOT NULL default '0',
  `sys_domain` varchar(128) NOT NULL default '',
  `sys_SMTP` varchar(128) NOT NULL default '',
  `sys_PostmasterEmail` varchar(128) NOT NULL default '',
  `sys_AdminEmail` varchar(128) NOT NULL default '',
  `sys_AuthUsername` varchar(255) NOT NULL default '',
  `sys_AuthPassword` varchar(255) NOT NULL default '',
  `sys_WebserverRoot` varchar(128) NOT NULL default '',
  `sys_PathToIM` varchar(128) NOT NULL default '',
  `sys_PathToffmpeg` varchar(128) NOT NULL,
  `sys_PathToswftools` varchar(128) NOT NULL,
  `sys_PathToPassThru` varchar(128) NOT NULL,
  `sys_Keywords` text,
  `sys_Expires` varchar(32) NOT NULL default '',
  `sys_Revisit` varchar(32) NOT NULL default '',
  `sys_Robots` varchar(255) NOT NULL default '',
  `sys_Author` varchar(255) NOT NULL default '',
  `sys_Description` text NOT NULL,
  `sys_Copyright` varchar(255) NOT NULL default '',
  `sys_Title` text NOT NULL,
  `sys_Language` varchar(8) NOT NULL default '',
  `sys_UseFavIcon` char(1) NOT NULL default '',
  `sys_DefaultTemplate` varchar(128) NOT NULL default '',
  `sys_DefaultStylesheet` varchar(128) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_sys`
-- ----------------------------
INSERT INTO `cms_sys` VALUES ('1', 'demo.itpage.ws', '', '', '', '', 'f64eb866a9933b21', '/Library/Webserver/Documents/demo.itpage.ws', '//ImageMagick-6.5.0/bin/', '///usr/local/bin/ffmpeg', '///opt/local/bin/swfdump', '///Applications/Lasso Professional 8/LassoModules/EC_PassThru.dylib', 'content management system, CMS, Lasso Professional, open-source, image library, image gallery, testimonial, portfolio, nestedset heirarchy, ffmpeg, swftools, jquery slidermenu, jquery tooltip', '10 days', '10 days', 'all', 'Eric Landmann', 'itPage is an open-source Content Management System (CMS) for Lasso Professional.', '&copy; 2009 Iterate LLC', 'itPage &ndash; Open-Source CMS for Lasso Professional', 'en', 'N', 'Template2_1col_LNav_pf5Top_Story.html', 'cms.css');

-- ----------------------------
--  Table structure for `cms_testimonials`
-- ----------------------------
DROP TABLE IF EXISTS `cms_testimonials`;
CREATE TABLE `cms_testimonials` (
  `id` int(11) NOT NULL auto_increment,
  `Testimonial_Head` varchar(255) NOT NULL default '',
  `Testimonial_Comment` text NOT NULL,
  `Testimonial_Name` varchar(255) NOT NULL default '',
  `Testimonial_Thumb` varchar(96) NOT NULL default '',
  `Active` char(1) NOT NULL default 'N',
  `DateCreated` date NOT NULL,
  `DateModified` date NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_testimonials`
-- ----------------------------
INSERT INTO `cms_testimonials` VALUES ('1', '', 'itPage is the coolest Lasso-based CMS out there!', '-- Anonymous Developer', '', 'Y', '2009-08-17', '2009-08-23');

-- ----------------------------
--  Table structure for `cms_userprivs`
-- ----------------------------
DROP TABLE IF EXISTS `cms_userprivs`;
CREATE TABLE `cms_userprivs` (
  `Userprivs_PrivID` tinyint(4) NOT NULL default '0',
  `Userprivs_Priv` varchar(12) NOT NULL default '',
  PRIMARY KEY  (`Userprivs_PrivID`),
  KEY `Userprivs_PrivID` (`Userprivs_PrivID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_userprivs`
-- ----------------------------
INSERT INTO `cms_userprivs` VALUES ('1', 'Superadmin'), ('2', 'Admin'), ('3', 'Sales Direct'), ('4', 'Cafe Owner');

-- ----------------------------
--  Table structure for `cms_users`
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `ID` bigint(20) NOT NULL auto_increment,
  `User_ID` varchar(28) NOT NULL default '0',
  `Userprivs_PrivID` varchar(28) NOT NULL default '0',
  `User_LoginID` varchar(64) character set utf8 collate utf8_bin NOT NULL default '',
  `User_LoginPW` tinyblob NOT NULL,
  `User_FName` varchar(32) NOT NULL default '',
  `User_LName` varchar(32) NOT NULL default '',
  `User_Company` varchar(64) NOT NULL default '',
  `User_Dept` varchar(32) NOT NULL default '',
  `User_Address1` varchar(64) NOT NULL default '',
  `User_Address2` varchar(64) NOT NULL default '',
  `User_City` varchar(32) NOT NULL default '',
  `States_StateAbbrev` varchar(2) NOT NULL default '',
  `User_Zip` varchar(12) NOT NULL default '',
  `User_Country` varchar(32) NOT NULL default '',
  `User_Email` varchar(64) NOT NULL default '',
  `User_Notify` char(1) NOT NULL default '',
  `User_Chat` varchar(32) NOT NULL default '',
  `User_WorkPhone` varchar(32) NOT NULL default '',
  `User_HomePhone` varchar(32) NOT NULL default '',
  `User_CellPhone` varchar(32) NOT NULL default '',
  `User_Fax` varchar(32) NOT NULL default '',
  `User_Website` varchar(64) NOT NULL default '',
  `User_QuestionID` varchar(4) NOT NULL default '',
  `User_Answer` varchar(128) default NULL,
  `User_Comments` text,
  `User_Active` char(1) NOT NULL default '',
  `User_LastAccess` date default NULL,
  `DateCreated` date NOT NULL default '0000-00-00',
  `DateModified` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`ID`),
  KEY `User_LoginID` (`User_LoginID`),
  KEY `User_ID` (`User_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `cms_users`
-- ----------------------------
INSERT INTO `cms_users` VALUES ('1', '2F0a33X', '1', 'elandmann', 0x3634646537363337356336626162326564393137376161646639396366303336, 'Eric', 'Landmann', 'Landmann InterActive', '', '1423 S Park St', '', 'Madison', 'WI', '53715', 'USA', 'elandmann@landmanninteractive.com', 'Y', '', '608-257-1558', '608-271-5271', '608-235-4714', '607-299-1558', 'www.landmanninteractive.com', '4', 'something', '', 'Y', '2009-08-25', '2005-03-12', '2008-04-30'), ('2', 'KoeWWPwpvimw', '1', 'Super', 0x6630323538623636383536383463313133626164393464393162386661303261, 'Demo', 'Superadmin', '', '', '', '', '', '', '', '', 'somebody@somewhere.com', 'Y', '', '', '', '', '', '', '2', 'Madison', '', 'Y', '0000-00-00', '2009-08-17', '2009-08-25');

