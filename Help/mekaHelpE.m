;GARCIA google translated from JPN document mekaHelp.m
;Put file in MarbleCLAY\Help\
; for more info: https://united3dartists.com/forum/viewtopic.php?t=6424
!Index1 '<FONT SIZE="+0" ><B>%s</B></FONT>'
!Index2 '<FONT SIZE="+0" >%s</FONT>'
!ShortCut MarbleCLAY.ini SHORTCUT
!ActionString Resource\English.str

!Def title '<FONT SIZE="4" COLOR="#0"> MarbleCLAY </FONT>v0.2.16 beta5.2'
!Def Footer '<BR><BR><CENTER><TABLE FRAME=BOX CELLSPACING=0 COLS=1 RULES=GROUPS BORDER=1><COLGROUP><COL WIDTH=500></COLGROUP><TBODY><TR><TD><FONT SIZE="2">@prev@|@next@</FONT><CENTER>@page@</CENTER></TD></TR></TBODY><TBODY><TR><TD BGCOLOR="#94BD5E"><FONT SIZE="1" COLOR="#FFFFFF">Copyright(C)1998-2003 TakeshiMaeda / ESCARGOT Visualwares</FONT></TBODY></TABLE></CENTER></FONT></FONT></BODY></HTML>'
!Def Header '<HTML><BODY BGCOLOR="white" TEXT="black" LINK="#606080" VLINK="#707090" ALINK="red"><FONT FACE="Arial" SIZE="2"><CENTER><TABLE FRAME=BOX CELLSPACING=0 COLS=2 RULES=GROUPS BORDER=1><COLGROUP><COL WIDTH=800><COL WIDTH=400></COLGROUP><TBODY><TR><TD BGCOLOR="#94BD5E"><FONT SIZE="2" COLOR="#FFFFFF">ESCARGOT Visualwares</FONT></TD><TD BGCOLOR="#94BD5E"><FONT SIZE="1" COLOR="#FFFFFF">3D Polygon Modeller</FONT></TD></TR></TBODY><TBODY><TR><TD>@title@</TD><TD><FONT SIZE="2">@prev@|@next@</FONT></TD></TR></TBODY></TABLE></CENTER>'

!Def S2 '<FONT SIZE="2"><B>'
!Def FE '</B></FONT>'
!Def no_sub '<IMG SRC="../HelpImg/no_sub.gif" BORDER=0>'
!Def sub_open '<IMG SRC="../HelpImg/sub_open.gif" BORDER=0>'
!Def sub_close '<IMG SRC="../HelpImg/sub_close.gif" BORDER=0>'
!Def sub_item '<IMG SRC="../HelpImg/sub_item.gif" BORDER=0>'
!Def page dummy
!Def prev Prev
!Def next Next

[Help.html
#<HTML>
#<HEAD>
# <META NAME="GENERATOR" CONTENT="MakeAHelp for MarbleCLAY">
# <META HTTP-EQUIV="Content-Type" CONTENT="text/html">
# <TITLE>MarbleCLAY Help</TITLE>
#</HEAD>
#<FRAMESET COLS="250,77%">
#<FRAME SRC="Navi.html" NAME="frame1" SCROLLING=YES>
!MainFrame Help1.html AutoJump.html
#<NOFRAMES>
#<BODY>
#MarbleCLAY Help<BR><BR>
#<A HREF="navi.html">INDEX</A>
#</BODY>
#</NOFRAMES>
#</FRAMESET>
#</HTML>


[Help1.html
##<BODY BGCOLOR="white" TEXT="black" LINK="olive" VLINK="green" ALINK="red">
##<FONT SIZE="1" FACE="MS UI Gothic">
##<FONT SIZE="1" FACE="Arial">
##<FONT COLOR="#608030">ESCARGOT Visualwares<BR></FONT>
##<FONT SIZE="+1" FACE="Lucida console" COLOR="#60A030"> MarbleCLAY</FONT><BR>
##<BR>
##<BR>
##<BR>


!main
<!--
#<BODY BGCOLOR="white" TEXT="black" LINK="olive" VLINK="green" ALINK="red">
#<FONT COLOR="#608030">ESCARGOT Visualwares Application<BR></FONT>
@title@$
#<FONT SIZE="+3" FACE="Lucida console" COLOR="#60A030"> MarbleCLAY</FONT>v0.1.15 (beta5)<BR>
@next@
-->
<HR>
<B>About this translation and Game Development plugins for MarbleCLAY.</B>$
$
New MarbleCLAY download & updates here:  <A HREF="http://escargot.la.coocan.jp/MCLFrm.html"  target="_blank">http://escargot.la.coocan.jp/MCLFrm.html</A>$
$

<B>Why MarbleCLAY?</B>$
$
(+)  Simple, fast and customizable UI.$
$
(+)  Easy LOD creation with low polygon and subpatch modeling. $
$
(+)  Simple rigging and posing of models, auto skinning bones.$
$
(+)  Simple face colouring (no vertex colouring support) and texturing.$
$
(+)  Easy scripting and plugin system.$
$
$
Fundamentally, MarbleClay is a polygon 3D modeller with subpatch (it was translated as spline) and posing features, it also has a limited sculpting tool called %ClayTool%.
MarbleClay adds to the perspective view and adds modelling functionality called %3DWorkPlanes%.$
This document is a google translation of the latest Japanese document with corrections and notes. It is a fan translation and has been updated with a lot of "trial and error" testing to understand the meaning of the translation, so there may be misunderstandings and errors.$ 
$
Also has plugins related to game development and PlayStation formats. It will be maintained and updated here: <a href="https://united3dartists.com/forum/viewtopic.php?f=4&t=6424&p=63994#p63994"  target="_blank"/>https://united3dartists.com/forum/viewtopic.php?f=4&t=6424&p=63994#p63994  </a>
$
Watch: <A HREF="https://www.youtube.com/watch?v=n8dA-1p2Rjc" target="_blank">YouTube: MarbleCLAY v2 (unreleased) smart guideline function demo (modified version)</A>.$
$
For MarbleCLAY videos see: <A HREF="https://www.youtube.com/playlist?list=PL7PuatOJN9g3UuLApfipLB09zn8p5NzqR" target="_blank">YouTube (a)Net.Yaroze - MarbleCLAY playlist</A>.$
$
<BR>
<B>Quick general tips.</B>$
$
Recommend using the vertices manipulator (m key) axis widget when moving verctices to begin with.
$
MarbleClay operates in this 3D coordinate space:$
+Z = Up (model's top)$
+X = Forward (model's front)$
+Y = Right (model's left)$
$
It's recommended to use MarbleClay in that way.
$
The keyboard shortcuts for changing views are:$
F = Front (when using mirror mode, this is the side view)$
E = Top$
D = Right (when using mirror mode, this is the front view)$
Holding shift will result in the opposite direction, ie Shift E will look from the bottom, up.$
$
The freeze feature:
A freeze is a baked clone of either a subpatch (sub/divided) mesh (%FreezeSpline%) or posed (%FreezeParts%) object cloned into a new object with (freeze) appened name.$
Note: Both the new (baked/freezed) clone and original object are still visible and editable and you will have to manage the visibility and editability of each.$
$
$
$
<B>NOTE: If you are using MarbleClay in the <A HREF="https://archive.org/details/net-yaroze-dev-winxp-vm-2022" target="_blank">Net Yaroze Development Windows XP Virtual Machine</a>, it's strongly recommended to replace your iexplore web brower to <A HREF="http://mypal-browser.org" target="_blank"> Mypal </a>.</B>$
Install Mypal:$
Delete C:\WINDOWS\system32\dllcache\iexplore.exe, You will be asked for the winXP cdrom, reject it. Extract the Mypal zip files to C:\Program Files\Internet Explorer then rename or delete iexplore.exe and lastly rename or copy mypal.exe to iexplore.exe.$
$
$<CENTER>
The following MarbleClay images are by:  <A HREF="https://united3dartists.com/forum/search.php?author_id=478&sr=posts" target="_blank">DarkScythe</A>.
$
@#DarkScythe/marbleclay1.jpg@ @#DarkScythe/marbleclay2.jpg@ @#DarkScythe/marbleclay3.jpg@ @#DarkScythe/marbleclay4.jpg@ @#DarkScythe/marbleclay5.jpg@ @#DarkScythe/marbleclay6.jpg@ @#DarkScythe/marbleclay7.jpg@ @#DarkScythe/marbleclay8.jpg@  @#DarkScythe/marbleclay9.jpg@  @#DarkScythe/marbleclay10.jpg@  @#DarkScythe/marbleclay11.jpg@  @#DarkScythe/marbleclay12.jpg@
</CENTER>
$
$
<HR>
$
@Header
\Intro 1.Introduction
$
<CENTER>
@#overview.JPG@
</CENTER>


:Overview Features:
  (+)  Reliable selection of vertices by %HighlightElement% of vertices/edges/polygons at the cursor position. $
  (+)  Reliable vertex selection using %3DLoope%, which zooms in on the area around the cursor. $
  (+)  Adding D (Dummy) component for operation space to UV information, UV editing that can be operated in 3D. $
  (+)  Symmetrical figure editing that can be specified for any polygon. (%SelectiveMirror% feature)$
  (+)  Easy viewpoint operation using %QuickArea%$
  (+)  %QuickTool%: Efficient operation by customizing the Shift+Ctrl+Alt key combination shortcut$
  (+)  Modeling in the form of drawing lines. %FacetTool%$
  (+)  %ChangeSplineSurf% for quads and triangles. (The continuity between %SplineSurf% is not so good, but I don't think it will be a problem because it will be %FreezeSpline% in the end.)$
  (+)  %vertexCollision% Collision detection with other polygons when editing vertices. $
  (+)  Compatible with SmartScroll devices from Wacom Co., Ltd.$
  (+)  <A HREF="http://www2.tomato.ne.jp/~leo/rok/rrk/"  target="_blank">RRK algorithm</A> is adopted, and the vertex is in the desired position in a few steps. can now be moved. [beta5.2e]$
  (+)  Addition of plug-in function and script function [5.4]$
  (+)  Customize right-click behavior [5.5]$
  (+)  %SimpleBone% Function$
$
$
:Introduction About
$
MarbleCLAY is freeware. The author has a monolithic personality, and I can't find the merit of sharing so far, so the possibility of sharing is low. $
(Even if it should be shared, we plan to allow those who have registered at this time to use it for free.)$
$
In particular, we will always give it away for free if you provide us with an idea or report a bug.
However, I am not happy about requests such as "I want exactly the same function as other software"
I apologize for not thinking that. If possible, "I want a function that is useful for doing ~".
If you can specify what you specifically want the function to do, such as "it's inconvenient to do", here
I find it rewarding because there is room for ideas. $
$
MarbleCLAY is copyrighted by Takeshi Maeda. The creator.
The author is not responsible for any consequential damages.$
Always back up important files, Please open the backup after creating it. $
$
MarbleCLAY does not guarantee virus-free. Always scan using anti-virus software. (Please use the latest anti-virus software) $
$
The latest version of MarbleCLAY can be <A HREF="http://escargot.la.coocan.jp/MarbleCLAY/MarbleCLAYb64.zip">downloaded</a> from the author's <A HREF="http://escargot.la.coocan.jp/MCLFrm.html" target=_blank>website</A>. $
#Please email bug reports to <A HREF="mailto:esv@nifty.com">Author (esv@nifty.com)</A>.
$
$
You may think that it is too old fashioned to model with patch based surfaces, symmetrical figure editing, etc. However, with the ease of vertex selection, it's just as good as any other.
I am proud that I am not defeated by (larger?) software. If you think you have been deceived, please use it. ->%layout%$
$
$
:Registration
This version is free and open to the public, but due to the nature of the beta test, there is a limit to saving in MCL format (MarbleCLAY dedicated format) (up to 1 object with <FONT COLOR="#FF8080">10000</FONT> polygons). $
There are no restrictions on exporting in other formats or importing files, and there are no restrictions on other functions, so it can be used virtually unlimited. $
$
Beta 5.6 or later is <FONT COLOR="#FF8080">Released as a stable version</FONT>.$
If possible, don't register immediately after downloading, try creating a certain amount of objects and see if you find any bugs. Please try it. $
If you find a bug, please add the symptoms of the bug to the registration information below and submit a registration email. It doesn't matter if you don't know the conditions under which the bug occurs.
Since it is necessary information for development, even if it is a trivial bug, I would appreciate your cooperation. (Can be left blank if no bugs are found)$
$
v1 final stable is going to be unregistered. If you are hesitant about using buggy software, please wait for v1.0. $
$
$
Registration method: $

Please send an email with the following information to <A HREF="mailto:esv@nifty.com">esv@nifty.com</A>. $

We will get back to you and send you a key to unlock the MCL restrictions so you can easily save all your data you are working on.
It will be possible. $
(You don't have to fill in everything. Just as much as you can understand is fine)$
$
Subject: MarbleCLAY Registration $
$
1. OS used (eg WindowsXP home)$
2. Used CPU (e.g. AMD Athron 1.4GHz)$
3. Memory capacity (Example: 512MB)$
4. Video card (e.g. ATI RADEON 9700PRO)$
5. 3D software you are using (e.g. Carrara2) $
6. Internet Explorer version (IE6sp1)$
7. Where I learned about MarbleCLAY$
8. If the MarbleCLAY malfunctions, its symptoms and circumstances. (as detailed as possible)$
9. Request/Comment$
$
$
$
Registration is free. It may be shared in a future version (no plans at the moment), but development updates is possible for those who have registered.
Free for as long as it lasts. $
$
:ModifyHistory History
2004/11/29-2005/2/13: Beta 5.7 $
%Introduction%$
%Registration%$
%EdgeSel%$
%ObjectSel%$
%EditDelete%$
%EditDeleteEx%$
%BeltSel%,
%ExtrudeTool%$
%FaceFlowTool%,
%PartsMenu%$
%SimpleBone%$
%BoneDrawTool%$
%Manipulator%$
%Plugin%,
%StripMakePoly%$
%HighlightObject%$
%BevelExtrude%$
%Script%,
%MQOImporter%$
%MQOExporter%$
%UVEdit%,
%TestRenderRedQueen2%$

$
TO DO: $
%ChangeAttribute%$
%Gyakkou%$
%QuickToolR%$
%ObjWinDragDrop%
$
$
$
Next, %layout%
@Footer

$
<HR>
$
[] 

@Header
\Refer 2.Reference
$
:layout Layout
This section is a brief overview of the main user interface of the application.$
Click the link in the individual interface below for more detailed information. $

<B>Interface</B>
$
%lay_PersWay%$
%lay_XYWay%$
%lay_YZWay%$
%lay_XZWay%$
%lay_QuickArea%$
%lay_EditTools%$
%lay_ViewTools%$
%lay_QuickTool%$
%lay_SelectTools%$
%lay_SelectFilter%$
%lay_PreviewStyle%$
%lay_Property%$
%lay_Undo%$
%lay_Image%$
%lay_WaySplit%$
%lay_Status%$
%lay_PanelTray%$
%lay_MainMenu%$
$
<B>Views & Planes</B>
$
%WorkArea%$
%Pers_layout%$
%3Way_layout%$
%lay_PersWorkArea%$
%lay_PersQuickArea%$
%lay_PersMaximize%$
%lay_WorkPlaneXY%$
%lay_WorkPlaneYZ%$
%lay_WorkPlaneXZ%$
%lay_WorkPlanePoly%$
%lay_WorkPlaneScreen%$
%lay_WorkPlaneAuto%$
%lay_WorkPlaneGyakkou%$
%3DWorkPlanes%$
$
<B>WorkPlanes (Perspective View)</B>
$
%3DWorkPlanes%$
%WorkPlaneOffset%$
%SetWorkPlaneXY%$
%DrawPolyOnWorkPlane%$
%MoveOnWorkPlane%$
%MoveVerticalWorkPlane%$
%MoveOnWorkPlane2%$
%DrawPolyOnPoly% $
%SetWorkPlane_offset% $
%SetWorkPlane_tip%$
$
$
$

<HR>
$
|whole_layout Interface
@#layout.jpg@$
$
The figure above is a screenshot of the 4-view display mode after starting MarbleCLAY and ready for use with a new, blank file open.$
The 4 different views have many things in common:$$
1, All views are for Modeling and viewing, changing the view point is done by using the mouse or %QuickArea%. $$
$
2, Right clicking (without moving the mouse), will bring up the right click menu, to recenter view, group, show, hide objects etc.$$
3, While dragging an item, holding down Shift key will lock the movement to the item's original horizontal and vertical axis.$$
4, Holding down the left mouse button will move vertices while in any tool, ie %FacetTool%.$$
$
Details of each User Interface are described below. $
$
]lay_PersWay (1)Perspective_view
See %Pers_layout%$
Perspective projection of the object being edited.$
$
]lay_XYWay (2)XY_view
See %3Way_layout%$
Parallel projection of the object from the Z direction. $
$
]lay_YZWay (3)YZ_view
See %3Way_layout%$
Parallel projection of the object from the X direction. $
$
]lay_XZWay (4)XZ_view
See %3Way_layout%$
Parallel projection of the object from the Y direction. $
$
]lay_QuickArea (5)QuickArea
A view point manipulation method using a special function area that exists around the boarders of each view display.$
The %QuickArea% (boarder) is in red, but this area is not visible, it is used to manipulate the view, ie zooming, panning or rotating. $
$
This opition is most helpful for laptop mouse and/or tablet users.
$
]lay_EditTools (6)Edit_Toolbar
See %EditTools%$
@#tooloption.gif@@#movetool.gif@@#facetool.gif@@#pointtool.gif@@#polytool.gif@@#freehandtool.gif@@#knifetool.gif@@#claytool.gif@@#extrudetool.gif@@#rolltool.gif@@#scaletool.gif@
$
The Tool bar contains commonly used tools for creating and editing models, such as creating faces, edges, and rotations. $
Tool icons added by plug-in functions may be displayed on the toolbar. $
$
]lay_ViewTools (7)View_Toolbar
See %ViewTools% $
@#viewoption.gif@@#zoomin.gif@@#zoomout.gif@@#handtool.gif@@#zoomtool.gif@@#viewrolltool.gif@@#areazoom.gif@$
The View bar contains functions which change the view.
$
]lay_QuickTool (8)Quick_Toolbar
See %QuickTool%$
@#quicktooloption.gif@@#quickalt.gif@@#quickaltshift.gif@@#quickaltctrl.gif@@#quickctrlshift.gif@@#quickspace.gif@$
This tool bar allows you to set common actions to shortcut keys and combinations for Shift, Ctrl, Alt and Space keys.
If you set your frequently used tools to a short cut, work efficiency will increase. $
$
]lay_SelectTools (9)Select_Toolbar
See %SelectTools%$
@#seloption.gif@@#pointmode.gif@@#areamode.gif@@#magnetmode.gif@@#lassomode.gif@@#paintselmode.gif@$
The select toolbar gives you different ways of selecting faces, edges, vertices, etc. $
By default, changing to any selection tool, automatically changes the modeling tool to the move tool when clicking on 3D objects in the view. $
$
]lay_SelectFilter (10)Select_filter_bar
See %SelectFilter%$
@#filteroption.gif@@#pointsel.gif@@#edgesel.gif@@#facesel.gif@@#relsel.gif@$
The select filter toolbar lets you enable or disable the selection of faces, edges or vertices. $
Version 2.48 includes: back faces, relational(connected) elements, show selected or local manipulator.$
$
]lay_PreviewStyle (11)Preview_setting_bar
See %PreviewStyle%$
@#previewoption.gif@@#wire.gif@@#shadewire.gif@@#flatwire.gif@@#flat.gif@@#texture.gif@@#smooth.gif@@#shader.gif@@#opengl.gif@$
For the last used view display, change the view style. $
$
]lay_Property (12)Property_Bar
See %PropertyWindowBar%$
@#property.gif@$
Shortcut to open the %PropertyWindow%. $

$
]lay_Undo (13)Undo_bar
See %UndoBar%$
@#undo.gif@@#redo.gif@$
Undo and redo buttons.$
$
]lay_Image (14)image_bar
See %ImageBar%$
@#imgoption.gif@@#openimg.gif@@#copyimg.gif@@#raunchpaint.gif@@#pasteimg.gif@@#pentool.gif@$
Load image files, import and export images via the copy and paste buffer.$
$
]lay_WaySplit (15)Drawing_Split_Bar
See %WaySplitBar%$
@#splitoption.gif@@#personly.gif@@#4way.gif@@#2way1.gif@@#2way2.gif@@#2way1uv.gif@@#2way2uv.gif@@#4wayuv1.gif@@#4wayuv2.gif@@#customway.gif@$
Switch between view type, size and features.$
$
]lay_Status (16)Status_bar
See %StatusBar%$
  @#statusbar.gif@$
View mouse coordinates and number of selected items. $
$
]lay_PanelTray (17)Panel_tray
See %PanelTray%$ 
Optional docking trays located at the top, left, right and bottom of the %WorkArea%.
$
]lay_MainMenu (18)Window_Menus
See %MainMenu%$
@#mainmenu.gif@$
Application menu.

$
<HR>
$
| Views_&_Planes
$
%WorkArea%$
%3DWorkPlanes%$
%Pers_layout%$
%3Way_layout%$
%lay_PersWorkArea%$
%lay_PersQuickArea%$
%lay_PersMaximize%$
%lay_WorkPlaneXY%$
%lay_WorkPlaneYZ%$
%lay_WorkPlaneXZ%$
%lay_WorkPlanePoly%$
%lay_WorkPlaneScreen%$
%lay_WorkPlaneAuto%$
%lay_WorkPlaneGyakkou%$
$

$
<HR>
$
|WorkArea WorkArea
In MarbleClay the workarea is the space where the 3D views are displayed, surrounded by %QuickArea% and dockable %PanelTray% of different features.$
The workarea can toggle different views (perspective and 3way views) with different features (modelling and UV editing).$
Work areas can be displayed using different rendering techniques by changing the %PreviewStyle%.$
$ 
At the center of all views is the coordinate origin (X,Y,Z arrows), some coordinate arrows will not be shown if it's fully perpendicular (90 degrees) and facing towards the viewer.$
The square in in the center of all the views indicates the mirroring plane, which is always down the center of the X plane, see %AllMirror%, this is also hidden when fully perpendicular to the viewer.$
They both can be used to ground you to the 3D scene.$
$
MarbleClay operates in this 3D coordinate space:$
+Z = Up (model's top)$
+X = Forward (model's front)$
+Y = Right (model's left)$
$
For the reasons above, it's recommended to use MarbleClay in that way.
$
The keyboard shortcuts for changing views are:$
F = Front$
E = Top$
D = Right$
Holding shift will result in the opposite direction, ie Shift E will look from the bottom, up.$
$
MarbleClay has two different workarea views with distinct modelling methods: %3Way_layout% or %Pers_layout%, explained in now in detail. $
$
$


$
<HR>
$
|3Way_layout 3-Way_view
@#xyview.jpg@$
Note: The image above doesn't include the option to left click the word view, which allows you to change to a different view, see %lay_WaySplit%, ie XY, ZY, XZ, UVD(UV Display).$
$
Often called the 4-Way view, because of the four areas, in MarbleClay it is referred to as 3-way because the perspective view has it's own unique modelling technique, while it does have a Zbrush or Sculptris tool called %ClayTool% where you pull and push face normals and rotate around the model, it is not this.
$
MarbleClay offers 2 main modelling approaches, the traditional 4-way view, where the perspective view's main purpose is viewing, MarbleClay takes the perspective and adds modelling functionality in a single view.$
Watch: <A HREF="https://www.youtube.com/watch?v=n8dA-1p2Rjc" target="_blank">YouTube: MarbleCLAY v2 smart guideline function demo (modified version)</A>.$
$
MarbleClay calls the 3-way view or split view, a view that has a perspective locked to a 2D view, where all movements are limited to it's 2D plane, this includes both 3D modelling and UV unwrapping.$
$
In other word, the 3-way view, editing is performed from the perspective of viewing the object parallel to 2 axes only. $
A locked or set view (a non perspective view) is often used when it is difficult to grasp the positional relationship between objects.$
It can be used to remove detail not facing that view (ie culling back facing polygons) and to precisely move 3D objects along that view plane.$
There are no buttons to set the workplane in any of the 3-way views because the view is always parallel to the screen so all movement is locked to that view plane, thus a single workplane. $
$
These views operate strictly in a 2D view, where viewing and manipulation of 3D objects is performed in a 2D, fixed, flat plane, where the X,Y,Z coordinates are limited to horizontal (left or right) and vertical (up or down) movements.
This is the traditional way of modeling, because of it's simplicity, it's easier to understand, but can also be slower and less intuitive with peripherals like drawing tablets.

lay_3wayWorkArea lay_3wayQuickArea lay_3wayMaximize lay_3wayReverse  Pers_layout
$
]lay_3wayWorkArea (1)Work_areas 
As explained above, an area where you do your modeling or UV layout, 2D or 3D view.
$
]lay_3wayQuickArea (2)QuickArea
A view point manipulation method using a special function area that exists around the boarders of each view display.$
The %QuickArea% (boarder) is in red, but this area is not visible, it is used to manipulate the view, ie zooming, panning or rotating. $
$
]lay_3wayMaximize (3)Maximize/split_toggle
Maximize the work area and toggle between split 4-way views and full screen, single view. $
$
]lay_3wayReverse (4)Reverse_view
The current view is rotated by 180 degrees which allows for quick views reversal of left/right, top/bottom, front/back, ie: it turns XZ front view, to XZ back view. $
This can help by removing back facing polygons from the view.$
$
$
$

$
<HR>
$
|Pers_layout Perspective_view
@#pers.gif@$
Note: The image above doesn't include the option to left click the words of the current view (ie Perspective) which allows you to change to a different view, see %lay_WaySplit% ie XY, ZY, XZ, UVD(UV Display).$
$
An alternative to the traditional modelling in the 4-way (flat 2D) views, is to model solely in the perspective view.$
In a perspective view, you can edit while looking at the object from any direction using different %3DWorkPlanes%, which tells the program how to interpret user input in the 3D space.$
$
In the image above, buttons (4) to (10) are used to select how the workplane is to function. $
Because the perspective view's workplane is a relatively novel idea and important feature in MarbleClay, it will be further explained in more detail in %3DWorkPlanes%.
$
]lay_PersWorkArea (1)View/Work_area
As described in %WorkArea%, this is the viewing area. Above, displayed in perspective view, from an arbitrary view angle. $
$
]lay_PersQuickArea (2)QuickArea
A view point manipulation method using a special function area that exists around the boarders of each view display.$
The %QuickArea% (boarder) is in red, but this area is not visible, it is used to manipulate the view, ie zooming, panning or rotating. $
$
]lay_PersMaximize (3)Toggle_Full/Split_view
Toggles the view from Maximized (full screen) and the previous split view. $
$
]lay_WorkPlaneXY (4)XY_workplane
Set the XY plane.$
See %WorkPlaneIsXY%$
$
]lay_WorkPlaneYZ (5)YZ_workplane
Set the YZ plane.$
See %WorkPlaneIsYZ%$
$
]lay_WorkPlaneXZ (6)XZ_workplane
Set the XZ plane.$
See %WorkPlaneIsXZ%$
$
]lay_WorkPlanePoly (7)Select_polygon_workplane
Uses the selected polygon face as the plane parallel to work on. $
See %WorkPlaneIsPoly%$
$
]lay_WorkPlaneScreen (8)Turn_screen_into_work_plane
Sets the workplane parallel to the current screen. $
See also.%WorkPlaneIsScreen%, %3DWorkPlanes%$
$
]lay_WorkPlaneAuto (9)Automatically_select_work_plane
Set workplane to the most suitable plane from your point of view. $
See also. %AutoWorkPlane%$
$
]lay_WorkPlaneGyakkou (10)Vertex_movement_with_correction_(Gyakkou_algorithm)
Use the past viewpoint to move vertices, displaying a dotted line as a guide. $
See %GyakkouWorkPlane%$
$
$

$
<HR>
$
|3DWorkPlanes 3D_WorkPlanes
%WorkPlaneOffset%$
%SetWorkPlaneXY%$
%DrawPolyOnWorkPlane%$
%MoveOnWorkPlane%$
%MoveVerticalWorkPlane%$
%MoveOnWorkPlane2%$
%DrawPolyOnPoly% $
%SetWorkPlane_offset%$
%SetWorkPlane_tip%$
$
Notes:$
(1) Workplanes only applies when editing models in the 3D perspective view, it has no affect when only viewing in the 3D perspective view, or modeling in the 2D flat views from the 4-way views.$
$
(2) Workplanes are sometimes translated as: Drawing plane or reference surface.$
$
(3) Grid snapping, adjacent (along the offset) and axis object movements (Alt & Shift while holding the left mouse button) requires a selected workplane based on XY, YZ, XZ or automatically selecting between them. These do not work in the other workplane types, ie 3D (Gyakkou) perspective, screen or selected polygon parallel perspective workplanes. TODO: This maybe a bug?$
$
(4) The last WorkPlane option on the view port bar is %GyakkouWorkPlane% or perspective depth mode. It uses the workplane information from the previous selected item and it automatically calculates mouse movements in the 3D space.$
$
(5) This is probably the most complex part of this application, and it took me a while to understand, so I will be extra verbose, to help you understand it, because it really is a fundamental feature to understand. So here goes!$
$
(6) Please understand that the basic principles explained in %3Way_layout%.$
$
On the surface, MarbleClay looks like any other traditional 3D modeller with the 4 traditional view panels - front, side, top and 3D perspective views.$
MarbleClay calls the 3 locked views (front, side, top) the 3 way views to differentiate them from the 3D perspective view.$
As expected and explained above, the typical 3-way views (front, side, top) are locked to their respective 2D planes, and this is traditionally done to make 3D editing, simpler to work on, or in other words, we can say that the front, side and top views represent a </B>2D workplane</B> to create and edit 3D models.$
$
However, what makes Marbleclay unique (at least to me) in this regard is that, it extends these 2D workplanes from the front, side and top views and projects them over the 3D perspective view!$
$
In short, Marbleclay lets you model in the 3D perspective view as if you were still editing in the traditional front, side and top view, it does this by using the %3DWorkPlanes%.$ 
$
It can be thought of has a flatness plane or a strict 2D plane, because all operation in 3D perspective view (just like 3-way view) results are flat and without any depth, and this is what makes it confusing, looking at a 3D image in any view angle (perspective), but thinking in flat planes (and it's offset from the origin) can be very challenging at first.$
But it is the manipulation of the 3D perspective view angle and the flat workplanes simultaneously that results in a 3D object, and while this can be harder at first, it can also be a lot faster when learnt, then using the traditional 4-way views. $
$
]WorkPlaneOffset Workplane_Offset
$
A Workplane in marbleclay's 3D perspective view has two elements: The flat, 2D plane (as explained above) and an offset, which is the distance away from the origin from the adjacent selected workplane.
This is explained below using marbleclay's default orientation (see %WorkArea%):$
The XY workplane (horizontal plane) has a Z offset (height) from the origin.$
The YZ workplane (vertical plane) has an offset distance in X (horizontal distance).$
And the XZ workplane (typically parallel to screen plane) has the offset counted on the Y plane (towards or away, the screen in standard view).$
$
There is only one single 3D offset point at all times. It is set or updated to the same offset of an existing 3D item by left or right clicking it.$
All 3D dimensions (and therefor workplanes) will have their offset updated. This means that if you are working on a single plane, ie XY (horizontal plane) every click on a 3D item changes the offset for the other workplanes, ie YZ and XZ. $ 
$
Right click menu %ContextMenu%->%CursorAt% on a 3D object will move workplane offset, will update the offset, without braking the current tool's work flow. $
If the item is a line or a face the offset will be calculated to be in the middle.$
Original documentation suggest resetting the workplane offset back to the coordinate origin by %EditUnSel% and right clicking in an empty space in the view and selecting %CursorAt%, however in %lay_WorkPlaneAuto% it puts the offset there. TODO!$
$
$
Below is a quick explanation of workplanes and offset being used in the 3D perspective view.
$
$
]SetWorkPlaneXY XY_workplane_example
The figure below shows the state where the perspective view is set to XY workplane by clicking the workplane selection button (%lay_WorkPlaneXY% button - see "%Pers_layout%") or by the menu option: %EditMenu%->%WorkPlaneIsXY%. $
A dotted white grid is optionally visible to show the orientation of the workplane.$
Because XY was selected it is horizontal or landscape (remember +Z is up and -Z is down in Marbleclay).
$
@#work_xy.gif@$
$
$
]DrawPolyOnWorkPlane 3D_Perspective_Workplane_example
Below we use %FacetTool% to create a polygon object (see "%UseFacetTool%") in the perspective view using the XY workplane as stated above.$
Five clicks are placed around the 3D origin (the last one joins them), giving us a quad face. $
Please note, that the face was not created using perspected depth, so it is <b>NOT</b> angled up like a ramp with the +Z origin axis line in the middle.$
Remember that you are <B>only</B> looking through the 3D perspective view, you are not editing with any perspective depth.$ 
Instead, you are editing using the Top down view (the XY workplane) and because there is no Z offset, the offset is flat on the origin (a Z height of zero).$
However, when switching to different workplane, these vertices (having valid X & Y values) will affect their workplane's offsets.$
$
$
Another way to understand this, is knowing that the grid shows the workplane (horizontal XY) so the created polygon is actually lying flat on the dotted line grid - this can be confusing to see and understand, see above (%3DWorkPlanes%). $
Notice the square (%AllMirror%) around the origin clips out on the bottom of the square but not the top, implying the created face is in the middle, flat on the grid and not fully obscuring it, like an angled up ramp would, being in front.$
$
$
@#work_polydraw.gif@
$
$
]MoveOnWorkPlane Move_object_on_workplane
Change the tool to %MoveTool%, next left click and drag the object to move it parallel to the workplane. $
In other words, basically objects can only move parallel (up and down, left and right) to the workplane. $
Remember, we are operating on a 2D flat, workplane and all operations are locked to that plane, no different to operating using the corresponding 3-way view.
In the example below, the movement is lock to the XY workplane, which means its exactly the same as moving using the Top view.$
The created polygon is flat on the grid (it is not above it, and no Z height offset has been changed or set), and the movement is along (or parallel to) the workplane grid. $
$
@#work_movepoly.gif@
$
$
]MoveVerticalWorkPlane Move_object_vertically_from_workplane
When using the %MoveTool% (after you have clicked an object, and holding down the left mouse button), pressing the Alt key, while dragging the object left or right will move the object adjacent from the workplane, changing the offset value.$
Also, holding Shift after an item has been selected and being dragged limits the mouse movement to movement along the axis of the workplane.$
In the example below, the polygon is moved up and down the Z axis as shown. $
The Alt and Shift keys while dragging, only operates in 3D perspective view.$
$
@#work_moveaway.gif@
$
$
]MoveOnWorkPlane2 Move_object_off_workplane
As shown in the figure below, objects that are far from the workplane also move parallel while maintaining a constant offset from the workplane. $
In other words, dragging the same object, after it has been moved up from the workplane, still travels along the same workplane.$
$
@#work_movepoly2.gif@
$
$

]DrawPolyOnPoly Generate_a_surface_using_an_object_offset
$
If you use the vertices of the object that are away from the workplane to create a face with the "%UseExist%" method, a new face will be created at the same offset from the workplane as the last vertices you used. $
After that, when you create a face or line at another position, it will be generated at a position away from the workplane by the same offset. $
$
$Below, another polygon is created on the same workplane and offset away from the origin.$
$
@#work_polydraw2.gif@
$
You can also change the workplane offset (offset from the origin) via %ContextMenu%->%CursorAt% on the appropriate vertex, line or face. Or reset the workplane offset back to the coordinate origin by right clicking in an empty space in the view and selecting %CursorAt% at the origin, however in %lay_WorkPlaneAuto% it will use the click point.$
$
$
]SetWorkPlane_offset Offset_example
$
Quick example to see the offset. $
Firstly, endable the visible workplane via  View menu -> Toggle visible workplane, this will show the actual workplane and the offset, displayed as a green transparent rectangle. $
Next, hit the F key to change to the Front viewport, looking straight down the Y axis.$
Create a cube in the center origin, via Menu -> Mesh Modeling -> Make primitive object  -> %MeshPrimSquare%. $
Enter 5 levels up: $
$
@#eng_extra/tut_cube1.jpg@ 
$
Resulting stack of levels:$
$
@#eng_extra/tut_cube2.jpg@ 
$
Make sure the XY Workplane (%WorkPlaneIsXY%) is on.$
Now, rotating the view we can see the levels better:$
$
@#eng_extra/tut_cube3.jpg@ 
$
Left mouse click one of the top vertices, it will move the offset from zero (ie the grid) to the top, and therefor also the workplane:
$
@#eng_extra/tut_cube4.jpg@ 
$
$
$
]SetWorkPlane_tip Workplane_and_Offset_tips
$
If the combination of 3D perspective view and workplanes is hard to understand, here are a few tips to try:$
$
(+) Be aware of the coordinate origin and mirroring square to help you get your bearing of the 3D view, also look at the %StatusBar% to track 3D mouse movement (Model in X:forward Y:right Z:up); $
$
(+) Enable the %lay_WorkPlaneAuto% this will automatically change the workplane, depending on your view angle.$
$
(+) Using %lay_WorkPlaneAuto% or %lay_WorkPlanePoly%, enable the visible workplane via  View menu -> Toggle visible workplane, as explained above in %SetWorkPlane_offset%; $
$
(+) Turn on the 3D crosshairs via Option menu-> Configuration... -> DisplayOption1, tick the 2 Draw crosshair options, this will draw lines to the corresponding XYZ origin axis coordinates and show how the mouse pointer relates to the 3D view.$
$
(+) When modelling, avoid seeing incorrect 3D perspective, remember to think workplanes in terms of the %3Way_layout% (front, side and top locked views) and %WorkPlaneOffset%.$
$
(+) Use your existing model points or vertices to set the workplane offset, or by using %ContextMenu%->%CursorAt%.$
$
$
For more information on perspective and workplane, see: <A HREF="https://web.archive.org/web/20051104154352/http://www2.tomato.ne.jp/~leo/rok/rrk/rokkaku.html" target="_blank">Japanese documentation</A>.$
$
$
<A HREF="https://www.youtube.com/watch?v=bHfmVT29DQ4&list=PL7PuatOJN9g3UuLApfipLB09zn8p5NzqR&index=4" target="_blank">See 04 MarbleClay 3D Following a Blender tutorial poorly.</a>
$
$
$
Next, %MainMenu%
@Footer



$
<HR>
$
[] 

@Header
$
:MainMenu Window_Menus
%FileMenu%$
%EditMenu%$
%MeshMenu%$
%MirrorMenu%$
%PartsMenu%$
%ImageMenu%$
%ViewMenu%$
%OptionMenu%$
%WindowMenu%$
%HelpMenu%$
$
$

$
<HR>
$
|FileMenu File
%FileNew%$
%FileOpen%$
%FileSave%$
%FileSaveAs%$
%FileImport%$
%FileExport%$
%FileExit%$
$
$
]FileNew New &actNew
Create a new document. $
$
]FileOpen Open &actFileOpen
Open a document file. $
$
]FileSave Save &actFileSave
Overwrites and saves the document file being worked on. $
$
]FileSaveAs Save_as &actFileSaveAs
Save the current document file with a different file name. $
$
]FileImport Import &actImport
Import objects from 3D format files and add them to your document. $
$
]FileExport Export &actExport
Export selected objects to files in various types of 3D formats. $
$
]FileExit Exit &actExit
Exit MarbleCLAY. $
$
$

$
<HR>
$
|EditMenu Edit
%EditUndo%$
%Edit%$
%EditBreak%$
%EditCut%$
%EditCopy%$
%EditPaste%$
%EditDelete%$
%EditDeleteEx%$
%EditDeleteObject%$
%EditSubTool%$
%EditSubSelTool%$
%EditSubWorkplane%$
%EditSelAll%$
%EditUnSel%$
%EditSelInv%$
%EditSelSingle%$
%EditSelDopelA%$
%EditSel2Tri%$
%SelectTerminalEdge%$
%SelectSameMaterial%$
%SelectMaterialFaces%$
%EditSelToTemp%$
%EditTempToSel%$
$
$              
]EditUndo Undo &actUndo
Undo the previous operation. $
$
]Edit Redo Redo &actRedo
Re-does the undone action. $
$
]EditBreak Break &actBreak
Returns the currently selected tool to its previous state. $
For example, in %FacetTool% mode, if you hit %EditBreak% while drawing a line for the polygon, it will stop drawing points and lines for the current polygon allowing you to continue to create new polygons.$
Hitting the %EditBreak% key a two times, will always return back to the select/%MoveTool%. $
$
]EditCut Cut &actCut
Deletes the selected element after copying it to the clipboard. $
$
]EditCopy Copy &actCopy
Copies the selected element to the clipboard. $
$
]EditPaste Paste &actPaste
Pastes data from the clipboard into the active object.$
$
]EditDelete Delete &actDelete
The selected element is deleted. $ 
$

(+) When a face is selected, only that face is deleted. $
$
(+) When an edge is selected, the edge and also all the faces connected with that edge are also deleted. $
$
(+) When a vertex is selected, all edges and faces connected to it are deleted. $
$
$
]EditDeleteEx Delete_Special &actDeleteEx
Special delete the selected element, this preserves the existing face when removing lines, a normal delete will remove the whole face. $
$
(+)  If you special delete a vertex with 1 or 2 edges, it will combine the two edges into one merged edge. $
     It is used when you want to delete vertices on the same edge. $
$
(+)  If an edge is selected, and Special Deleted, it will be a semi-definite edge, it will appear as dotted line instead of the normal solid line. $
$
(+)  When a semi-definite edge is selected, if the two faces composed of that edge are both the same polygon shape, then the two faces are merged into one polygon. $
     Used when you want to convert two triangles polygons into one quadrilateral or join two neighbouring quads into a single quad$
$
(+)  If many faces, vertices or edges are Special Deleted at the same time, the edges and vertices that are apart of faces that were not selected faces will not be deleted. $
$
If the above conditions are not met, it will do nothing. $
$
This option is also available in the right click, context menu.$
$
]EditDeleteObject Delete_object &actDeleteObject
Deletes the selected object in %ObjectWindow%. $
$
]EditSubTool Edit_tool &actTool
See %EditTools%. $
$
]EditSubSelTool Selection_tool &actSelTool
See %SelectTools%. $
$

]EditSubWorkplane Workplane &actWorkplane
In perspective view, a workplane is always used to define 3D world movements, as explained in detail in: Reference -> Layout -> %3DWorkPlanes%.$
$
Note: Grid snapping, adjacent (along the offset) and axis object movements (Alt & Shift while holding the left mouse button) requires a selected workplane based on XY, YZ, XZ or automatically selecting between them. These do not work in the other workplane types, ie 3D (Gyakkou) perspective, screen or selected polygon parallel perspective workplanes. TODO: This maybe a bug?$
$
$  
]]WorkPlaneIsXY Set_XY_WorkPlane &actWorkXY
Uses XY plane as %3DWorkPlanes%. $
This limits movements to X and Y planes respectively.$
$
]]WorkPlaneIsYZ Set_YZ_WorkPlane &actWorkYZ
Uses YZ plane as %3DWorkPlanes%. $
This limits movements to Y and Z planes respectively.$
$
]]WorkPlaneIsXZ Set_XZ_WorkPlane &actWorkXZ
Uses XZ plane as %3DWorkPlanes%. $
This limits movements to X and Z planes respectively.$
$
]]WorkPlaneIsScreen Set_WorkPlane_parallel_to_view &actWorkScreen
Set your current view angle as the flat plane for the WorkPlane.$
Sets the workplane parallel to the current display view on your screen. See %3DWorkPlanes%. $
$
]]WorkPlaneIsPoly Make_selected_polygon_workplane &actWorkPoly
Uses the selected polygon's face as the plane parallel to work on, see %3DWorkPlanes%. $
This option is helpful for quickly replicating similar facing polygons. $
$
]]AutoWorkPlane Set_automaticaly_XY,YZ_or_XZ_WorkPlane &actWorkAuto
Depending on your view angle, the WorkPlane is automaticaly changed to XY,YZ or XZ.$
Set %3DWorkPlanes% to the most suitable plane from your point of view. $
You will see the grid changing orientation accordingly.$
Due to a bug it may not set the correct workplane, but then a slight shift in perspective help. $
$
]]GyakkouWorkPlane Set_WorkPlane_to_Perspected_Depth_Mode  &actWorkGyakkou
Vertex movement with position correction. $
Uses the GYAKKOU algorithm to calculate the WorkPlane using 3D perspective depth. $
Use the past viewpoint to move vertices, displaying a dotted (parallel to view) line as a guide. $
In this mode, by moving vertices while changing the viewpoint, it is possible to move vertices to the vicinity of the target position in fewer steps than before (minimum of 2 times). $
$
This view is better suited to editing ("fine adjustment mode") models instead of creating new points, lines or faces.
$
If creating new objects, it's best to start on correct parallel view, looking down, Y, X, or Z, hit F, D or E key respectively.
$
For more information on this function see the <A HREF="https://web.archive.org/web/20051103134535/http://www2.tomato.ne.jp/~leo/rok/rrk/" target="_blank">Gyakkou algorithm</A> (Japanese) page.)$





$ 
]EditSelAll SelectAll &actSelectAll
All current objects can be selected.$
$
]EditUnSel UnSelect &actUnSelect
Deselect.$
Click empty space with no tool activated, will also unselect all.
$
]EditSelInv A &actSelectInverse
Invert the selection.$
$
]EditSelSingle Select_single_edge &actSelectSingleEdge
Selects unused verts and edges that are not used to complete a face, this will also select guide lines and vertices. $
This is helpful when cleaning the model for final export, %EditSelSingle% and then %EditDelete% to remove unused vertices and edges.
$
]EditSelDopelA Select_overlap_edges &actSelectDopelEdge
If there are multiple edges with the same set of vertices, select one edge. $
When outputting to a file format that does not allow multiple edges, such as RDS output. $
After selecting the multiple edges with this command, do an %EditDelete% to remove the multiple edges. $
In many cases, the shape changes slightly, so manual correction is required. $
This will help keep your model clean and ready for exporting.. $
$
]EditSel2Tri Select_common_edge_between_two_triangles &actSelect2TrigonEdge
Selects edges that share two triangular faces. However, only the edges that when formed together become a square are selected. $
After running this command, using %EditDeleteEx% twice, will delete these edges and merge them into quadrilaterals.$
However, since it uses a simple algorithm, it is not possible to select an object that looks like a square surface, and only works on triangles.$
$
]SelectTerminalEdge Select_terminating_edge &actSelectTerminalEdge
Selects outside edges of a model, edges that are not inbetween faces.
Useful for selecting edges on the mirror (X,Z) plane.$
$
]SelectSameMaterial Select_continuous_faces_with_same_material &actSelectSameMaterial
Selects faces that have the same color attributes as the currently selected face and are contiguous (same mesh that's not seperated by a different material). $
$
]SelectMaterialFaces Select_all_faces_with_current_material &actSelectMaterial
Selects all faces that have the same material as the currently selected face. $
$
]EditSelToTemp Select_to_Temp &actSelectToTemp
Puts the selected element into a state called temporary selection. $
The tentative selection state is used in the %MeshArrayCopy% function, etc. $
TODO ?? ArrayDuplicate functions doesn't seem to use this, just the normal selected faces??
$
]EditTempToSel Temp_to_select &actTempToSelect
Restores the temporarily selected elements back to the selected state adding to currently selected objects.
The temporary selection data is also cleared. $
$

$
<HR>
$
|MeshMenu Mesh_Modeling
%MeshPrimitive% -> $
%MeshCollision% -> $
%MeshEffectFilter% -> $
%MeshEffectDiv% -> $
%MeshMakePolyAll%$
%MeshMakePolySel%$
%MeshAlignPolygon%$
%MeshAdjustPolygon%$
%MeshBooleanCut% $
%MeshFlipPolygon%$
%MeshDuplicate%$
%MeshArrayCopy%$
%MeshWeld% $
%MeshMoveToWorkPlane%$
%MeshFlatPolygon%$
%HideSelected%$
%HideUnSelected% $
%UnHide%$
%Naming%$
%ColorChange%$
%PickMaterial% $
$
$

$
<HR>
$
]MeshPrimitive Create_primitive &actPrimitive
%MeshPrimSphere%$
%MeshPrimSquare%$
%MeshPrimCylinder%$
%MeshPrimCorn%$
%MeshPrimDonut%$
%MeshPrimPlane%$
%MeshLathe%$
$
$
]]MeshPrimSphere Create_sphere &actPrimSphere
Set the number of divisions and create a sphere. $
$
]]MeshPrimSquare Create_cube &actPrimSquare
Create a cube by setting the number of divisions and sharpening the vertices and edges. $
$
]]MeshPrimCylinder Create_cylinder &actPrimCylinder
Set the number of divisions and create a cylinder. $
$
]]MeshPrimCorn Create_cone &actPrimCorn
Set the number of divisions and create a cone. $
$
]]MeshPrimDonut Create_torus &actPrimDonut
Set the number of divisions and create a torus (donut).$
$
]]MeshPrimPlane Create_plane &actPrimPlane
Set the number of divisions and create a plane.$
$
]]MeshLathe Lathe &actLathe
Generates a body of revolution with an arbitrary linear outline. $
$
Using the Z axis as the center of the rotation, draw an outline with %FacetTool%$
%PolyLineTool%$
%FreehandLineTool%, etc.$ 
Next, select the line (double left clicking on a segment), and run %MeshMenu%->%MeshLathe%, enter the number of divisions.$
A body of revolution with a linear outline is generated. $
$
The original vertices and edges remain in the model and can be removed by %EditSelSingle%.$
Developer notes: Originally, the shape of the rotating body is interactively deformed when the outline is changed later
I was thinking about something like this, but I put it off for the time being and implemented it in this way. $
Therefore, the user interface may change in the future. $
$

$
<HR>
$
]MeshCollision Collision_detection &actCollision
%MeshVertexCollisionDeform%$
%MeshVertexCollisionMove%$
%MeshEffectFilter%$
$
$
]]MeshVertexCollisionDeform Vertex_Collision_Detection_Deformation &actVertexColision
Collision detection is performed for each vertex. As a result of this operation, the selected object will be deformed as if it was truncated (ie height reduced) where it intersects with other vertices. $
$
]]MeshVertexCollisionMove Vertex_Collision_Detection_Move &actVertexColisionMove
Collision detection is performed for each vertex, the vertex with the smallest movement distance from the intersection is used to reposition the whole selected object. $
Use this when you want objects to fit together or sit objects on a surface, etc. $
$
]MeshEffectFilter Effect_filter &actEffect
%MeshRelaxFilter%$
%MeshRelaxFilter1%$
%MeshBumpyFilter%$
$
$
]]MeshRelaxFilter Relax &actEffectRelax
Averages the positions of the selected vertices. $
If the surface of the object has unwanted irregularities, select the irregular objects and apply %@MeshRelaxFilter%.$
Running it smooths it out sharp vertices and sharp edges. Do it several times until the desired smoothness is achieved. $
Settings for are now reflected. (beta 4.6)$ 
$
]]MeshRelaxFilter1 Relax1 &actEffectRelax2
Same as above but with a flattering effect instead of a smoothing average effect.$
$
]]MeshBumpyFilter Bumpy &actEffectBumpy
Distorts the positions of selected vertices. $
Developer notes: To do, When executed on magnet-selected vertices, the degree of disturbance changes according to the strength of the selection.$
$

$
<HR>
$
]MeshEffectDiv Divide &actDivide
%MeshPolySeparate%$
%MeshPolySeparateByEdge%$
%MeshTriangratePoly%$
%MeshSubDivide%$
%MeshPushBevel%$
%MeshPush%$
$
$
]]MeshPolySeparate Face_Separation &actPolySeparate
Separates the selected face or island of faces from the poly mesh. $
$
]]MeshPolySeparateByEdge Separate_by_edge &actEdgeSeparate
Separates all faces from the selected polymesh. $
$
]]MeshTriangratePoly Triangulation &actPolyTriangle
Devides selected quads into triangles.$
$
]]MeshSubDivide Subdivide &actPolySubdivide
Subdivides the selected faces into smaller quadrilateral adjusted to vertices average.
A triangle face will be subdivided by turning it into 3 quadrilateral faces.$
Subdivide creates extra polygonal detail and smoothed out, see image below. $
$
@#subdivide.jpg@
$
Since the algorithm is not very good, the shape becomes wavy when it is subdivided into smaller pieces. $
$
<B>*Algorithm improved in Beta4.6. I think it's gotten a little better</B>$
<B>Sharp vertex and sharp edge settings are now reflected/mirrored. (Beta4.6)</B>$
$ 
]]MeshPushBevel Edge_Bevel &actExtrudeEdgeBevel
With a line segment selected (double click a line), Edge Bevel will ask you for the size of the width of the bevel split. The new bevel section will be selected to be moved or resized etc.
$
$
]]MeshPush Extrude &actPolyPushByFig
Extrude Selected Faces$
<B>Parallel Extrude</B> extrudes perpendicular to the normal vector of the face. $
<B>Extrude according to vertex normal</B> extrudes each vertex in the direction of its normal vector. $
Other extrusion methods have not yet been implemented. $
$ TODO: Extrude window details:$

  %actExtrudePara% $
  
  %actExtrudeKeepRev% $
  
  %actExtrudeBevel% $
  
  %actExtrudeMove% $
  
  %actExtrudeSnap% $
  
$
]MeshMakePolyAll Face_all &actMakePolyAll
For the current object, fill all polygons as much as possible for all edges. $
$
]MeshMakePolySel Face_the_selection &actMakePolySel
Fill polygons only the areas enclosed by the selected edges. $
$
]MeshAdjustPolygon Make_all_surfaces_face_the_same_direction &actPolyAdjust
Make all surfaces face the same direction.$
Align the orientation and position of all faces connected to the last selected polygon. $
Used to flattern and angle groups of faces.$
$
]MeshAlignPolygon Align_the_orientation_of_polygons &actAlign
Align vertices. $
Align the orientation and position of all faces connected to the last selected polygon. $
Used to flattern and angle groups of faces.$
$
]MeshBooleanCut Boolean_cut & 
Find the line of intersection between the two meshes and cut the mesh there. $
See %BooleanCut%$
Note/TODO: Not implimented?$
$
]MeshFlipPolygon Flip_Polygon &actPolyFlip
Inverts the selected polygons. $
$
]MeshDuplicate Duplicate &actDuplicate
Duplicate the selected element. $
When duplicating symmetrically with respect to a specified plane, if you check <B>Weld</B>, the joint will be
Weld. (currently unstable)$
TODO: Document and test?$
$
]MeshArrayCopy Array_copy &actArrayDuplicate
Duplicates the selected element continuously. $
In Beta5.1, only the function to duplicate the selection element along the temporary selection line is implemented. $$
TODO: Dialog box with 3 options, no translation is provided.$
1) Simple translation with X,Y,Z values$
2) Complex translation and offset$
3) Lathe$
Duplicate number: 5 (default)$
$
]MeshWeld Weld &actWeld
Weld selected vertices. $
<B>UV vertices can now be welded when running in UV view beta5.3</B>$
$
Vertices that are closer than the distance set in <B>Vertex Distance to Weld</B> will be welded. $
If you check <B>Weld all selected vertices</B>, the selected vertices will be merged into one point regardless of their distance. $
$
]MeshMoveToWorkPlane Move_selected_plane_to_work_plane &actMoveToWorkPlane
This tool will move and flattern all selected vertices (typically edge loops) to the center point of the current WorkPlane (XY/YZ/XZ). $
When working symmetrical parts using %MeshDuplicate%$
%MeshWeld% or %AllMirror%, it is a necessity to make sure the outer edge loop is completely flat.$
$
]MeshFlatPolygon Flatten_a_face &actPolyFlat
Flatten the selected faces. $
It's still incomplete. $
Note/TODO: Not implemented?$
$
]HideSelected Hide_the_selection &actPolyHide
Hide the selected element (hide) $
$
]HideUnSelected Hide_unselected_part &actPolyUnSelectHide
Hide elements other than the selected part (hide) $
$
]UnHide Show_hidden_part &actPolyUnHide
Show the parts hidden by %HideSelected% or %HideUnSelected%. $
$
]Naming Naming &actPolyNaming
Naming is similar to a subgroup, or a soft group and can be converted to a group, by right clicking the named item in the %ObjectWindow%.$
Enter the new name for the selected element or select an existing one to add selected elements. $
$
]ColorChange Assign_current_material_to_selection &actPolyChangeColor
Replaces the material of selected faces with the currently selected material. $
$
]PickMaterial Pick_up_a_material &actPickMaterial
Changes the selected material to the material used in the selected face. $
$
$

$
<HR>
$
|MirrorMenu Mirror/Curve
%AllMirror%$
%MirrorMakeMirror%$
%MirrorSelectUnMirror%$
%MirrorSelectFreezMirror%$
%MirrorUnMirror%$
%MirrorFreezMirror%$
$
%Curves%$
$
$
Note: All Mirror operations only work on the XZ plane and the reflected plane (the -Y side) can not be edited, unless released with %MirrorFreezMirror%.$
$
]AllMirror Simple_symmetry &actAllMirror
Puts the current object into simple mirror mode. $
This mode makes all elements in the object symmetric. Use this feature to generate simple symmetric figures. $
$
A symmetrical figure is generated by duplicating all elements of current root object and mirrored along the XZ plane. $
Mirroring is applied to all named parts within the object and you will not be able to separate any parts of the model from the mirrored plane.$
$
When symmetric is applied, only the  +Y mirrored plane is editable and new operations will automatically edit in symmetrically mode. 
$
If you want to generate a shape with mixed symmetrical and asymmetrical parts, remove %AllMirror% and use %MirrorMakeMirror%. $
$
See %SelectiveMirror%
$
]MirrorMakeMirror Generate_symmetrical_figure &actMirror
Edit the selected face symmetrically to the XZ plane. $
Once a symmetrical figure is generated, the surfaces generated by connecting to that surface will be automatically symmetrically edited. $
The vertices that existed on the XZ plane when the symmetrical figure was generated are shared between the original plane and the reflected symmetrical plane, and you will not be able to separate it.$
$
At this time, it is an incomplete feature, so it is possible to move, rotate, scale other than the original surface, editing removes symmetrical entities. $
In this case, you can re-select the face and %MirrorMakeMirror% to recreate the symmetric geometry. $
If you regenerate a symmetrical figure, it may not be the correct symmetrical figure, but in that case execute %MirrorUnMirror% once to cancel target editing, and then execute %MirrorMakeMirror% again. $
$
See %SelectiveMirror%
$
]MirrorSelectUnMirror Cancel_selection &actSelectUnMirror
Removes symmetry if the selection has symmetrical entities. $
$
]MirrorSelectFreezMirror symmetrically_fixed_selection &actSelectFreezMirror
If the selection has symmetrical geometry, fixes (instantiates) the symmetry. $
Shapes with fixed symmetry can be edited separately, but if you run %MirrorMakeMirror% again, returns to symmetric editing state. $
$
]MirrorUnMirror Unsymmetry &actUnMirror
Release symmetrical editing. $
$
If %AllMirror%, the mode is cleared. $
$
]MirrorFreezMirror Freeze_the_symmetrical_figure &actFreezMirror

Freeze (instantiates) symmetrical entities and release symmetrical editing. $
Once fixed, target figures can be selected and edited in the same way as normal surfaces. $
$
A new symmetrical object is created.$
$
If %AllMirror%, the mode is cleared. $
$
$

$
<HR>
$
|Curves
$
%ChangeSplineSurf%$
%ChangeSplinePatch%$
%FreezeSpline%$
%SharpEdge%$
%UnSharpEdge%$
%SharpVertex%$
%UnSharpVertex%$
%SplineWeightUp%$
%SplineWeightDown%$
$
$
]ChangeSplineSurf Surface &actSplineMesh
Bezier patch surface for objects composed of triangles or quadrilateral polygons. $
When executed on an already curved object, the curved surface is removed. $
$
The continuity of the curved surface is not guaranteed because the patches are connected using a somewhat brute force method. $
$
In the beta version, curved surfaces may be generated abnormally in rare cases. in that case again
Try %ChangeSplineSurf% to remove the surface and then surface again. $
$
@#spline.jpg@$
Surface generated by %ChangeSplineSurf% on the left. Surface generated by %ChangeSplinePatch% on the right. $
$
See %SplineSurf%
$ 
]ChangeSplinePatch surface &actSplinePatch
Unlike traditional %ChangeSplineSurf%, a surface is generated through the control points. $
$
See %SplineSurf%
$
]FreezeSpline Polygonize_surface &actFreezSpline
By polygonizing the Bezier patch curved object with the specified number of divisions, it can be transferred to rendering software (RDS, etc.)
Prepare to bring. If you bring a curved object into the rendering software without converting it into polygons,
It will be rendered with the shape before curved. $
$
However, some formats, such as MegaPOV and Redqueen format, automatically divide into polygons, so this operation may not be necessary. (The number of divisions can be set in the Preferences dialog)$

@#freezeSpline.jpg@

]SharpEdge sharpen_edge &actEdgeSharp

Removes subpatch smoothing from the primitives selected.

You can get a curved surface that bends at the part that straddles this edge. $
When outputting in RayDreamStudio format, it is equivalent to using the edge sharpening function of the mesh modeler
You can get the effect. $
$
<B>Vertex weights have been supported since beta 4.7, but this feature gives different results than weights to vertices$
Please use properly according to the situation</B>

$
$

]UnSharpEdge smooth_edges &actEdgeSmooth
It does the opposite of %SharpEdge%. $

Re-applies the subpatch smoothing from selected primitives.


]SharpVertex sharpen_vertices &actVertexSharp

Specifies the vertices to sharpen during surfacing. $

<B>Since beta 4.7 supports vertex weights, the behavior of this feature has changed. $
Executing this command in beta 4.7 or later has the same effect as maximizing the weight</B>
$
$
Sharp vertices are not moved by %MeshRelaxFilter%$
%MeshSubdivide%.
$
$


]UnSharpVertex smooths_vertices &actVertexSmooth
It does the opposite of %SharpVertex%. $
$
<B>Running this command in beta 4.7 or later has the same effect as setting the weight to 0</B>
$
$
@#sharpedge.jpg@
$
From left to right: a normal curved object, an object with two sharpened edges on the top surface, and an object with two sharpened vertices on the top surface. $
$
$
*SubpatchWeight Weight for surface conversion
<B>Beta 4.7</B>
]SubpatchWeightUp Increase_vertex_weight &actSplineWeightP
Moves the generated surface closer to the vertices. $



]SubpatchWeightDown Decrease_vertex_weight &actSplineWeightM
Push the generated surface away from the vertices. $
If you lower the weight too much, the shape will be a little distorted. $
$
$
<B>In addition to the menu operation, you can also change the weight by mouse operation. $
Use %MoveTool% to select the part you want to change the weight of, right-drag that part to the right to increase the weight,
Right-drag to the left to decrease the weight. $
This operation method is in the testing stage and may be changed to another operation method in the future</B>
$
$
@#weight.gif@
$
From the top left, normal surface object, less weight for each vertex
object $
From the bottom left, an object with increased weight on each vertex and an object with maximum weight on multiple vertices. $
$
$
$
$

<HR>
$
|PartsMenu Parts/Bone
$
Note: Bones support is still buggy and you will see errors, but these typically aren't critical errors. Re-select items and try the operation again.
This section only effects bones and objects attached to bones.$
$
$
%FreezeParts%$
%PartsToWorkPlane%$
%ParsMirror%$
%AttachBoneSimple%$
%DetachBoneSimple%$
%PartsResetPosition%$
$
%BoneTips%$
%BoneExample%$
$
Not available:$
%AttachBone%$
%Skinmode%$
%DeactivateSkinMode%$
%ImportParts%$
$
$
$
]FreezeParts FreezeParts &actFreezeParts
$
To freeze means to create a new model based on the current object as a polygon mesh.$
This option will freeze the current object attached to bones to a new model.$
This new mesh object can be further manipulated, exported or rendered etc.$
This feature only works in %actAttachBoneSimple% mode and freezes the complete model object.
$
$
]PartsToWorkPlane PartsToWorkPlane &actPartsToWorkPlane
$
Bone and model must be %AttachBoneSimple% first$.
Moves the selected bone and it's lower attached hierarchy of bones to the currently selected workplane.$
It's recommended to only use this with the root (top most bone), as it will also apply the move to the rest of the hierarchy.$
This is useful to center the bone hierarchy to the front and right planes.$
Currently, the individual bone part must be selected from the view port, not the object tree.$
$
$
]ParsMirror PartsMirror &actParsMirror
$
This is not a mirror feature, it uses the currently used workplane as a mirror plane. $
It duplicates the selected bone hierarchy using the mirror plane, to a new bone hierarchy. $
The mirror can be a root bone node or a sub bone node, if it's a root node a new root will be created, if it's a sub node a new sub node will be created.$
Currently, the individual bone part must be selected from the view port, not the object tree.$
Note: As of this version (v1 beta 6.4), it will only traverse down a single hierarchy tree of bone nodes, so it will not do a full mirror if you have bones in multiple branching bones.$
$
$
]AttachBoneSimple AttachBoneSimple &actAttachBoneSimple
$
First select the model's root object and then holding down shift key, select the bone's object(s). $
If your bone hierarchy has multiple root bones, you will have to hold shift and select all root bone node hierarchies or the missing bones will not be available for posing.$
Both the model's root object and the model's root bone(s) hierarchy must be selected and highlighted.$
It's recommended to keep a single bone hierarchy. Then apply %actAttachBoneSimple%.$
Note: If the model's root model object and bone's root hierarchy are not both selected, it will not do anything.$
$
Setting %actAttachBoneSimple% will apply the bone and position last applied, and allows you to position bones to pose the model.$
You can accidentally edit the model while in this mode, it's best to use the %MoveTool% with vertices, lines and faces selecting disabled, only bone manipulation will work.$
or the bones in this mode, all modification will only effect the position of the model for a pose.$
$
This mode has a special %MoveTool% bone widget with all the manipulators in one (tip: disable the normal maniputlator with M Key), if you only need to rotate bones for posing, changing to the rotate tool is a lot easier. Note, currently the scale tool does not work on bones.$
To edit the bones size (skinning), location etc, you must be in normal modelling editing mode and exit with %actDetachBoneSimple%.$
$
You can confirm you are in  %actAttachBoneSimple% mode by clicking a bone and seeing all options available in the Parts/Bone menu.$
$
$
]DetachBoneSimple DetachBoneSimple &actDetachBoneSimple
$
This turns off %actAttachBoneSimple% and reverts back to normal modeling mode.$
You have to have either the Model, Bone or both selected first.$
$
You will alternate between the two modes regularly to adjust the model if the pose doesn't look correct, not enough geometry etc. 
Note: You can not delete bones if they are in %actAttachBoneSimple% a warning will display "You can't delete active bones, use Parts/Bone -> Detach and Deactivate bone (Simple) and try again!" reminding you to exit first with %actDetachBoneSimple%.$
$
$
]PartsResetPosition PartsResetPosition &actPartsResetPosition
$
The current pose will be discarded and cleared with positioning information in bones.$
The bones will be reset to the same information as the bones in the modeling mode.$
Must be in %actAttachBoneSimple% mode with the bone hierarchy selected.$
The bone hierarchy can be a root bone or a sub bone, which will only clear and reset the current bone hierarchy, and not the other bones.$
$
$
]BoneTips Bone_tips &Bone_tips
$
The bone node icon in the object viewer panel means:$
Diagnal line of two bones yellow bones - Not attached to model.$
Bent knee looking bones - Attached to model.$
$
While using the %BoneDrawTool% when you click on another bone it will only select it, to continue the hierarchy. 
To create a new bone, click on empty space and drag, a new bone root node will be created.
To move bone nodes up or down the hierarchy, click the icon with the two bones.
$
Always use centered views in the main single screen: $
F key = Front (when using mirror mode, this is the side view)$
E key = Top$
D key = Right (when using mirror mode, this is the front view)$
Or use the traditional 4 way split view.$
$
The Object viewer panel %ObjectWindow% in %PanelTray% can get very big with bone hierarchies. You can move it out to it's own panel by dragging the floating icon next to the collapse icon, at the top right.$
The new window will default to pinned mode, which will always stay on top, if you click the pin icon, it will be unpinned and it will disappear.$
To get it back, click Menu -> Windows -> Show windows -> Show object window.$
Or you can add the Object panel and other panels to the floating tray (Menu -> Windows -> Show windows -> Open floating tray..) which can be positioned anywhere and will always be visible.
Unfortunately, MarbleClay can only have one instance of a panel.$
$
$
<b>Multiple bone hierarchies.</b>$
$
@#eng_extra/multi_pos.jpg@ $
$
If you need multiple poses, it's recommended to only have a single pose in a file. MarbleClay can load multiple instances to compare each pose.$
Multiple bone hierarchies in a single file, is experimental!$
$
Currently, there is no way to copy a complete bone hierarchy, and working with them is more buggy, but it can be done and managed.$
Simply save a copy of your MarbleClay project with only the bone hierarchy finalized, save it something like Tee-Pose.$
The object viewer panel has an import feature (folder icon at the bottom left of the panel) and import your saved file.$
Delete the imported model and rename the imported bone hierarchy, save it out with a new name. Repeat to add more bone hierarchies or to add single ones just import the original model-single-frame one again.$
This method works, always save your work incrementally and always test every imported bone hierarchy by %AttachBoneSimple% each bone hierarchies with the model to test the new frame.$
$
<I>Warnings:</I>$
When working with multiple bone hierarchies, only have a single, active bone visible and do not click other bone hierarchies, just in case! $
Sometimes while setting up multiple bone hierarchies, the bone icons can get confused as to which bone hierarchies is attached to a model, it can be ignored and it will work as expected. Also you will see the bone boundaries not aligning correctly with the mesh, again this doesn't matter so much, because it will apply the correct transformations.$
$
]BoneExample Bone_Example &Bone_Example
$
Start by setting the correct workplane, typically (YZ workplane) and hitting D key (right view).$
If you are not in the correct workplane you might not see the bone!$
You want to pick the correct bone type for each part, the short (square) bone type for smaller parts and the long (rectangle) type for longer parts.$
$
The more bones you use, the more control you will have over the auto skinning and posing, it's advised to completely skin your model with all of the mesh allocated to bones and no vertices unallocated.$
$
Bones should be structured in a hierarchy based on limbs, ie bone root nodes should be center nodes, like:$
Head start with:  Neck, Head.$
Left arm start with: left shoulder, left bicep, left forearm, left hand.$ 
Left leg start with: left upper leg, left lower leg, left foot.$
$
It's a good idea to set each bone's dimensions as you go, that way you can see where the next bone will start. The first root bone might require %PartsToWorkPlane% to move it to the center first.
$
Before moving on from the first bone hierarchy, test it first so that the bones don't grab vertices which it shouldn't etc.
$
Next, we change the workplane to XZ, select the left shoulder root bone and click %ParsMirror%.$
This will create a new root bone hierarchy, rename parts appropriately and the same for the right leg.$
$
$
<A HREF="https://www.youtube.com/watch?v=3r3dnpec2Dg&list=PL7PuatOJN9g3UuLApfipLB09zn8p5NzqR&index=5" target="_blank">See: #5 MarbleClay Using Bones and Multiple Poses</a>$
$
$
]AttachBone AttachBone &actAttachBone
$
Not available.$
$
]Skinmode Skinmode &actSkinmode
$
Not available.$
$
]DeactivateSkinMode DeactivateSkinMode &actDeactivateSkinMode
$
Not available.$
$
]ImportParts ImportParts &actImportParts
$
Not available.$
Load another saved .mcl file into your document as a part. $
This is in the %ObjectWindow%.
$
$
<HR>
$
$
|ImageMenu UV/Image
$
<A HREF="https://www.youtube.com/watch?v=EG2vP54UWsc&list=PL7PuatOJN9g3UuLApfipLB09zn8p5NzqR&index=1" target="_blank">Video tutorial: #01 MarbleClay 3D modeller - Texturing tutorial </A>$
$
$
%UVGenerate%$
%UVBurn%$
%ImageCopyToClipborad%$
%ImageTempSize%$
%ImageTempHalfTone%$
%ImageTempOpen%$
%ImageModelingTemplate%$
$
$
]UVGenerate UV &actUVMapMake

Assign UV values to selected faces. $
$
]UVBurn Bake_UV_texture_map &actImgUV
Create a UV template and bake a UV mesh. It is used as a template when drawing textures with external paint software. $
$
]ImageCopyToClipborad Copy_to_clipboard &actImgCopy
Copy the image selected in %ObjectWindow% to the clipboard$
$
]ImagePasteFromClipborad Paste_to_Clipboard &actImgPaste
Paste an image from the clipboard into the template selected in %ObjectWindow%$

$
]ImageTempSize Change_template_size &actImgSizeAndPos
of the template selected in %ObjectWindow%
A dialog will appear to change the position and size. $

]ImageTempHalfTone Template_dimmed &actImghalftone
Decrease the contrast of the template image selected in %ObjectWindow%.
Use it when the template color is too dark and it is difficult to see the object. $

]ImageTempOpen Load_image_into_template &actImgOpen
You can load a template image by selecting the template and executing Image->Load Image. $
$
]ImageModelingTemplate modeling_template &actModelingTemplate
$
$
]]ImageImportToXY Import_into_XY_plane &actImageXY
$
$
]]ImageImportToYZ Import_into_YZ_plane &actImageYZ
$
$
]]ImageImportToZX Import_into_ZX_plane &actImageZX
$
$
]]ImageImportToUV Import_into_UV_plane &lblUVTemplate
$
$
$
$

$
<HR>
$
|ViewMenu View

]ViewRefresh Screen_refresh &actRefresh
In the current version, garbage remains on the screen as you operate.
At some point, do a %ViewRefresh% to refresh the screen. $

]Grid grid_setting &actGridSet
]GridSnap grid snap &actGridOnOff
Limits cursor movement to grid units when the workplane is set to XY, YZ, or XZ. $
$

$
<HR>
$
|OptionMenu Option 
$

$
<HR>
$
|WindowMenu Window 
$

$
<HR>
$
|HelpMenu Help
$
Next, %ContextMenu%
@Footer
$

$
<HR>
$
[]
$
@Header
$
:ContextMenu Mouse_right_click_menu
$
%BreakPop% %Enter% %CursorAt% %ViewAt% %SelectRelated% %ContextNaming1% 
$

Click the right mouse button on the perspective view or three-view view and release the button to display the context menu.
will be $
The context menu contains various items, and we plan to make it customizable in the future.
There are some important items, which I will explain below. $

]BreakPop Abort &actBreak
   Equivalent to %EditBreak% on the main menu. Cancels line drawing or returns to normal movement mode. $
  
]Enter Continue
   Exit the menu without doing anything. $
$
]CursorAt Move_WorkPlane_to_mouse_pointer &actCursorChange
$
When modeling, operations are parallel to a flat plane called a workplane, see %3DWorkPlanes%.$
Without adjusting %WorkPlaneOffset% (height or depth) of the workplane your modeling will only be a flat 2D vector image around the coordinate origin.$
For this reason, it is important to be able move the offset of the workplane. This is done automatically when clicking on objects.$
However, this interrupts the flow of using tools in a 3D environment, where a face has different height workplane requirements.$
For the beginner, it's advised to start with single points and lines and using them to build simple faces that lay on a single workplane, a co-planar flat surface.$
Build your first models that way, until you get the hang of the %3DWorkPlanes% and height, and are comfortable with it.$
Recommend using the vertices manipulator (m key) axis widget when moving vectices to begin with.
$
Note: Right clicking any object will result in using the closest vertex to the mouse cursor location.$
MarbleCLAY will always remember the last set height.$
$
For more experienced users, the %CursorAt% allows you, in one single tool operation to create multi workplane objects. For example a line, tri or quadrilateral that has each vertex at different heights.$
The alternative is to click on an object (it will use the closest vertex to the mouse cursor) with the desired height before starting a new operation and hitting cancel (hit ESC once) and ending on an existing vertex.$
For changing workplane height mid operation, you will have to click to a vertex with your desired height but not necessarily at that position, so use %EditUndo% to undo that click, and continue the operation at that height.$

$
To clear the workplane height (reset to zero height, the coordinate origin), right click empty space. This is useful when working with %SelectiveMirror%.


Clicking on an then to continue your operation but using the same vertex workplane height, 
alternatively, 

It's complicated to explain in words, but if you try it, you'll understand it quickly. $
$
Please note: in %lay_WorkPlaneAuto% it will not reset the %WorkPlaneOffset%, instead it will use the mouse pointer location as the offset for the other (adjacent) workplanes.$
$
$
]ViewAt Center view here &actViewCenter
Set the cursor position to the point that will be the center of the display (point of interest). $
$
]SelectRelated Select connection point &actObjectSelect
Selects all elements that are contiguously connected to the element under the cursor. $
Used to select independent parts within an object. Double left mouse click
Since it is assigned, I think that it is often used usually. $

$
]ContextNaming1 Name the selection>
]]ContextNaming2 new name &actNaming
Give the selected element a new name (polymesh name). $
The new name will appear in %ObjectWindow%. $
$
See %ObjectHandling%$
Next, %EditTools%$
@Footer

$
<HR>
$
[] 

@Header
:ToolBars toolbars



$
<HR>
$
|EditTools Edit_Tools
@#tooloption.gif@@#movetool.gif@@#facetool.gif@@#pointtool.gif@@#polytool.gif@@#freehandtool.gif@@#knifetool.gif@@#claytool.gif@@# extrudetool.gif@@#rolltool.gif@@#scaletool.gif@@#longbonetool.gif@@#facetflowtool.gif@
$
$
]ToolOption Tool_Option
@#tooloption.gif@
Displays %ToolOptionWindow% for setting specific settings for each tool. The %ToolOptionWindow% is displayed in the left %PanelTray% by default. $
%ToolOptionWindow% can also be displayed by right-clicking the button of each tool. $
$
]MoveTool Move_Tool &actEditMove movetool.gif
@#movetool.gif@
Moves selected vertices, edges, and faces. With this tool selected
When you change the selection tools using %SelectTools%$
%SelectRect%,
You can do %SelectMagnet% & %SelectLasso%. $
If you select %SelectMagnet%, the [%Smoothbend%] option will be enabled.
If you check this smooth bend "automatic" or press the CTRL key while dragging,
Move vertices in a bend instead of translation. It works effectively when editing the vertices of elongated objects. $
$
]FacetTool Face_tool &actEditPolygn facetool.gif
@#facetool.gif@
A surface is generated by drawing lines. Face generation is set to "fully automatic" in the tool window %ToolOptionWindow%
In this case, faces are automatically generated when quadrilaterals or triangles are constructed. $
In this case, a surface different from the intended location may be generated, so use the "user specified" mode.
We are ready. In this mode, surfaces are generated only when the user clicks 4 or 3 points in succession.
will be $
$
Also, if "Drag & Weld" is checked, drag the vertex onto another vertex
You can weld vertices together by moving them (if they are in the same object). different objects
If it is not checked, the vertices will just move to the same position and will not be welded. $
$
]AddPointTool Vertex_Add_Tool &ActEditAddPoint pointtool.gif
@#pointtool.gif@
Add a vertex on an existing edge. $
Ctrl + left click or right click (selectable in the tool window %ToolOptionWindow%) to select an existing vertex
Delete. (Right click is assigned %ContextMenu%, so no confusion
To prevent this, by default it is bound to Ctrl+left click)$
$
]PolylineTool Polyline_Tool &actEditPolyline polytool.gif
@#polytool.gif@
Same as %FacetTool% except that no faces are generated. $
$
]FreehandlineTool Freehand_Line_Tool &actEditFree freehandtool.gif
@#freehandtool.gif@
Draw lines freehand. When drawing a rough outline at the beginning of modeling
use. Since there tend to be many vertices, use %AddPointTool% to delete vertices appropriately
please. $
$

]CutTool Knife_Tool &actEditKnife knifetool.gif
@#knifetool.gif@
Cut faces and lines. $
By dragging on the object to be cut, the object is cut along the dragged straight line.
If you finished the mouse drag (released the mouse button) on an object, you released the mouse button.
Only sections that are continuous from the location face are cut. (no effect behind objects)$
$
]ClayTool Clay_Tool &actEditClay claytool.gif
@#claytool.gif@
of the object A tool that transforms surfaces like clay. $
Subdivide the object surface if necessary for smooth deformation. The deformation range is
Specified by %SelectMagnet%. $
I think it's almost impossible to create the shape you want with this tool, but you can create unexpected shapes.
Since you can make it, it may be useful for creating ideas at the beginning of modeling. $
As with %MoveTool%, the [%Smoothbend%] option is valid. $
(This tool is an experimental feature. It may be discontinued.)$
$
]ExtrudeTool Extrude_Tool &actEditPush extrudetool.gif
Extrude selected polygons in various formats. $
The Extrude format is determined by the SubTool, which can be selected using the menu displayed by clicking or dragging %ToolOptionWindow% or %ExtrudeTool%. $
$
@#extrudetool.gif@ parallel extrusion$
After selecting a polygon, left-drag the mouse to the right to extrude the face toward the front side of the polygon. $
$
@#extrudetool_back.gif@ Extrude leaving the back side $
After selecting a polygon, left-drag the mouse to the right to extrude the face toward the front side of the polygon. In addition, the faces that were originally selected remain and are flipped. $
It is used to create a box-like shape from polygons. $
$
@#extrudetool_bevel.gif@ Bevel Extrude $
After selecting a polygon, left-drag the mouse to the right to extrude the face toward the front side of the polygon. At this time, the new faces get smaller as they are extruded. $
$
@#extrudetool_move.gif@ move extrude$
A left mouse drag will extrude the polygon regardless of its orientation. $
$
@#extrudetool_snap.gif@ Snap Extrude$
A new face is created attached to the originally selected face. $
$
*BevelExtrude edge bevel
@#extrudetool_beveledge.gif@ edge bevel$
This subtool differs from other subtools in that it works on edges instead of faces. Select an edge and left-drag the mouse to the right to bevel the edge. $
$

$
*EdgeExtrude edge, vertex extrusion
Extrude edge: $
From Beta4.8, it corresponds to the function to create a surface by extruding an edge. Also, to assist edge extrusion
Although limited, it also has the ability to extrude vertices to create faces. For details, see 1-Step Tutorial
please refer to. $
$
This function is effective when a tool other than Edge Bevel is selected. $
$

]Roll2D 2D_Rotation_Tool &actEditRoll2D rolltool.gif
@#rolltool.gif@
Rotate the selection parallel to the workplane. $
To change the center of rotation, select the vertex that will be the center of rotation with Shift + click.
If you want to return the center of rotation to the center of selection (default), select an appropriate face with Shift + click. $
$
]ScaleTool scale_Tool &actEditScale scaletool.gif
@#scaletool.gif@
Scale the selection. $
To change the center of scaling, select the vertex that will be the center of scaling with Shift + click.
If you press the Shift key while dragging, it will be scaled in the same size in the XYZ direction. $
$
]BoneDrawTool Bone_Creation_Tool &actToolPluginBoneDrawTool longbonetool.gif

There are two types of bone determined by using the subtool panel (%ToolOptionWindow%) or clicking multiple times the %BoneDrawTool% to alternate between feature. $
The vertices will be set to ??? when dragging out the demension box of the bone (white colour hierarchy and red when selected individually by default), and will automatically map to, or skinned to the current bone and will be effected when the bone is manipulated.
$
$
@#longbonetool.gif@longbone$
Create a long, rectangle bone. It starts on one end and finishes on another end.$
Change the length of the bone by dragging the left mouse button, and change the thickness by dragging the right button while pressing the left button. $
$
@#shortbonetool.gif@ Shortbone$
Creates a short, cuboid bone. This is a square bone which starts from the center and grows out equally on all demensions when being set.$
$
$
$
]FacetFlowTool Face_Flow_Tool &actToolPluginFacetFlowTool facetflowtool.gif
@#facetflowtool.gif@ Used to adjust the flow of faces. $
  (+)  Clicking on a quadrilateral splits the face into two triangular faces$
  (+)  If you click on the edge shared by two triangular faces (regarded as the diagonal of a square face), the diagonal will be reversed$
  (+)  If you click the reversed diagonal line again, the two triangular planes will be combined into one quadrangular plane.$
$
You can set ON/OFF for reversing diagonal lines, merging faces, and splitting faces with %ToolOptionWindow%. $
Next, %SelectTools%$
@Footer

$
<HR>
$
[] 

@Header

$
<HR>
$
|SelectTools Selection_Tools
@#seloption.gif@@#pointmode.gif@@#areamode.gif@@#magnetmode.gif@@#lassomode.gif@@#paintselmode.gif@$

]SelectOption select_option
@#seloption.gif@
$ to display the window %SelectOptionWindow% for setting specific settings for each selection tool

]SelectPoint single_point selection &actSelPoint pointmode.gif
@#pointmode.gif@
Selects the elements specified by %SelectFilter% among vertices, edges and faces. $
Shift+left click adds to current selection, Ctrl+left click deselects already selected elements. $

]SelectRect Rectangular selection &actSelRect areamode.gif
@#areamode.gif@
Selects elements inside a rectangle specified by mouse dragging. $
Shift-drag adds to the current selection, Ctrl-drag adds
Deselect the element. $

]SelectMagnet Select magnet &actSelRel magnetmode.gif
@#magnetmode.gif@
Gradually selects elements within a certain distance from the left-clicked element. $
You can specify the selection range by right dragging. $

]SelectLasso lasso selection &actSelFreeHand lassomode.gif
@#lassomode.gif@
Select the elements inside the arbitrary shape range drawn by mouse dragging. $
Shift-drag adds to the current selection, Ctrl-drag adds
Deselect the element. $
$

]SelectPaint continuous selection &actSelPaint paintselmode.gif
@#paintselmode.gif@
Select contiguous elements of the same type as the element you started the mouse drag from. $
$
$



$
<HR>
$
|SelectFilter Select_Filter
@#filteroption.gif@@#pointsel.gif@@#edgesel.gif@@#facesel.gif@@#revfacesel.gif@@#relsel.gif@$
$
Set a selection filter. Only elements (such as vertices) specified by this filter are
It can be %HighlightElement%%highlighted or selected by mouse operation. $

]VertexFilter vertex filter &actFilterPoint
@#filteroption.gif@
Set whether vertices can be selected or not. $

]EdgeFilter edge filter &actFilterEdge
@#pointsel.gif@
Set whether the edge can be selected or not. $

]PolyFilter Face filter &actFilterPoly
@#facesel.gif@
Set whether the face can be selected or not. $

]RevPolyFilter Reverse filter &actFilterRevPoly
@#revfacesel.gif@
Set whether the back face and elements belonging to the back face can be selected. $

]PolyRel Continuous filter &actFilterRel
@#relsel.gif@
Set whether limited selection of continuous elements is possible or not. $
The behavior of this filter is special, and it behaves as follows: :$
1. $ if nothing is selected
You can freely select according to the settings of other selection filters. $
$
2. If vertex is selected $
Only faces and edges connected to that vertex can be selected. $
$
3. If edge is selected $
"Only faces and vertices connected to the edge can be selected." $
$
4. If a face is selected $
"Only edges and vertices connected to that face can be selected." $
$
5. If you click on an empty place $
The selection will be canceled and condition 1 will apply. $
$
If you want to select the vertices of a finely complicated place, etc., when it is difficult to operate the mouse selection in one shot, you can turn on this filter to select the elements that are easy to select first, and then follow the target elements one by one. I can go. $
$
$
$
Next, %PreviewStyle%$
@Footer

$
<HR>
$
[] 


@Header


$
<HR>
$
|PreviewStyle preview_style
@#previewoption.gif@@#wire.gif@@#shadewire.gif@@#flatwire.gif@@#flat.gif@@#texture.gif@@#smooth.gif@@#shader.gif@@# opengl.gif@$

]WirePreview1 Wire1 &actPreview1
@#wire.gif@
Display the object in wireframe. $

]WirePreview2 Wire2 &actPreview2
@#shadewire.gif@
Display the object in wireframe. $

]FlatPreview1 Flat &actPreview3
@#flatwire.gif@
Display objects with flat shading + wire. $
$
]FlatPreview2 Flat &actPreview4
@#flat.gif@
Displays objects with flat shading. $
The display speed is the same as %FlatPreview1%, but it is slightly faster because the wire is not displayed. $
$


]TexturePreview texture &actPreview5
@#texture.gif@
Displays textures at %FlatPreview1% and %FlatPreview2%. $
Used for painting, etc. At the moment, when reading an RDS file with a UV map and
It makes sense only when textures are attached, but it is not versatile at all, so we will restore the paint function Until then, think of it as meaningless. $
$
]SmootnPreview smooth shading &actPreviewSmooth
@#smooth.gif@ Displays smooth shading at %FlatPreview1% and %FlatPreview2%. (Valid only when displaying %OpenGLPreview%)$

]ShaderPreview ARB Shader &actPreviewAdvancedShader
@#shader.gif@ At %FlatPreview1% and %FlatPreview2%, Phong shading/bumpmap display is performed. (Valid only when displaying %OpenGLPreview% with RADEON9500 or later, GeForceFX or later video card)$
$
<B>*Video card supporting GL_ARB_fragment_program, GL_ARB_vertex_program, GL_ARB_multitexture required</B>$
$

]OpenGLPreviewOpenGL &actOpenGL
@#opengl.gif@ Preview display by OpenGL. $
Next, %ViewTools%$
@Footer

$
<HR>
$
[] 

@Header


$
<HR>
$
|ViewTools Perspective_Tools
@#viewoption.gif@@#zoomin.gif@@#zoomout.gif@@#handtool.gif@@#zoomtool.gif@@#viewrolltool.gif@@#areazoom.gif@@#lighttool.gif@$
]ViewOption View change window display
@#viewoption.gif@
Show %ViewOptionWindow%. $

]Zoomin zoomin &actZoomIn zoomin.gif
@#zoomin.gif@
Zoom in on the current view. $
$
]Zoomout zoomout actZoomOut zoomout.gif
@#zoomout.gif@
Zoom out of the current view. $
$
]HandTool &actViewHand handtool.gif
@#handtool.gif@
Moves the gaze point. $
$
]ZoomTool zoom tool actViewZoom zoomtool.gif
@#zoomtool.gif@
Zoom in and out by dragging the mouse. $
$
]ViewRollTool Dolly Tool actViewMove viewrolltool.gif
@#viewrolltool.gif@
Move the viewpoint by dragging the mouse. $
$
]RegionZoomTool Region Zoom Tool actViewZoomRect areazoom.gif
@#areazoom.gif@$
Fits the specified range to the view. (not working)$
$

]LightTool light tool actLightMove lighttool.gif
@#lighttool.gif@$
$
Move the light by dragging the mouse$


$
<HR>
$
|QuickTool
@#quicktooloption.gif@@#quickalt.gif@@#quickaltshift.gif@@#quickaltctrl.gif@@#quickctrlshift.gif@@#quickspace.gif@$

Sets the tool that is temporarily selected by combinations of Alt, Shift+Alt, Ctrl+Alt, Shift+Ctrl, Space and left mouse click. $
When you press the button corresponding to each key, a menu of tools included in %EditTools% and %ViewTools% will be displayed, so select the tool you want to set. $

]QuickAlt Alt key
@#quickalt.gif@
Sets the function to be invoked when the Alt key is pressed.
%ViewRollTool% is assigned by default. $
$
]QuickAltShift Alt+Shift key
@#quickaltshift.gif@
Sets the function invoked when pressing Alt+Shift.
%FacetTool% is assigned by default. $
$
]QuickAltCtrl Alt+Ctrl key
@#quickaltctrl.gif@
Sets the function to be invoked when pressing Alt+Ctrl.
%CutTool% is assigned by default. $
$
]QuickCtrlShift Ctrl+Shift key
@#quickctrlshift.gif@
Sets the function to be called when Ctrl+Shift is pressed.
%ScaleTool% is assigned by default. $
$
]QuickSpace Space key
@#quickspace.gif@
Sets the function to be invoked when the Space key is pressed.
%HandTool% is assigned by default. $
$


$
<HR>
$
|ImageBar Image_bar
@#imgoption.gif@@#openimg.gif@@#copyimg.gif@@#raunchpaint.gif@@#pasteimg.gif@@#pentool.gif@$
$

$
<HR>
$
|PropertyWindowBar Property_bar
  @#property.gif@$
$

$
<HR>
$
|UndoBar
@#undo.gif@@#redo.gif@$
]UndoButton Undo &actUndo
@#undo.gif@
]RedoButton Redo &actRedo
@#redo.gif@
$

$
<HR>
$
|WaySplitBar Drawing_Split_bar
@#splitoption.gif@@#personly.gif@@#4way.gif@@#2way1.gif@@#2way2.gif@@#2way1uv.gif@@#2way2uv.gif@@#4wayuv1.gif@@#4wayuv2.gif@@#customway.gif@$
$
You can change the division format of %3DWorkPlanes%. $
$

$
<HR>
$
|StatusBar Status_bar
  @#statusbar.gif@$
$
Next, %Window%$
@Footer

$
<HR>
$
[]
@Header
:Window Windows

Windows for setting options for each tool and manipulating objects $
The pin icon at the top right of the window changes to $
@#pin_float.gif@ will automatically close when the mouse cursor goes out of the window. $
@#pin_lock.gif@ does not close automatically. $
$
You can also %Dock% to the right or left edge of the main window by dragging this icon. $


$
<HR>
$
|ObjectWindow Object_window
Panel for object management. $
@#objectwin.gif@$

$
1) curved mesh object $
2) mesh object $
3) Name of surface mesh object $
4) EDITBOX$ for renaming mesh objects
5) Sub-mesh (polygon group) name $
6) Show/hide toggle icon $
7) UV Template $
8) Mesh operation button. From the left: fit mesh, select all, lock$
9) Object import $
10) Create new mesh object $
11) Create new sub-mesh$
12) Delete mesh object/sub-mesh$
$

$
<HR>
$
|ToolOptionWindow tool option
This window is used to set options for editing tools. $
Setting items change depending on the tool selected in %EditTools%$

]ToolMoveWindow move tool option
@#op_move.gif@$
Sets whether to use the %SmoothBend% function when moving vertices in the %SelectMagnet% state. $
Auto: Automatically turn on %SmoothBend% when vertices are moved by a certain amount. $
Scale Transform: During %SmoothBend%, changes the scale of the object to match the distance moved. $
$
]ToolFacetWindow face tool options
@#op_facet.gif@
$
]ToolPolylineWindow polyline tool options
@#op_polyline.gif@
$
]ToolAddPointWindow Add vertex tool option
@#op_addpoint.gif@
$
]ToolClayWindow Clay_Tool_Options 
@#op_clay.gif@
$
]ToolExtrueWindow Extrude Tool Options
@#op_extrude.gif@
$
]Tool2DRotateWindow
@#op_2drotate.gif@
$
]ToolScalingWindow
@#op_scaling.gif@
$

$

$

<HR>
$
|SelectOptionWindow select option
Sets options for the selection tools selected in %SelectTools%. $
@#op_selpoint.gif@$
$
@#op_selectrect.gif@$
$
@#op_selectmagnet.gif@$
$
$
$

$
<HR>
$
|ViewOptionWindow view change window
Set the viewpoint direction to the specified position or change it to the memorized position. $
@#ViewWindow.gif@$
(1) Looking at the XZ plane from the -Y direction$
(2) Looking at the XY plane from the +Z direction$
(3) Looking at the ZY plane from the -X direction$
(4) Looking at the ZY plane from the +X direction$
(5) Looking at the XY plane from the -Z direction$
(6) Looking at the XZ plane from the +Y direction$
(7) Perform undo and redo of viewpoint change. $
(8) Memorize the current viewpoint. $
$


$
<HR>
$
|3DLoope 3D_Loupe &actLoope
Enlarge the area around the cursor to display the wireframe. $
Used to select vertices in complex parts. As the number of polygons increases, the processing becomes heavy, so switch ON/OFF as appropriate.
$
@#3dLoupe.gif@
$
$

$
<HR>
$
|PropertyWindow Property_window
Displays the number of vertices, edges, and faces of an object. $
$
It is also possible to change the position and size of the currently selected element to %Numeric%. $

$
@#op_property.gif@
$
$


$
<HR>
$
|VecCalc Vector Calculator
This is a function to assist numerical input. (Window/Window display/Vector calculator)$
$
Currently, keyboard input is not fully supported,
Input must be done with the mouse. $
$
When entering vector values (coordinate values), $
1 Enter three values (X, Y, Z values) separated by commas$
2 Press the left mouse button anywhere on the drawing $
$
There are two methods of $
$
By using this function together with %Numeric%, for example, two objects can be connected at arbitrary vertices
can be placed for $
$
1. Click the vertex, etc. of the destination you want to contact. $
2･Click [-] of %VecCalc%$
3･Click the original vertex you want to touch $4･Click the [=] of %VecCalc% to calculate the distance between the two vertices$
5･Click [Copy] of %VecCalc% and copy it to the clipboard $
6･Select all the original objects you want to touch $
7･Open %PropertyWindow% and set the position specification to "Rel" $
8･When you press the button on the right side of the position input field, the calculated coordinates are pasted $
9. Press "Apply" to move the selected object. $
$
If you want to continue entering numbers, click the object once and
Please acquire the current position again. $
$

Operations such as inner and outer products of vectors can also be implemented if necessary. Please contact us if you have any requests. $
$

$
<HR>
$
|Dock Docking
$
]DockToolBar Dock toolbar
$
From beta5.1, the toolbar is no longer floating. $
$
However, you can move the toolbar up, down, left, or right to your preferred location from the toolbar's right-click menu. $
You can also change the order of the bars by dragging the toolbar. $

$
]DockWindow Docking windows
Click the pin icon @#pin_float.gif@, @#pin_lock.gif@ at the top right of the window
You can %Dock% to %PanelTray% by dragging and dropping it to the right or left edge of the main window. $
Drag @#pin_dockrelease.gif@ to release %Dock%. $
$

$
<HR>
$
|PanelTray Panel_tray
There are a total of two panel trays on the right and left edges of the name window, and various windows can be docked on the trays.
$
When multiple windows are %Dock%ed in the tray and do not fit in the tray, a scroll bar will be displayed in the tray and scrolling will be displayed.
However, you don't need to use the scrollbars to bring the desired window into view. $
By pressing the call button for each window located on the left edge of the tray, the desired window will immediately scroll in. $
$
Next, %OptionConfig%$
@Footer

$
<HR>
$
[] 
@Header


$
<HR>
$
|OptionConfig Preferences

$
Next, %PolygonOperation%$
@Footer


$
<HR>
$
[]
@Header
\HowTo 3.HowTo


:PolygonOperation polygon operation


$
<HR>
$
|MakePrimitive Basic shape creation
$
MarbleCLAY is a polygonal modeler. You can create polygons one by one from scratch, but first you can do the following steps to create primitives
Experience the easy vertex selection function that is a feature of MarbleCLAY. $
$
]HowToSetPrimitive Primitive Placement
As an example, I will explain how to make a sphere. $
$
1. First, open a suitable document with %FileMenu%->%FileNew% or %FileMenu%->%FileOpen%. $
$
2.If you opened a new document with %FileMenu%->%FileNew%, open %MeshMenu%->%MeshPrimitive% and execute %MeshPrimSphere%. $
$
3. If you opened an existing document with %FileMenu%->%FileOpen%, select which object to add the primitive to. $
$
3-1.Open %ObjectWindow% and select the parent object (or child object). $
3-2. Select Root if you want to generate a primitive as a separate object. $
3-3.Open %MeshMenu%->%MeshPrimitive% and execute %MeshPrimSphere%. $
$


$
<HR>
$
|HowToSelect
Describes how to select objects. Select all or part of the object created by %HowToSetPrimitive% using one of the methods below, then proceed to "%MoveObjectVertex%". $
$
]SingleClickSel Normal selection method
Select %SelectPoint% and select the type of element you want to select with %SelectFilter%. $
Then when you move the mouse cursor over the element you want to select, the element will be %HighlightElement% and a mouse click will select that element. $
$
It is often used when fine-tuning and arranging shapes. $
$
]AreaSel Rectangle selection
1. Select %SelectRect% and select the type of element you want to select with %SelectFilter%. $
Next, drag the mouse cursor to draw a rectangle and release the mouse button to display the menu.
You can choose to select all elements within the rectangle or select according to the filter settings. $
$
2.In %SelectPoint% mode, if you start dragging the mouse from a place where the element does not exist, you can select the same as 1. $
$
Also, %SelectOptionWindow% allows you to choose between ``select by menu'', ``always select all'', and ``always select with filter''. $
$

]DoubleClickSel Double click selection
This is the easiest way to select an object, which is possible in modes such as %MoveTool%$
%ScaleTool%, and %Roll2D%. $
$
1. Double-click the vertex or face of the object to select all connected parts. $
$
2. If you double click on an edge, the edges that are contiguous to that edge will be selected$
(see *%EditDeleteEx%)
$

]EdgeSel Continuous edge selection
See %DoubleClickSel%$

]ObjectSel Connected polygon selection
See %DoubleClickSel%$

]BeltSel Belt selection
1. Press the left button on the edge of the polygon you want to select. $
$
2.Press the left button and click the right button to select a belt of polygons. $
$

]PaintSel mouse continuous selection
1. Select %SelectPaint% and select the type of element you want to select with %SelectFilter%. $
$
2.When you start dragging the mouse over an unselected element, you can select the elements connected to that element continuously. $
$
]AllSel Select All &actSelectAll
%EditMenu%->%EditSelAll%Menu$
can be used to select all current objects. $

$
]DopelEdgeSel multiple edge selection
%EditMenu%->%EditSelDopel%Menu$

If there are multiple edges with the same set of vertices, select one edge. $
When outputting to a file format that does not allow multiple edges, such as RDS output, first
After selecting the multiple edges with this command, do an %EditDelete% to remove the multiple edges. $
(In many cases, the shape changes slightly, so manual correction is required) $
$
]SingleEdge Single edge selection
%EditMenu%->%EditSelSingle%Menu$
Select a single edge with no faces. $
$
]TriEdgeSel Select shared edge of two triangular faces
%EditMenu%->%EditSel2Tri%Menu$
Select edges that share two triangular faces. However, two triangular faces are selected here.
It is only the thing that the combined shape becomes a shape close to a square. $
After running this command, %EditDeleteEx% will delete an object consisting of many triangular faces.
It can be an object consisting of quadrilateral faces. $
However, since it uses a simple algorithm, it is not possible to select an object that looks like a square surface.
There are many things. $
$
]SelectSameMaterial Same color
Select &actSelectSameMaterial
%EditMenu%->%SelectSameMaterial%Menu$
Selects faces that have the same color attributes as the currently selected faces and are contiguous. $
$
]SelectByObjectWindow Select by object window
Clicking the icon (the cone surrounded by a red frame) to the right of the polymesh name in the object window selects all the faces that make up that polymesh. $
$

$
<HR>
$
|MoveObjectVertex Move/Rotate/Scale
]SelectObject select object
To move an object or vertex, you must first select the part to be moved. $
See %HowToSelect% to select the object you want to move. $
$
]MoveMove move
Select %MoveTool% and drag selected objects or vertices to move them in a direction parallel to the workplane. (See %3DWorkPlanes%)$
$
Even with %MoveTool% selected, you can select and move other vertices. $
$
]ManiMove Move using the manipulator
$
If you select %MoveTool% and do %ViewMenu%->%ViewMani%$
%Manipulator% will appear in the selection. $
$
By dragging the arrows for each axis of this %Manipulator%, you can move the selected part along each axis (regardless of the state of the workplane). $
$
]RollRoll Rotate
Selecting %Roll2D% displays roll control points around the selected element. Drag this control point to rotate the selection in a direction parallel to the workplane. $
Also, by Shift+clicking an appropriate vertex, you can set that vertex as the center point of rotation. $
$
Even if %Roll2D% is selected, you can select another vertex and rotate it. Furthermore, you can also move the selected element by dragging the selected element. $
$
$
]ManiRoll Manipulator rotation
$
Select %Roll2D% and do %ViewMenu%->%ViewMani%$
%Manipulator% will appear in the selection. $
$
By dragging the arrows for each axis of this %Manipulator%, you can rotate the selection around each axis (regardless of the state of the workplane). $
$
]ScaleScale scale
Selecting %ScaleTool% displays scaling control points around the selected element. By dragging the point at the vertex of the cube among these control points, you can scale the selected elements in the direction parallel to the workplane. $
Dragging the control point at the center of the cube face scales the selected elements in the direction perpendicular to the cube face (regardless of the workplane setting), and holding down the Ctrl key while dragging will do the opposite. You can scale around the control point on the side face. $
Also, by Shift+clicking an appropriate vertex, you can set that vertex as the center point for scaling. $

$
Even if %ScaleTool% is selected, you can select other vertices and scale them. Furthermore, you can also move the selected element by dragging the selected element. $
$

$

$
<HR>
$
|MakeFacet Polygon_generation_with_mouse

Basically, we use %FacetTool% to create faces. $
With %FacetTool% selected, from %UseFacetTool% to %Split%
You can work smoothly without being conscious of mode switching.
Is possible. $
$
Because there are many elements that are done automatically, depending on the user
There is a part that I am taking care of too much,
Restricting functions by setting tool options takes time and effort
Instead, configure it to do exactly what the user intended
It is also possible. $
$

]UseFacetTool Create_a_single_face
To create a single face: $
1. Select %FacetTool%$
2. Click the left button anywhere $
3.Click two points in succession$
4. Click again at the first clicked point$
$
]UseExist Make faces continuously 1
To create a face using existing faces and edges, $
1. Select %FacetTool%$
2. Select any vertex and click $
3.Continue to click another place$
4. A face is automatically drawn on the square or triangular part. $
$
However, "user-explicit" face generation in tool options
If you are in mode, the surface is not automatically stretched. always
You will use the %UseFacetTool% method. $
$
]StripMakePoly Make 2 faces continuously
Only v2 version, but strip input can create faces continuously. $
$
1. Select %FacetTool%$
2.Click while holding down the Shift key to draw a U-shape. $
3.A square face is attached to the U-shaped part. $
4.Click while holding down the Ctrl key to draw a Λ character. $
5. A triangular face is put on the Λ part. $
$
In v2alpha4, getting used to making the intended surface well is necessary. $
$
]Triangulate Make a square into two triangles
When using %FacetTool%, it is possible to turn quadrilaterals into triangular faces. $
1. Select any vertex of the face you want to divide and click $
2. Select the other vertex on the diagonal line of the face and click $
A new edge connecting the two clicked points is created, and the original face is
Divided into triangles. $
$
See also %MeshTriangratePoly%. $
$
]Split Split an existing face
You can use %FacetTool% and %PolyLineTool% to split the quads. $
1. Click on any edge of the face you want to split $
2. A vertex at the clicked position is created and the face is automatically divided into two. $
3. At this time, the newly created edges are called semi-definite edges. $
$
As it is, it will be divided into one square and one triangle,
You can divide it into two quadrilaterals by performing the following operations in succession. $
4. Click on the edge opposite the edge you just split $
5. Then a new edge connecting the two clicked points will be created, and the original rectangle will be
It will be divided into two rectangles. $
6. The semi-definite edges have now been removed. $
7. By continuing to divide the adjacent surface, it is possible to divide a continuous surface. $

$
See also %CutTool%$
%AddPointTool%. $
$

]FacetWarning1 Caution when creating a face 1
Since the creation of faces is automatically performed on the parts where quadrilaterals and triangles are
The surface may be stretched in an unintended place. $
$
For example, a newly created edge can compose a triangle and a quadrilateral at the same time.
You might. At this time, MarbleCLAY cannot determine which side the user wants to put the surface on.
Therefore, I choose the appropriate one and paste the surface. $
$
To avoid this use: $
$
1. Specify to generate either triangular or quadrangular faces. $
Uncheck the one you don't want to create in the tool option check box, or
When specifying vertices with %FacetTool%, click while pressing Ctrl (triangle only) or Shift (rectangle only). $
2. Set surface generation to "user specified" mode $
Make your selection in the radio group of tool options. $
$
]FacetWarning2 Note 2 when creating a face
MarbleCLAY is limited to 2 faces per edge. It is not possible to put a face on a place that constitutes three or more faces. $
$
However, there is either a bug or the imported shape contains such a shape
In such a case, an edge that apparently consists of three or more faces may be created.
I have. In reality, there are no edges that form three or more faces,
There are multiple edges at the same position, but it is inconvenient if it is left as it is (RDS format
Export cannot be performed normally, the shape becomes unexpected when curved, etc.), so the following
A procedure must remove such edges (called multiple edges). $
$
1.Edit/perform multiple edge selection$
2. Run Edit/Delete$
3. Due to the deletion, the necessary aspects may also be lost. If so, fix it manually
is needed. $

]UseGuide Use guidelines
How to paste a surface along a line created by %PolyLineTool% or %DrawGuide%$
Even though it is a guideline, it is the same as a normal edge, so use methods such as %UseExist%
It is possible to create faces, but the number of vertices of the guideline is limited to the shape you want to create.
It can be difficult to work with too many or too few vertices
Therefore, do the following: $
$
Some overlap with the description in %DrawGuide%$
1. Select all guidelines and give them a new name. (only guidelines in the object)
If it doesn't exist, leave it as is)$
2. In the object window, click the lock icon next to the name you gave the guideline
$ to lock
$
With this, operations such as moving and dividing will not be performed on the guideline, and further vertices will be
Since it will not be displayed, it will be easier to perform surface creation operations. Specifically, $
$


$
<HR>
$
|DrawGuide draw a guideline
Instead of suddenly creating a polygon, first create a line that serves as a guide, then create a polygon along that guide.
There is also a way to create one.
$
]UsePolyline Use Polyline Tool
If you know the shape of the polygon you want to create to some extent, use %PolyLineTool% to create a guideline with the same degree of roughness as the final polygon you want to create.
It would be nice to write $

]UseFreeHand Use the freehand tool
If you have a tablet, or don't need guidelines as rough as the final polygons you want to make, %FreehandlineTool% is a quick way to
You can write guidelines. $
$
]GuideLock Lock guideline
For guides created with %FreehandlineTool%, the guideline becomes part of the polygon during the polygon creation process, which can be very annoying.
Because there are many, it is recommended to lock when the guideline is made. $
$
Clicking the padlock to the right of the guideline in %ObjectWindow% locks the guideline. $
%UseGuide% also has documentation on locking. $
$
$
<B>TODO: Insert figure here</B>

$


$
<HR>
$
|UseExtrude Use the extrude tool

]MakeFacetExtrude Face generation by extrusion
Similar to %FacetTool%, this is a function for creating faces, but this uses existing faces to create faces. $
The color of the face will be inherited from the existing face. $

1. Select %ExtrudeTool%$
2. In the Tool Options window, select "Parallel Extrude, Bevel Extrude, Move Extrude
choose one of the $
3. Select the face you want to extrude (see %AnotherSel%)$
4. Place the cursor over the selected part, and press the $ button while pressing the left mouse button.
4-1.Drag to the right to extrude the surface in the direction of the surface (parallel extrusion, bevel extrusion) $
4-2.Drag to the left to extrude the face toward the back of the face (parallel extrusion, bevel extrusion) $
4-2. Drag to extrude the face in that direction (move extrusion) $
$

]MakeFacetFromEdge Create face from edge
Extrude edges in any direction. $
However, the extrusion format specification is ignored and "move extrusion" is performed. $
$
1. Select %ExtrudeTool%$
2. Confirm that "Extrude edges and vertices" is checked in the tool option window $
3. Select the edge you want to extrude (see %AnotherSel%)$
4. Place the cursor over the selected part, and from there hold down the left mouse button and
Drag to extrude faces in that direction$
$
@#edgeextrude.gif@
$
]MakeFacetFromEdge Extrude vertices
Used with %MakeFacetFromEdge%. If you want to create a face in the shape shown below, %MakeFacetFromEdge%
You won't get the faces you want, but this kind of shape is very common when you use %MakeFacetFromEdge% to create faces. $
$
In such a case, you can extend the surface by performing the following operation. $
1. Select %ExtrudeTool% (optional if already selected)$
2. Confirm that "Extrude edges and vertices" is checked in the tool option window $
3. As shown in the figure, drag the vertex of the part where you want to extend the surface diagonally and release the mouse button on the arbitrary place or on the other vertex $
(Cannot extrude multiple vertices at once)$
$
@#vertexextrude.gif@
$



$
<HR>
$
|Fusion Synthesis
]FusionPointByMouse Combining vertices by mouse operation (drag & weld)
In %FacetTool% mode, drag any vertex over another vertex and drop it to weld the two vertices together. $
$
]FusionPoint Vertex Merge
You can weld vertices by selecting multiple vertices and running %MeshMenu%->%MeshWeld%. $
At this time, in the dialog, force all vertices to be welded to one vertex (%ForceWeld%) or
You can choose to weld only vertices that are close together.
$
]FusionPoly Compositing Faces
Select the faces you want to combine and the edges that share the faces, and execute %EditDeleteEx% twice to combine the faces into a single quadrangular face.
can be converted. $
Synthesizable conditions are $
  (+)  Triangular face + Triangular face $
  (+)  Square face + Square face $
is the case. $
$


$
<HR>
$
|Numeric Numeric value input

By entering a number in the position field of %PropertyWindow%
It is possible to move the currently selected element. $
Absolute value specification and relative value specification are possible for the input method. $
$
By entering a number in the size field of %PropertyWindow%
It is possible to enlarge or reduce the currently selected element. $
Absolute value specification and magnification specification are possible for the input method. $
$
$
*Caution  (+)  Input numerical values after moving objects by inputting numerical values.
If you want to do so, click the object once and click the object's new
Please reacquire the position and size. $

%VecCalc% can be used to aid numeric entry. $
$

$
<HR>
$
|Nudge

By pressing Alt + cursor key, it is possible to move the selected element slightly. $
$
If you press the cursor while the 3-view drawing is active, it will move slightly in the direction you pressed the cursor. $
$
When the perspective view is active, Alt+left cursor is -Y direction, Alt+right cursor is
Y direction. $
ALT+up cursor is -X direction, Alt+down cursor is X direction. Hold Alt+Ctrl and move the up cursor in the Z direction and the down cursor in the -Z direction. $
$
The movement distance can be changed in the environment settings, and by pressing Alt + cursor key while pressing the space key, the set movement distance will be x10. $
$
<B>From Beta5.1, the specification was changed to press the Alt key at the same time. However, if you change the environment settings, you can perform nudge operations with only the cursor keys as before. </B>
$
Next, %Manipulator%$
@Footer

$
<HR>
$
[]

@Header
:Manipulator Manipulator
Manipulators can be used to restrict movement of vertices, etc., to the directions of each axis of world coordinates, or to the normal direction of any surface or the local coordinate axes of parts/bones. $
$

$
<HR>
$
|WorldManipulator Normal manipulator ON &actViewManipulator
This is the state at the beginning of startup. $
$
You can move the selection along the world coordinate axes (when %MoveTool%) or rotate it (when %Roll2D%). $


$
<HR>
$
|LocalManipulator Local manipulator ON &actViewLocalManipulator
You can move/rotate along the normal direction of the last clicked face/vertex, the direction of edges, and the local coordinate axes of parts/bones. $
$

$
<HR>
$
|ManipulatorOff Manipulator OFF
You can hide the manipulator by executing %WorldManipulator% again when the normal manipulator is displayed and %LocalManipulator% when the local manipulator is displayed. $
If the manipulator is in the way, such as when editing a complicated place, turn it off. $
$
Next, %ObjectHandling%$
@Footer

$
<HR>
$
[] 

@Header
:ObjectHandling group operations

MarbleCLAY has a window called %ObjectWindow% for object management.In this window, you can change the name of the object or group it. $
$


$
<HR>
$
|MakeObject object creation

]ob_Startup State immediately after startup
Right after starting MarbleCLAY or creating a document with %FileMenu%->%FileNew%, there are no objects. $
At this time, the display in %ObjectWindow% is as shown below. ("Root" is an item that indicates all objects. Since there are no objects here, there are no items under Root.)$
$
@#obj_null.gif@$
$
$
]ob_firstmake Make first object
In this state, if you make some polygons by methods such as %MakePrimitive% or %MakeFacet%, one object will be automatically created in %ObjectWindow%. $
$
The new object is named "NewObject" and the polygons (polymesh) within the object are named "Mesh-0". $
(If you create an object with %MakePrimitive%, the name of the polymesh will be "Sphere", etc., but please read it accordingly.)$
$
@#obj_firstmake.gif@ @#obj_work_firstmesh.gif@$
$
A single object can contain multiple polymeshes. In the state above, the newly created object-
"NewObject" is selected (dark and inverted) and selecting the object also selects all the polymeshes in the object (here "Mesh-0").
state. $
$
$
]obj_addpoly Add Polygon
With "NewObject" selected, if you add more polygons, the added polygons will belong to the appropriate polymesh in "NewObject". Here the only polymesh is "Mesh-0"
Therefore, it will be "Mesh-0" unconditionally. $
  @#obj_work_secondmesh.gif@$
  $
See %RuleAddMesh%$
$
$
]obj_newpolymesh Add polymesh name ①
There are two ways to add a polymesh name, but the first method is to add it by operating %ObjectWindow%. $
$
@#obj_newmesh.gif@$
If you click the icon indicated by the arrow in the above figure among the icons lined up at the bottom of %ObjectWindow%, $
A new polymesh named "Mesh-1" will be created under "NewObject". $
@#obj_newmesh2.gif@$
$
$
]obj_addpoly2 Add polygon to "Mesh-1"
If you add a polygon to "NewObject" in this state, in many cases the polygon will belong to "Mesh-0". $
If you want to be sure to add polygons to "Mesh-1", you need to click on "Mesh-1" in %ObjectWindow% so that only "Mesh-1" is selected. $
$
@#obj_selmesh1.gif@ @#obj_work_mesh1.gif@$
As shown above, if you add a polygon with "Mesh-1" selected, the polygon will belong to "Mesh-1". $
(The colors of the polygons have been changed to make it easier to see in the above figure)$
Also, in this state, polygons other than those belonging to "Mesh-1" become translucent and cannot be edited. $
$
$
]obj_newpolymesh2 Add polymesh name②
I will explain the second way to add the polymesh name. $
In %ObjectWindow%, select "NewObject" to make the whole object editable. $
$
@#obj_newmesh2.gif@ @#obj_work_naming.gif@$
$
Next, select any polygon (here, select the second polygon), click the right mouse button to display %ContextMenu%, and execute %ContextNaming1%->%ContextNaming2%,
A dialog for entering the polymesh name will appear. $
$
@#obj_dlg_naming.gif@$
$
In the dialog, enter the name you want to add ("new-mesh" here) and press the OK button, the selected polygon will become "new-mesh" and the polymesh name will be displayed in %ObjectWindow%. will be $
$
@#obj_3mesh.gif@ @#obj_work_3mesh.gif@
$
$
]RuleAddMesh add polygon and polymesh name
In order to predict which polymesh the polygon will belong to when we add it, we need to know the following rules: $
$
Rule 1: %Obj If only one polymesh name is selected in ectWindow%. (Reference.%obj_addpoly2%)$
  (+)   All newly created polygons belong to the polymesh. $
$
Rule 2: If the entire object is selected in %ObjectWindow%. (If the "NewObject" part is selected in this example) $
  (+)  Polygons created using the vertices and edges of existing polygons belong to the same polymesh as the used parts. $
  (+)  Polygons created using vertices and edges belonging to multiple polymeshes belong to one of the polymeshes used,
Since it is uncertain which polymesh it belongs to, manually assign a polymesh by the method %obj_newpolymesh2% after creation. $
  (+)  In many cases, polygons created without using existing vertices and edges at all are polymeshes displayed at the top in %ObjectWindow%
belongs to $
$
$
]Grouping polymesh grouping
Multiple polymeshes can be grouped. $
By grouping, you can show/hide or select multiple polymeshes at the same time. $
$
@#obj_group.gif@$
Select the polymeshes you want to group (here select "Mesh-0" and "Mesh-1"), display the right-click menu and execute "Group". $
(To select multiple polymeshes, hold down the Ctrl key and click the polymesh names, or left-drag the polymesh names with the mouse.)$
$
@#obj_group2.gif@$
A new group will be created (named "GroupMesh-0" in the image above) and the original polymesh will belong under that group. $
$
$
]UnGrouping
You can ungroup the created group by selecting "Ungroup" from the right-click menu. $
$
$
]GroupRename Rename
The object name, polymesh name and group name can be changed using the edit boxes at the top of %ObjectWindow%. $
$
@#obj_rename1.gif@$
Click the part you want to rename ("GroupMesh-0" here), enter the new name "Group" in the edit box, and press the enter key. $
$
@#obj_rename2.gif@$
The name is changed to "Group". $
$
Next, %UseWheel%$
@Footer

$
<HR>
$
[] 

@Header
:ViewChange Change the viewpoint


$
<HR>
$
|UseWheel middle mouse button
You can move the gaze point by dragging while pressing the middle button of a 3-button mouse such as a wheel mouse. $
$
Starting with Beta5, holding down the middle button and dragging the right mouse button rotates the viewpoint around the point of interest. $
$
In addition, it is possible to change the above operation or assign other functions in the environment settings. $
$


$
<HR>
$
|QuickArea
$
A view point manipulation method using a special function area that exists around the boarders of each view display.$
By default, view point change tools are set to activate when the mouse pointer reaches the boarders, making it easy to pan, rotate and zoom in/out the viewpoint.$
Different functionality are assigned to %PerspectiveView% and %3WayView%, and you can assign different functions to the QuickArea in the %OptionConfig% dialog. $
$
Note about all the toolbars in MarbClay: The first icon/button of any toolbar only has a mouse right click feature, where you can specify the %PanelTray% location to dock to or removing it.
$
Note: QuickArea is optional, mostly intended for tablets where inputs are limited or mouse were the mouse set up have no view controls.$
The boarder area around each view display is called QuickArea. $
Place the mouse pointer in these areas allows you to perform quick view actions, pan, rotate and zoom. $
Although this area is not visible, If you move the mouse pointer to the outer edges of each view, the mouse pointer will change to reflect the action it will perform. $
$
The QuickAreas are configured in settings, Option menu -> configuration... -> view (QuickArea). $
Each section of the view display are assigned an action here, click the 4 center buttons to assign an action for Left, Top, Bottom, Right boarders, respectively, ie pan (left), rotate(top), zoom(bottom), pan(right). $
$
]PerspectiveView
When the cursor is brought close to the side of the perspective drawing, the cursor shape becomes @#curdolly.gif@.
In this state, if you hold down the left mouse button and drag, the viewpoint will rotate around the fixation point. $
Similarly, holding down the right button and dragging up or down moves the viewpoint forward or backward. $
$
]3WayView
When the cursor is brought close to the side of the three-sided drawing, the cursor shape becomes @#curhand.gif@.
In this state, drag the mouse while pressing the left button to move the point of interest. $
Similarly, pressing the right button and dragging vertically will scale the drawing. $

$

$
<HR>
$
|UseQuickTool Use Quick Tool
In the initial state, the ALT key is assigned to the viewpoint change tool, and the SPACE key is assigned to the fixation point change tool. $
$
Hold down the ALT key and drag the mouse button in a perspective drawing to rotate the viewpoint around the point of interest. $
Similarly, pressing ALT+Right button and dragging up or down moves the viewpoint forward or backward. $
$
If you hold down the SPACE key and drag the mouse button on a 3-sided drawing or a perspective drawing, the gaze point will move. $
Similarly, ALT+RIGHT + DRAG vertically scales the drawing. $
$
QuickToolBar can be used to change key assignments. $
$
$

$
<HR>
$
|Select on the UseNormal toolbar

You can also operate the viewpoint by selecting the viewpoint change tool or fixation point change tool in %ViewTools%. $
$
$

$
<HR>
$
|SmartScroll Use smart scrolling
If you use a device called SmartScroll sold by WACOM Co., Ltd., you can change the viewpoint with your left hand. $
$
*Before using, drag and drop the attached MarbleCLAY.ssp file to the SmartScroll window.
$

$
<HR>
$
|Using the ArvelMouse trackball mouse
If you use a mouse with a trackball sold by Arvel, you will be able to change the viewpoint with the trackball. $
  (+)  Please assign "view roll" to the function of the wheel in the environment settings. $
  
  $
Next, %SplineSurf%$
@Footer

$
<HR>
$
[] 
@Header

:SplineSurf surface
MarbleCLAY is a polygonal modeler, but allows surface modeling using two different formats: %ChangeSplineSurf% and %ChangeSplinePatch%. $
Since the surfaces used in these curved surface models are always automatically generated from polygon models, modeling with a high degree of freedom, which is a feature of polygon modeling.
You can maintain the feeling of operation. $
$
However, modeling operations are always done on polygons, which has the following drawbacks: $
1. It is not possible to add vertices on the surface or make holes in the surface without destroying the outline of the surface. (%ChangeSplinePatch% may be resolved to some extent in future versions)$
2.Since curved surfaces are handled indirectly through polygons, it is difficult to intuitively grasp the editing results. It lacks the sense of touching the model directly. (However, I think it is possible to get used to this.)
$
]MakeSplineSurf Surface generation
The surface generation method is very simple. $
1. First create a suitable object by referring to %PolygonOperation%. $
2. Select the object you want to curve in %ObjectWindow%. $
3. Doing %MirrorMenu%->%ChangeSplineSurf% or %MirrorMenu%->%ChangeSplinePatch% will curve the selected object. $

]FreezeSplineObject polygonize surface
If you %Export% a curved surface model created with MarbleCLAY for use in another application, only the polygons before surface conversion will be exported. $
If the application has the ability to generate surfaces from polygons, this is possible, but if not, the surface must be polygonized before %Export% using the following procedure. $
$
1. Select the object you want to polygon with %ObjectWindow%. $
2. Run %MirrorMenu%->%FreezeSpline%$
3. Enter the level of polygonization. (Example: Entering 4 divides one face into 4x4=16 polygons.)$
4. A polygonal object will be generated with the name <original name> + "(Freeze)", so select this and perform %Export%. $

]TuneSplineStyle Fine tuning of surface

  (+)  When %SharpEdge% is used, the edge of the curved surface can be set. (Run %UnSharpEdge% to return to original state)$
  (+)  You can sharpen or smooth the selected vertices by executing %SharpVertex%$
%UnSharpVertex%, etc. $
  (+)  In %MoveTool% mode, right-drag the vertex whose weight you want to change to the right to increase the weight, and right-drag to the left to decrease the weight. $


  $
Next, %SelectiveMirror%$
@Footer

$
<HR>
$
[] 
@Header

:SelectiveMirror Symmetry_Edit

  $
Next, %Template%$
@Footer


$
<HR>
$
[] 
@Header

:Template Sketch display
$
Template images can be displayed in views other than the perspective view as a template for modeling. $
A template can be specified for each object.
$
%ImageMenu%->%ImageModelingTemplate%->%ImageImportToXY%,$
%ImageMenu%->%ImageModelingTemplate%->%ImageImportToYZ%,$
%ImageMenu%->%ImageModelingTemplate%->%ImageImportToZX%,$
When you execute , a dialog for image selection will be displayed, so please select the image you want to paste as a template. $
$
The image is then displayed in the specified view. At this time, the resolution of the displayed image is
It is automatically converted to the set size (default 320x240), and the display position of the template is displayed with a width of size 20 from the position of -10 for each coordinate. $
$
In the future, we plan to make it possible to change the position and size of the template by GUI operation, but this time it is a simple implementation
Therefore, only numerical values can be specified in the provisional dialog. $
$

$
<B>
  
   *Note: If you enlarge the template image too much, the gap between the polygon and the image will increase. Please be careful.$
  
</B>
  $
Next, %ChangeAttribute%$
@Footer




$
<HR>
$
[] 
@Header
:ChangeAttribute color/attribute operation

  $
Next, %UVEdit%$
@Footer

$
<HR>
$
[]
@Header
:UVEdit UV editing
The UV editing function has been restored from Beta5.1. It's still incomplete at this point, so UV values may be lost or malfunction during some operations.
Features include: $
$
1.MarbleCLAY does not treat UV editing as a special thing, but treats it as an extension of polygon editing. $ Therefore, select, move, rotate, scale UV values (called UV vertices in MarbleCLAY)
can be done in almost the same way as normal polygon editing. $
If you feel that it is difficult to operate in a window dedicated to UV editing or using a dedicated menu, etc., which is common in other applications, please give it a try. $
$
@#uvroll.jpg@$
Select UV vertices and rotate with the %Roll2D% tool$
$
$
2. In order to make the UV value operation equivalent to the polygon operation, add the D value as a third element in addition to the UV value and treat it as a three-dimensional object. $
By viewing and manipulating UVDs in a perspective view, the UV vertices of intricate and complex objects are easier to grasp and select. $
(The reason why I chose UVD instead of UVW is that the author does not have an application that can handle objects with UVW values at the moment, so I can't try = W values are not exported.
This is because I wanted to clarify that the third element is a dummy. The term UVW may change in the future. )$
$
@#uvpers.jpg@
$
$
Since UV editing is now treated the same as polygon editing, it currently has the following drawbacks: $
1. It is difficult to understand whether you are editing UVs or editing polygons, and it may be confusing. $
2.Being too obsessed with making UV editing and polygon editing equivalent, there was some confusion in the UI design, and the following functions were not implemented: $
2-1. <S>A UV vertex cannot be welded to another UV vertex</S> <B>You can now drag and weld using the face generation tool. beta5.3</B>$
2-2. Cannot copy and paste the UV values of a face to another face$
$
$

$
<HR>
$
|AttachUVValue UV value assignment

I will explain how to assign UVs and create a texture template using a sample file. $
First, execute %FileMenu%->%FileOpen% and open the "Ceratophrys.mcl" file (Bertz's Frog) in the samples folder. $
$
]UVSelectMesh Select the part you want to assign UV
If you click the icon surrounded by a red frame next to the sub-mesh "top", the meshes of the face, back, and abdomen of Bertsunogaeru are selected. $
Assign a UV value to this part. $
$
@#uvstep1.jpg@$
$
]UVAttach UV assignment
A dialog will appear when you run %ImageMenu%->%UVGenerate%. $
Select "Custom" for the mapping shape, select "Z axis" for the central axis, and press the "OK" button. $
$
@#uvstep2j.jpg@$
]UVCheck1 UV check
Click the 5th icon from the right of %WaySplitBar% to show the UV view. $
It can be confirmed that the U value and V value are assigned in the range of 0 to 1.0. (A range of 0 to 1.0 is enclosed by a thin dotted line in the UV view)$
$
@#uvstep3.jpg@$
]UVCheck2 UVD check
Click the 8th icon from the right of %WaySplitBar% to show the UVD view. (In the figure below, each view is also displayed as %FlatPreview1%)$
If you check the UVD view, you can see that the back and ventral sides of the Bertsu no Frog overlap in the UV view. $
$
Therefore, we decided to cut off the ventral surface and move it. $
$
@#uvstep4.jpg@$
]AbdomenSplit Cut off the ventral surface
1. Select the ventral mesh in the UVD view. (You can also select in a normal perspective drawing, but in that case switch to UVD view before running the next command)$
2. Run %MeshMenu%->%MeshPolySeparate%. $
$
This will separate the ventral UV mesh from the back. $
$
@#uvstep5.jpg@$
]AbdomenRoll Prepare to roll ventral side
1. Select %Roll2D% tool$
2. Shift + click the vertex in the figure below $
$
@#uvstep6.jpg@$
]AbdomenRoll2 Rotate the abdomen
Hold down the Shift key and drag one point of the handle to rotate 180 degrees. $
$
@#uvstep7.jpg@$
]AllUVSet Assign UVs to all faces
When assigning UV to the mouth, eyes, and limbs in the above manner, the UV values often do not fall within the range of 0 to 1.0, so
Select the %ScaleTool% tool, select everything and scale it down to fit between 0 and 1.0. $
$
@#uvstep8.jpg@$
$

$
<HR>
$
|MekeUVtemplate UV template creation
Once the UV assignment is done, create a UV template. $$
When you execute %ImageMenu%->%UVBurn%, a dialog will be displayed, so check "Create after erasing" and enter an appropriate resolution. $
$
@#uvstep9j.jpg@$
]UVTemplate Confirm UV template
Press the OK button in the above dialog to create the UV template. $
$
If you display the UV view, you can see that the template image with the baked UV mesh is displayed in the background. $
$
If you open this template with external software and create a texture, select "UV Template" in %ObjectWindow%$
%ImageMenu%->%ImageCopyToClipborad%
to copy the template image to the clipboard and edit it with external software (you can also change the resolution of the image with external software). $
$
@#uvstep10.jpg@$
$

$
<HR>
$
|UVMapping texture pasting

1. Save the texture image edited with external software as bmp, jpg, etc. $
2. Set the image file name saved in the diffuse light map of the appropriate material $
3. Apply Material to Object$
$
(There is also a method of pasting an externally created image into the UV template again and using the UV template as a texture, but I will omit the explanation) $



$
<HR>
$
|UVFinish completed
Set the image created in the above procedure as a texture, and it will look like this when it is completed for the time being. (previewing bump map using %ShaderPreview%)$
$
@#uv_finish.jpg@
  $
Next, %HighlevelEdit%$
@Footer


$
<HR>
$
[] 
@Header
:HighlevelEdit high level edit


$
<HR>
$
|VertexCollision Vertex Collision Detection

By executing the command immediately after moving the vertex (including extrusion and scaling),
If there is a face between the trajectories moved by each vertex by the operation, the following behavior is performed. $
$
$
<B>
*Note: Since there is no collision detection between edges or between polygons, there are limitations such as vertices slipping through. $
Also, the processing is very heavy. $
</B>


$
<HR>
$
|EffectFilter Effect filter

$


$
<HR>
$
|BooleanCut Boolean cut
<FONT COLOR="#FF8080">v2 only</FONT>$

MarbleCLAY calls the function %@BooleanCut% to find the line of intersection between two meshes and cut the mesh along that line.
This name is inappropriate because it cannot find the difference or sum of two objects like an ordinary boolean.
I feel like that, but as long as you can divide it by the intersection line between meshes, you can then manually process it into a difference or sum shape.
Because it can be done, it is named like this. $
$
<B>This feature is under development, so please expect it to be mostly unavailable. It will be improved in v2 or later</B>
$
$
%@BooleanCut% procedure: $
1. Create two meshes for %@BooleanCut% in the same object. $
2. Select all the faces that make up the two meshes. (At this time, you can easily select by using the %DoubleClickSel% function, etc.)$
3. Run %MeshMenu%->%MeshBooleanCut%. $
4. At the line of intersection between two meshes, the meshes are split. $
$


  $
Next, %SimpleBone%$
@Footer

$
<HR>
$
[]

@Header
:SimpleBone Simple bone
$
Read first %PartsMenu% for more information regarding bones and posing.$
$
MarbleCLAY bones are not intended for animation or export to other applications. Bone specs are
This is because each application is different, so if you design on the premise of exporting, it will be the greatest common divisor and the restrictions will be large. $
(However, since the bone weight information for each vertex is written in the MCL file, I think it is possible to create converter software for other applications) $
$
MarbleCLAY bones were sometimes posed close to the final image while modeling simple pose objects
By checking the shape of the model, it is assumed that it is mainly used to correct deviations from the image and to maintain motivation for modeling work. $
$
For this use, $
$
1.Bones are easy to incorporate $
2. You can easily go back and forth between the deformed state and the normal state. $
3. Modeling can be done while deformed. (not yet achieved)$
$
conditions can be considered. As shown in conditions 1 and 2, I wanted to pursue "simplicity", so I named it "simple" bone. $
$



$
<HR>
$
|BonePrepare Bone preparation

1. Prepare and open a suitable mesh model. (Open Bone_Tut.mcl if there is no suitable model)$
$
or $
$
2. Refer to %PolygonOperation% to create a mesh model. $
$
@#bone1.jpg@$


$
<HR>
$
|BoneDraw Bone Creation
1. Set the workplane to the XZ plane, select %BoneDrawTool%, and left-drag the center of the object to draw a bone. $
You can change the thickness of the bone by right dragging while left dragging. $
@#bone2.jpg@$
$
2. At this time, the bone may snap to the object, and you may not be able to create the bone in the center as shown below. $
(You can turn off %VertexFilter% etc. in %SelectFilter% and create it so that it does not snap to the object when drawing the bone, but here it is said that it has shifted from the center
assume)$
@#bone3.jpg@$
$
3. If the character is a symmetrical model, the first bone should be located on the center plane of symmetry, so
%PartsMenu%->%PartsToWorRun kplane%. $
@#bone4.jpg@$
(Bone moved to symmetry plane.)$
$

4. Drag to a new location (the base of the lizard's neck in this example) and draw the bone, creating a new bone as a child of the previously created bone. $
@#bone5.jpg@$
$
5. Continue to draw bones in this manner. $
@#bone6.jpg@$
$

6. Next, create the arm bones. Keep the XY plane as your workplane. $
Then click on a bone (the torso in the example below) to select it. $
@#bone7.jpg@$
$
7. If you then create a new bone, it will become a child of the selected bone. $
Create the arm bone in the same way. $
@#bone8.jpg@$
$
8. If the position of the arm bone is misaligned when viewed from the front, select the %MoveTool% tool, select the bone at the base of the arm, and move it to an appropriate position. $
@#bone9.jpg@$
$
9. If the object is difficult to see, select "Root" in %ObjectWindow% to activate the object and bone at the same time. $
In addition, if necessary, rotate the bone with %Roll2D% etc. to make fine adjustments.
@#bone10.jpg@$
$
10. Make the right arm bone. $
Selecting the base bone of the arm and executing %PartsMenu%->%ParsMirror% will mirror copy the left arm bone configuration and create the right arm bone. $
@#bone11.jpg@$
$
11. Create all the bones in the same way as before. $
@#bone12.jpg@$
$
12. Select "Root" in %ObjectWindow% again to activate the object and bones at the same time, and check if there is any part of the mesh protruding from the bones. $
In this example, the jaw bone was thin and the mesh protruded, so I selected %MoveTool%, clicked on the jaw bone, and dragged the Y-axis expansion handle to make the bone larger. $
@#bone13.jpg@$
Similarly, change the size of the palm bone, etc. $
(If the handle is difficult to see, turn off %Manipulator%, and if it is difficult to grasp the handle, change the viewpoint appropriately)$
$


$
<HR>
$
|Apply AttachBone Bone
1. After creating bones, select the bones and mesh model in the highest hierarchy and press $
@#bone14.jpg@$
$
2. Run %PartsMenu%->%AttachBoneSimple%. $
@#bone15.jpg@$
The bones appear simple and ready to transform. $
$


$
<HR>
$
|DeformBone Bone deformation
1. Select the %MoveTool% tool, select the bone you want to move, and drag each point on the handle to
Objects are transformed.
@#bone16.jpg@$
$

$
<HR>
$
|DetachBone Detach Bone
If you want to cancel the deformation and edit the mesh, $
Run %PartsMenu%->%DetachBoneSimple%. $
$

$
<HR>
$
|AdvancedBone Advanced bone manipulation
In v2, you can assign bones per vertex, and deactivate/activate only deformation state without releasing bone allocation. $
However, this is not yet documented because the specifications may change. $
$
  $
Next, %HighlightElement%$
@Footer


$
<HR>
$
[]

@Header
:HighlightElement highlight display
Hovering the mouse cursor over an element set by %SelectFilter% will %@HighlightElement% that element. $
$

$
<HR>
$
|HilightAtVertex Vertex highlighting
When the cursor is over a vertex, the vertex color is highlighted with the highlight color and the edges connected to that vertex are
Usually displayed in highlight color. $
If the other vertex connected to an edge is a selected vertex, the edge is normally displayed in the selection color.
Using this function, you can select vertices to some extent arbitrarily even in places where vertices are complicated. $
$


$
<HR>
$
|HightlightEdge Edge highlighting
Edges are highlighted with the highlight color when the cursor is over an edge. $
However, if the vertices on either end of the edge were selected vertices, they are highlighted instead of changing color. $
$


$
<HR>
$
|HightlightPolygon face highlighting
When the cursor is over a face, the face is highlighted with the highlight color. $
However, if the vertices on either end of the edge included in the face are selected vertices, they will be highlighted instead of changing color. $
$


$
<HR>
$
|HighlightObject Object highlighting
When the cursor is over a mesh name in %ObjectWindow%, that mesh (or sub-mesh) will be highlighted. $
Using this function may increase the machine load, so you can turn it off. $
The function OFF button is the @#obj_highlight.gif@ button at the bottom of %ObjectWindow%. $

  $
Next, %TestRendering%$
@Footer


$
<HR>
$
[] 

@Header
:TestRendering test rendering &actTestRender

A function implemented for checking the smooth shading state. $
Sharp edges are not supported, so sharp edges cannot be represented as intended. $
For now, consider it usable only for checking the shape of organic things. $
$
At the moment, it is difficult to edit texture information, etc., and it is lacking in versatility. In the future, I plan to add a function that allows you to specify texture information to some extent, but the level of scene editing is
There are no plans to add features until now. (I can't say for sure) $
<B>Beginning with beta 5.1, material attributes can be assigned to polygons, making it possible to edit texture information. </B>

$
For MegaPOV, please check POV-Ray related sites. The author himself uses this function
I've just started seriously researching it, so I can't give a detailed explanation. $
$
If POV-Ray 3.1 and MegaPOV 0.7 or later are installed normally, when you run %TestRendering%
MegaPOV will automatically launch and begin rendering. $
Please note that MarbleCLAY does not specify the rendering size, etc. $
If MegaPOV is already running, you will need to manually render on MegaPOV's side. $
<B>Supported MegaPOV0.7 and POV-Ray3.5 from Beta5.1</B>
$
:TestRenderRedQueen2 Test render &actTestRenderRRT
$
As of 2/13/2005, the free version of Redqueen has not been released. $
$
We will reconsider how to handle this feature/help content once we know how the next version of Redqueen will be published. $
$

Reference: (The following information is based on RQ2Beta.) $
$
$
Cooperation with Redqueen2 2003/12/29 T.Maeda$
$
Domestic rendering software "Redqueen2" has been added to test rendering from Beta5.3e. $
About redqueen2
http://www.teamredqueen.com
Please refer to. $
$
● Introduction $
  (+)  First, specify the location of the Redqueen binary in Option->Preferences->Test Rendering. $
$
- Next, open the "rq2_sample2.mcl" file in the Sample folder. $
$
  (+)  Select Root in the object window$
$
  (+)  Execute Option->Test Rendering (RRT2). $
$
  (+)  Redqueen2 is called and the image is displayed after rendering is completed. $
$
  (+)  If you don't need to render directly, please export the rrt file. (Check RRT2)$
$
● Settings $
$
I don't think the Redqueen format has been completely finalized yet, so in this MarbleCLAY, the GUI for various settings is very poor, but the degree of freedom is increased accordingly. In the future, even if the number of material parameters increases, it can be handled easily. $
$
  (+)  Render settings $
Select Root in the object window and select "Additional Information" from the right-click menu. $
A dialog will open.
$
<!----> [rq_render] tracedepth 3$
$
Please fill in etc. (If you don't set any render settings, sensible defaults will be set)$
$
  (+)  Camera settings $
This is also Root's additional information $
$
<!----> [rq_camera]oversampling 10$
$
Please fill in etc. The camera position etc. will be the current viewpoint. $
$
  (+)  Background $
$
$
<!----> [rq_background] to $
$
is. $
$
  (+)  Object attribute $
I thought about treating attributes in the same way as materials, but for the time being I put them on objects. Open additional information for each object, $
$
<!----> [rq2attr]primaryunvisible$
$
etc. $
Things that are not treated as attributes, such as smoothing, are $
$
<!----> [rq] smoothing 30$
$
Please enter etc. $
$
  (+)  Light $
Since MarbleCLAY is a modeler and does not have a light object, it converts the object as a light. $ for additional information on the object
$
<!----> [rq_light]pointlight$
$
followed by $
$
<!----> [rq]color 1 1 1$
<!----> [rq]photon 5000$
$
Please fill in etc. $
Position information uses the center position of the object. (arealight sets each face of the polygon as an area light, but it's not perfect. Other lights use only the center position, so they can be of any shape)$
$
$
  (+)  Material $
Select a material, open additional information and complete as follows: $
$
<!----> [rq] frostness 1$
$
etc. (Color, reflection, transparency, specular, etc. are reflected in the material settings, but the relationship between each item is not well understood, so the current situation is quite appropriate. If you are worried about the automatic setting by MarbleCLAY, please clarify in the additional information. Please specify in)$
$  (+)  Map image $
It will be output as a ppm file. (Will change to png in future versions.)$
$
That's all for how to use it. $
$
●Future plans$
  (+)  The current rq2beta cannot assign multiple materials to the same object, but we have made a request for this, so I think rq2 will support it in the near future. In this case, no special processing is required on the MarbleCLAY side, so it can be handled as is. $
$
  (+)  Since the current RQ2 cannot map png files correctly, images are output in ppm, but in the future it will be changed to png because it is troublesome to check images with ppm files. (This issue has also been reported, so I think it will be fixed soon.) $
$
  (+)  Since it takes time to edit additional information in the dialog, we are considering making it modalless. $
$
- Better conversion of material formats. (This will change the results of current MarbleCLAY rendered images and future MarbleCLAY rendered images)$
$
  (+)  I would like to display additional information about the material in the material tree.$
$

  $
Next, %FileInOut%$
@Footer

$
<HR>
$
[] 

@Header
:FileInOut file input/output
$

$
<HR>
$
|ImportFormat import

The following file formats are supported. $
However, only a small part of the format is supported, so there are many cases where it cannot be read. $
$

]ROK Hexagonal Great King (Free) Input
Please delete the 3-sided edge before importing. (Even if there is a three-sided edge, it is possible to read it,
There is a high possibility that it will interfere with later work)$
$
]DXFimport DXF format input
Only 3DFACE is supported. However, it is not recommended as the loading speed is very slow.
It would be better to convert it to OBJ with another software before reading it. $
$
]OBJ Wavefront(obj) format input
Only polygon information is supported. Group information can also be imported. $
Face material information, splines, etc. are not supported. $
$
]RDS RayDreamStudio5 input
Only the vertex model format part is supported. $
$
]CarraraFile Carrara format input
Like %RDS%, only the vertex model format part is supported. $
$
]3DS 3DS format input
3DS format is supported from Beta5.1. Poorly tested, material information can also be imported. $
$
]LWOImport LWO format input
You can enter in LWO and LWO2 formats. $
$
]MQOImporter Metasequoia format input
Enter an object in Metasequoia format. You can also enter mirrors (mirrors for the XY plane on Metasequoia only) and surface conditions. $
However, a mirror object without a center line will not be in a state where the left and right are connected, and the delicate shape of the curved surface cannot be reproduced.
$


$
<HR>
$
|Export

The following file formats are supported. $
<!--
However, I have not tried anything other than RayDreamStudio and Poser3. Furthermore, in these two software
It is difficult to say that the test has been sufficiently done, so it may not be exported correctly. $
If you find any problems, I would appreciate it if you would let me know. then, if possible
If you send us the file that causes the problem (in MCL format if possible), we can solve the problem faster.
It's important data, so don't worry about it. $
$
]RDS Ray Dream Studio 5
Make sure there are no multiple edges before exporting. $
Multiple edges can be removed by executing Edit→Select Multiple Edges and then Edit→Delete.
Is possible. $
$
If you want to export a curved object, go to Mirror/Curve → polygonize the curved surface and polygonize
Please write out the objects you have created. In this case, multiple edges do not exist, so the above processing is
You do not need. $
-->
$
]OBJ Wavefront(obj) format output

Not enough tests. $
$
]DXFexport DXF format output

Export in 3DFACE format. If you need to read it into MarbleCLAY again, use the DXF format
Not recommended. $
$
]POV MegaPOV/POV-RAY3.5(*.pov) format output
Exporter implemented for %TestRendering%. $
Exports in POV-Ray unofficial version MegaPOV and POV-RAY3.5 mesh2 format. $
I chose MegaPOV because the mesh2 format was easy to handle with MarbleCLAY. Currently MegaPOV
You can't take advantage of the excellent ray-traced rendering that is a feature. $
$
<B> *Note: Exporting in this format is not possible by default. Check "Allow MegaPOV export" in the Test Rendering tab of PSee 
</B>
$

$
]3DS 3DS format output
3DS format is supported from beta 5.1. Tests are inadequate. $

$
]LWOExport LWO format export
You can output in LWO and LWO2 formats. If you want to output UV information, choose LWO2 format$
$
]RRT Redqueen format output
It's still incomplete, but it outputs objects in Redqueen format. $
MarbleCLAY as a simple scene builder by adding additional information for Redqueen to each object in the object window
I'm trying to handle it, but it's still not good enough, so I haven't prepared the documentation. $
$
]MQOExporter Metasequoia format output
Outputs an object in Metasequoia format. Mirrors, and surface states are also exported, but surface weights are not. $
$


$
<HR>
$
|AutoBackup Autosave

]AutoBackUpMode Autosave work state
You can set automatic saving in the Save tab of Option->PSee  $
Automatically saves files at specified time intervals. $
$
If MarbleCLAY terminates abnormally, it will be auto-saved on next startup
It is possible to open the file. I don't expect a full recovery. $
$
Also, it currently only works on documents you are working on. multiple objects
Be very careful when working with it open. $
$
$
]Generation File generation management
File generation management can be set in the "Save" tab of %OptionMenu%->PSee  $
If the file is overwritten, etc., only the generation for which the previous file is set is aliased.
you save. $
If you overwrite it by mistake, open a dialog with File->Open Document and
If you select "Generation File" from the combo box below, the generation management will
You can open the backed up files. $
$

  $
Next, %Plugin%$
@Footer

$
<HR>
$
[]
@Header

:Plugin
The functionality of MarbleCLAY can be extended by writing plugins. $
$
Plugins can be written in Delphi/C++. See the MarbleSDK documentation for details. MarbleSDK is distributed on the author's page. $
$
$
:Script script
Scripts are implemented in plugins. $
Currently v1beta does not support scripts, but v2 supports Lua scripts. $
Since the script specification depends on the specification of the plugin API, the document is not maintained at this time. $

  $
Next, %Tips%$
@Footer

$
<HR>
$
[]
@Header

:Tips Tips
Here, I will explain a little function to handle MarbleCLAY conveniently. $
$


$
<HR>
$
|Wheel Using a wheel mouse
Using a wheel mouse improves operability. $
By default, the wheel is assigned a function called wheel command,
Invoke the main editing tools (%MoveTool%$
%FacetTool%, etc.) by simply turning the wheel
is possible. Tools can be changed without moving the mouse.
Efficiency goes up. $
$
The wheel can also be assigned a zoom function, but at this time the right button (or Ctrl key)
You can use the wheel command function by pressing and turning the wheel. $
(Before Beta4.9, it was a combination of wheel button + wheel, but it was changed to right button + wheel command because it is difficult to use)
$


$
<HR>
$
|Bend an object

$
]SmoothBend
At %SelectMagnet%,
You can bend the object smoothly by pressing the Ctrl key while moving the vertices. $
$
If the [Automatic] check box of %ToolMoveWindow% is checked, bending will start automatically without pressing the Ctrl key. . In that case, pressing the Ctrl key cancels the bending. $
$
  $
Next, %Q&A%$
@Footer

$
<HR>
$
[] 

@Header

\Other 4.Other

: Q&A Q&A
$
!Def numrest dummy
!Def num dummy

@numrest@
<!-- @Num@ -->

$
@S2@Q@Num@@FE@

$
<HR>
$
|QQ Symmetric figures are disturbed
$
A　In the current version, symmetry does not work perfectly. especially adding edges to vertices
In some cases, the symmetry plane may disappear. $
In this case, run %AllMirror% again, or select the newly created face and run %MirrorMakeMirror% again. $
$
Also, we have received reports that it sometimes gets into a strange state when symmetrizing. $
Due to a bug that is not very reproducible, it has not been possible to fix it easily, so this kind of
to the bugIf you encounter it, please report it. $
$
$
@S2@Q@Num@@FE@

$
<HR>
$
|QQ Some curved surfaces disappear
$
A　Some operations may cause the curved surface to disappear. However, internally the curved surface
In many cases, it has not disappeared, so select that part and move it a little, or press %ChangeSplineSurf% again.
Try it. $
$
If it still doesn't work, please report it. $
$

@S2@Q@Num@@FE@

$
<HR>
$
|QQ What should I do if I accidentally overwrite a file?
$
A See %AutoBackUP%$
$

@S2@Q@Num@@FE@

$
<HR>
$
|QQ shortcut key sometimes doesn't work
$
A.
Some shortcuts may not work, such as when %Window% is docked. $
There are two things we know so far: $
1. When the focus is on the edit control on the docked window,
%QuickTool% assigned to the spacebar does not work properly. $
This is because the control of the space key is taken away by CheckBox etc. $
→ Please press the TAB key several times or click the drawing window once so that the edit control does not have the focus. $
$
2. Ctrl+C, Ctrl+V, etc. do not work when editing object names, etc. in %ObjectWindow%. $
　→ Depending on the position of the mouse cursor, the operation of the shortcut key differs. $
　→ When editing text, move the mouse cursor over the window containing the control$
$

@S2@Q@Num@@FE@

$
<HR>
$
|Changing QQ workspace does not work
$
A <s> When changing workspaces, some parts of the toolbar may not be displayed. $
Undock and dock again, or exit MarbleCLAY and start it again. $
Also, in the current version, changing the workspace does not change the docking state of %Window%. $</s>
$
<B>Because there were various problems, the workspace change function was removed in Beta5.1. A better implementation is under consideration</B>
$$

@S2@Q@Num@@FE@

$
<HR>
$
|Garbage remains on the QQ screen
$
A　Fixing this bug has been postponed. Please perform "Refresh screen" timely to erase the garbage. $
$

$
@S2@Q@Num@@FE@

$
<HR>
$
|QQ Is it possible to create MarbleCLAY for Mac or Linux?
$
A　In the beginning of development, we planned to port it to Linux using Kylix, but since many functions were used that were not compatible between Win32/Delphi and Linux/Kylix, it was a huge amount of work, so we decided not to. . $
Also, since there is no Delphi on Mac, it is impossible to port easily. $

 $
Next, %VideoCard%$
@Footer

$
<HR>
$
[]

@Header
:VideoCard Video card compatibility
$
MarbleCLAY draws in OpenGL, so you may experience problems depending on your video card. $
$
Most issues can be fixed by updating your video card drivers to the latest, but here are some common video card/chip issues:
I will write down the information, so please refer to it. $
$



$
<HR>
$
|ATI ATI-RADEON
Developed/tested on Radeon9700Pro and Radeon X800pro. $
Therefore, although the video card is the most suitable for MarbleCLAY, sometimes the material on some surfaces collapses. $
$


$
<HR>
$
|NVIDIANVIDIA-GeForce
$
Recent (2005/2) cards may have problems depending on the driver version. $
If you encounter any problems, try an older version of the driver, or obtain the latest beta driver from NVZONE, etc. and try it. $
$
For your reference, the environment in which we have confirmed the operation is described below. (I would appreciate it if you could give me a report on PCI Express cards, GeForce 6600 series, etc.) $
$
GeForceFX5700Ultra/Windows2000/ForceWare61.77: No problem$
GeForce6800 (unmarked) AGP/WindowsXP/ForceWare67.66: Beta5.7 or later


$
<HR>
$
|PowerVRPowerVR
In PowerVR (KYRO), OpenGL dashed line display, vertex display, and manipulator handle display are not possible
I have a report. $
This seems to be because KYRO cannot draw vertices or lines other than size 1. It's difficult to solve because it's a video card specific issue. $
$
other, $
Objects that have been curved by creating symmetrical figures using simple symmetry, creation of symmetrical figures, etc., are set to non-editable objects by selecting other objects, OpenGL, and hidden surface removal. 1or2, MarbleCLAY display is very slow when previewing with highlighting. We also have a report. $
It has not been determined that this is caused by PowerVR, but it seems likely that PowerVR is the cause because it cannot be reproduced if the same work is performed in another environment (GeForce2MX). $
$

$
<HR>
$
|Intel Intel
We have received reports of OpenGL rendering problems with Intel's built-in chipset video (855M, 830M, etc.).
Updating to the latest driver seems to have solved it. $
$
If you are using an Intel chipset with built-in video and are having trouble, please try the latest drivers. $
$


$
<HR>
$
|Other
Please report how it works with other video cards. $

 $
Next, %Acknowledgments%$
@Footer

$
<HR>
$
[]

@Header
: Acknowledgments
$
$
!main end
$
We would like to thank everyone who participated in the beta test. $
$
$
Please send bug reports to <A HREF="mailto:esv@nifty.com">esv@nifty.com</A>.
Even if it's a trivial thing, it's fine. Thank you. $
$
<FONT SIZE="-2">
*For the convenience of management, we are using an alias address, but you can also use the old address*
</FONT>


@Footer

[AutoJump.html
:
#<HTML>
!autojump
#<FONT SIZE="+3" FACE="Lucida console" COLOR="#60A030"> MarbleCLAY</FONT>v0.2.15 (Beta5.1)<BR>
$
$
Searching for topics.
$
$
#</BODY></HTML>
