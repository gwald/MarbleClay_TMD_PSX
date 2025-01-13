;GARCIA google translated from the original Japanese document (tutorial.m) and edited so it's more understandable.
;Backup or rename MarbleCLAY\Tutorial\tutorialE.m
;Put this file in MarbleCLAY\Tutorial\
; for more info: https://united3dartists.com/forum/viewtopic.php?t=6424
!Index1 '<FONT SIZE="+0"><B>%s</B></FONT>'
!Index2 '<FONT SIZE="+0"><B>%s</B></FONT>'
!ShortCut MarbleCLAY.ini SHORTCUT
!ActionString Resource\English.str

!Def title '<FONT SIZE="4" COLOR="#0"> Make An Elephant </FONT>'
!Def Footer '<BR><BR><CENTER><TABLE FRAME=BOX CELLSPACING=0 COLS=1 RULES=GROUPS BORDER=1><COLGROUP><COL WIDTH=500></COLGROUP><TBODY><TR><TD><FONT SIZE="2">@prev@|@next@</FONT><CENTER>@page@</CENTER></TD></TR></TBODY><TBODY><TR><TD BGCOLOR="#94BD5E"><FONT SIZE="1" COLOR="#FFFFFF">Copyright(C)1998-2003 TakeshiMaeda / ESCARGOT Visualwares</FONT></TBODY></TABLE></CENTER></FONT></FONT></BODY></HTML>'
!Def Header '<HTML><BODY BGCOLOR="white" TEXT="black" LINK="#606080" VLINK="#707090" ALINK="red"><FONT FACE="Arial" SIZE="2"><CENTER><TABLE FRAME=BOX CELLSPACING=0 COLS=2 RULES=GROUPS BORDER=1><COLGROUP><COL WIDTH=800><COL WIDTH=400></COLGROUP><TBODY><TR><TD BGCOLOR="#94BD5E"><FONT SIZE="2" COLOR="#FFFFFF">ESCARGOT Visualwares</FONT></TD><TD BGCOLOR="#94BD5E"><FONT SIZE="1" COLOR="#FFFFFF">3D Polygon Modeller</FONT></TD></TR></TBODY><TBODY><TR><TD>@title@</TD><TD><FONT SIZE="2">@prev@|@next@</FONT></TD></TR></TBODY></TABLE></CENTER>'

!Def S2 '<FONT SIZE="2"><B>'
!Def FE '</B></FONT>'
!Def no_sub '<IMG SRC="../HelpImg/no_sub.gif" BORDER=0>'
!Def sub_open '<IMG SRC="../HelpImg/sub_open.gif" BORDER=0>'
!Def sub_close '<IMG SRC="../HelpImg/sub_close.gif" BORDER=0>'
!Def sub_item '<IMG SRC="../HelpImg/sub_item.gif" BORDER=0>'
!Def page dummy
!Def prev PREV
!Def next NEXT
!Associate ..\Help\Index.lst ..\Help\

!Def sub_item '<IMG SRC="../HelpImg/sub_item.gif" BORDER=0>'
##<BODY BGCOLOR="white" TEXT="black" LINK="olive" VLINK="green" ALINK="red">
##<FONT COLOR="#608030">Tutorial MakeAn<BR></FONT>
##<FONT SIZE="+1" FACE="Lucida console" COLOR="#60A030"> <B>Elephant</B></FONT><BR>
##<BR>
##<FONT FACE="MS Gothic">
##<BR>
##<HR>
##<BR>
!Def prev Prev
!Def next Next

[Help.html
#<HTML>
#<HEAD>
# <META NAME="GENERATOR" CONTENT="MakeAHelp for MarbleCLAY">
# <META HTTP-EQUIV="Content-Type" CONTENT="text/html">
# <TITLE>MarbleCLAY Help</TITLE>
#</HEAD>
#<FRAMESET COLS="255,77%">
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

[] -----------------------------------------------------------------------------------------------

;!include tutorial_inc.m


[Help1.html
!main

@Header


:About
$
This document was created from the Japanese tutorial and updated with a lot of "trail and error" testing, clarification and tips.$
It is an unofficial, fan translation and maintained here: <a href="https://united3dartists.com/forum/viewtopic.php?f=4&t=6424&p=63994#p63994">https://united3dartists.com/forum/viewtopic.php?f=4&t=6424&p=63994#p63994  </a>
$
$ 
Be sure to email the creator, Takeshi Maeda for a (free) registration code, see <a href="..\Help\Help1.html#3">Help's Registration</a> for more information. $ 
$
:Tips 
$
First make sure you have properly run the UI & mouse wizard, if not run it now and experiment with the different settings: Option menu -> Wizard - Configure of GUI Operation.$
Once you have your mouse and toolbars arranged to how you like it, go to Option menu -> Configuration... and go through each tab and become familiar with the options available and experiment.$
$
How I configure mine: I keep simple toolbar, next in View roll(Customize), I click "Only the middle button is pushed and dragged...", then click next until it's finished.
In Option menu -> Configuration... -> Control -> Mouse wheel set perspective/3-way: move, and wheel zoom: UP zoom in.
$
And I recommend making a backup of your settings MarbleCLAY/MarbleCLAY.ini file regularly.$
$
MarbleClay operates in this 3D coordinate space:$
+Z = Up (model's top)$
+X = Forward (model's front)$
+Y = Right (model's left)$
The mirrored plane (represented as the square around coordinate origin) is always the X plane, indicated by the square around the coordinate origin.$
For the reasons above, it's recommened to use MarbleClay in that way.$
$
Clicking the mouse will create a new object point, but if you keep holding down the button, and move the mouse to a new location, the last created vertex will move to the new location where the button was released.$
$
The keyboard shortcuts for changing views are:$
F = Front$
E = Top$
D = Right$
Holding shift will be the opposite direction, ie Shift E will look from the bottom, up.$
$
:S1 Prerequisite
$
You should be able to change through the different perspective types by cycling through them on the toolbar, they are grouped in two different sections, vector modeling (axis image) and UV editing (UV/U).$
$
%WaySplitBar%$
@#splitoption.gif@@#personly.gif@@#4way.gif@@#2way1.gif@@#2way2.gif@@#2way1uv.gif@@#2way2uv.gif@@#4wayuv1.gif@@#4wayuv2.gif@@#customway.gif@$
$
$
Be sure you can navigate (rotate, pan and zoom) around in each view and can create and manipulate points, lines and faces.$
$
$
:S2 Elephant
$
  In order to introduce MarbleClay, in a practical way as much as possible, we will make an elephant with a characteristic shape. $
  It's okay if it loses its shape, you don't have to follow exactly. $
$
  Although it is the second edition, this tutorial is only a quick guide. $
  Please point out where there is any confusion.$
$
$
First, start with a blank document, click New to create a new model.$
$
|S21 Workplanes
#<IMG SRC="../HelpImg/tut_workplane.jpg" align="LEFT" >
$$$$$$$$$$$$$$$$$
$
Press (1) to toggle from single screen (work screen) to the 4-views drawing format. $
Modeling work on 3-views is also possible, but from now on, we will focus on the single screen, click (1) on the %lay_PersWay% window. $
$
Click any of (3) to (8) to select the work plane. $
(2) Toggles from 3D modeling to UV mapping.$
(3) XY plane,  $
(4) YZ plane,  $
(5) XZ plane,  $
(6) Plane parallel to the screen, $ 
(7) Set the plane parallel to the selected polygon as the work plane. $
(8) Vertex move with view correction (GYAKKOU algorithm) $
$
Once the work plane is set, all subsequent operations will be performed on parallel to the work plane - IE the new polygon will be facing the same way indicated by the work plane/grid. $
$
For now, please keep your screen in single screen %lay_PersWay% with (5) XZ plane view, like this. $
@#tut_xzview.gif@
$
|S22 Views
$
You should have configured MarbleClay to your preferred settings, by default the view controls settings are as follows: $
The mouse pointer shape changes when you move the mouse pointer over %QuickArea%. $
Operating in %lay_PersWay% in the default state, the mouse pointer is in view change mode, hold down the left mouse button and drag to move the camera.
The position rotates around the fixation point (3D axis or centered item). $
Hold down the right mouse button and drag vertically to zoom the camera. $
$
Hold down the SPACE key and the left mouse button and drag to move the point of interest. $
$
In addition to the method of %QuickArea%, you can change the viewpoint by changing the viewpoint movement mode with %ViewTools%,
Alt + drag, middle button + drag, etc. can also be used, and these can be customized according to the user's preferences. $
$
$$$

@footer

[] -----------------------------------------------------------------------------------------------

@Header

:S3 Outline

First of all, make sure the 3D axis is centered, in (4) XZ work plane and viewing down the +Y (front) axis, if not press the F key or View menu -> Change view port -> Front. $
$
|S31 Draw

First, we start by drawing 2D guide lines, these make modeling easier and quicker because they are fast to draw and organize. $
The modeling tools use these lines and vertices to attach to and create the model from them intuitively.$  
There are two ways to draw outlines. $
$
1. Use Polyline %PolylineTool% and draw steadily and slowly. $
Each left mouse click draws a single line from the previously clicked point.
When you want to stop drawing a line segment, run %BreakPop%. $
$
2. Draw at once in Freehand line %FreehandlineTool% mode. If you are a tablet user, this is the one for you, and you can draw very quickly. $
If you hold down the left mouse button and drag, a line segment is drawn along the path that the mouse pointer is moved, the slower the mouse is moved, the more points or detail the outline will be. $
When you want to stop Freehand line drawing, hit %BreakPop%. $
$
Below is an outline drawn using the %FreehandlineTool%. $

@#tut_elepline.gif@
$
|S32 Adjust
$
You can fine tune each vertex position with the %MoveTool% tool in the following ways: $
$
1. Select %MoveTool% mode with tool button$
2. Or hit %BreakPop% several times to enter %MoveTool% mode$
$
Method 2 is recommended because you only need to press (Esc) to exit any operation/tool. $
By default, when a vertex, line, face or multiple of these are selected, the default action is to move when click (and hold) on them and moving the mouse, so option 1 isn't recommended.
Again, use undo (Ctr-Z) to undo any wrong movement of the ear.$
$
$
@footer

[] -----------------------------------------------------------------------------------------------

@Header

|S33 Ear

Correct the position by moving and rotating parts of the body that are not centered, such as the ears and feet. $
$
1. After hitting ESC, or selecting the %MoveTool% tool, double-click a vertex on the ear to select the entire ear outline. $
@#tut_earselect.gif@$
$
2. Set the work plane to the XY plane, and make the XY plane a top-down view so that you can easily move and rotate. $
Select: (3) XY plane:$
$
$
#<IMG SRC="../HelpImg/tut_workplane.jpg" align="LEFT" > $
$$$$$$$$$$$$$
$
$
$
$
$
3. When you select the %Roll2D% tool, you'll see handles for rolling around your selection.$
@#rolltool.gif@$
If you move the cursor over the handle, the shape of the cursor will change, so drag it as is to rotate the selected part. (Hold down the Shift key while dragging to rotate in 45 degree increments)$
$
@#tut_ear.gif@$$
Use undo (Ctr-Z) to undo any wrong rotations$

4. Once rotated, press %BreakPop% to enter %MoveTool% mode and move the ears into position. $
Simply, click on the object and drag away from the body.$
@#tut_earmove.gif@$ 
$ 
Remember, when working in 3D space, that the perspective you have selected matters. Use the grid as a visual indicator as to how a 3D object will behave in 3D space, it will always move along and parallel with the grid, ie it will follow the angle of the grid. $
If the 3D workplane grid is hard to understand, enable the Toggle visible workplane, in the View menu.
If this is still confusing, turn on the 3D crosshairs (Option menu-> Configuration... -> DisplayOption1, tick the 2 Draw crosshair options) to see how the mouse pointer moves relative to the 3D workplane.$
See Help ->  Views & Planes
$
@footer

[] -----------------------------------------------------------------------------------------------

@Header

|S34 Legs
$
1. Return back to the XZ plane viewpoint, so that the view is from the side of the elephant. $
Select: (5) XZ plane:$
$
#<IMG SRC="../HelpImg/tut_workplane.jpg" align="LEFT" > $
$$$$$$$$$$$$$
$
$
$
$$


$
2. Left-drag the mouse to select the leg area.
If you select too much, to remove vertices, hold the Control key and click individual vertices or left click and drag to remove them.$
To add more vertices, hold the Shift key and click individual vertices or left click and drag to add them.$
$
@#tut_footselect.gif@$
$
3. Set the work plane to the YZ plane and move the viewpoint so that the YZ plane is viewed from the side. $
Using the work plane image above, select: (4) YZ plane:$$

@#tut_footyzview.gif@$
$
4. Again, hit ESC or select the move %MoveTool% by clicking the move tool button, move the selection horizontally. $
Since the selected area is small and difficult to drag with the mouse, to prevent accidental deselection, enable 'Keep selected state' via edit menu or hitting the B key, the mouse cursor should be blinking in the form of a padlock. You can now left click drag anywhere on the view to easily move the selected vertices. Hit the B key again to turn it off.$
$

@#tut_footmove.gif@$


$
|S35 Body
To make the work easier later, create the outline of the cross section of the torso. $
$
1. Staying in the YZ work plane, slightly rotate the view horizontally, so that the view is looking down the middle of the X and Y axis. &
$
2. Select the Poly line %PolyLineTool% tool, not the freehand tool. $
Draw a suitable body cross-section, starting from the top of the body to the bottom, create rounded outline with the lines to give the body it's shape. $
Remember to use the perspective grid to anticipate the plane the curved line will use.
The trick is to tell MarbleClay the height (or depth) in the perspective workplane where the line will start and end, this is done by using the mouse over on existing vertices or lines and clicking to start or end the line, only create points in free space, do not click other objects (vertices, lines, faces), this will change the workplane height.$
You can click on an object, then cancel (hit ESC once) to continue using the same workplane height, MarbleCLAY will always remember the last height, alternatively, you can right click on an object (it will use the closes point) and select move reference plane (Move WorkPlane to mouse pointer). It can be cleared (reset to zero height) by right clicking empty space.
$
@#tut_body.gif@
$
This image is a bit confusing with all lines, see the ear part and try to ignore it, just focus on the curved line and how it joins from the top to the bottom, following the perspective work plane.$
$
(1) This is where this line example of the body outline starts, click a vertex or any where inside a poly line, on the top of the elephant's body.$
(2) Following the perspective work plane grid, slightly move the mouse across to the right, to create the body depth and down, to join it to the bottom.$
(3) Repeat 2 again, but with a longer line going down, using about the same depth direction.
(4) Now do a line straight down from the last line, this will flatten out the depth of the body.$
(5) This is the last line and it's used to join the line segment to the bottom of the elephant, click on a vertex or part of a line.$
$
This can be hard to see and understand, if it's too hard, start with a simple triangle line segment instead, ie: follow step (1), (2) clicking in the middle of the body, and then (5).$
Extra vertices can be added and then easily manipulated separately, instead of trying to do both at the same time.
$
The line shape should look like this:$
@#tut_lockhide.gif@

@footer
[] -----------------------------------------------------------------------------------------------
@Header
$
|S36 Locking
$
You can use the outlines as they are for modeling, but outlines drawn with freehand polygonal lines tend to have a large number of vertices, so it is recommended to lock the outlines and use them as modeling guides. Recommended. $
$
1. If you draw the outline according to the procedure, the outline should be registered in the object window under the name "Mesh-0" of "NewObject". Open the object window and change the name of NewObject to "Eleph" and Mesh-0 to "outline" for convenience. (Enter key after inputting in (1))$
Click the padlock icon (2) on the right end of the "outline" line to close the padlock and "outline" will be locked. $
$
@#tut_lockoutline.gif@
$
Locked outlines do not display vertices and can be snapped but cannot be deleted or moved. $
$
<I>If you want to display vertices, check [%ViewMenu%]->[Show locked vertices]. </I>$
$
2. If "Eleph" is not selected, click on part (1) to select it. $
(If this part is not selected, the surface cannot be generated correctly in subsequent operations)$
@#tut_selectobj.gif@$

$
|S37 Check
$
Make sure you can see the outline of the elephant. $
Make sure no vertices are visible. $
$
$
@#tut_lockhide.gif@
$

@footer
[] -----------------------------------------------------------------------------------------------
@Header

:S4 Shape

|S41 Trunk
1. First, stretch out the lines from the front legs. It can be difficult to model from a far distance, so bring the viewpoint closer to the front leg. $
Zoom using %QuickArea%, or zoom with ViewRoll %ViewRollTool% or Zoom %ZoomTool%. $
$
2. When zooming, the front leg is out of the point of interest (ie not infront of the axis). Select an appropriate vertex of the leg part, right-click the mouse to open the popup menu, and execute "%actViewCenter%".
$
@#tut_footcenter.gif@
$
3. Set the preview mode to @#flatwire.gif@ %actPreview3% from the preview toolbar, so that the faces and edges can be easily seen.$
$
4. Select the face %FacetTool% tool. Stretch the surface along the outline of the front leg. Moving the mouse cursor over the contour will highlight the contour (or its vertices). $
$
@#tut_footface1.gif@$
$
5. If you click the mouse as it is, surface generation will start snapping on the outline. $
Surfaces are created by clicking the mouse in the order shown in the figure. $
@#tut_footface2.gif@$
$
6. Continue to create the surface of the leg in the same way. You can click on the same vertex to create new faces, ie (4) then (3) to create a new face.$
A face is create when 3 or more vertices are closed.$
If face tool is used to create a face greater then 4 points, it will not create a face, instead the result will be vertices and lines, which behave similar to poly lines, ie guide lines.$
The face tool can also be used to cut existing faces.$
$
@#tut_footface3.gif@$
$
7. Follow the instructions on the previous page to create the hind legs and trunk. $
@#tut_noseface.gif@$
$
8. Select all faces on the trunk and choose the extrude %ExtrudeTool% tool. $
(Right click on the extrude %ExtrudeTool% button and make sure the tool option is "Parallel Extrude")$
@#tut_extrudeoption.gif@$
$
Move the mouse pointer over your selected faces and then left-click and drag to the right to extrude the selected face. $
@#tut_noseextrude.gif@$
$
9. Extrude the side of the foot by selecting Extrude with "keep backside" option enabled in the extrude tool options. $
@#tut_footextrude.gif@$
$
10. As shown in the image above, the inner end parts of the leg have faces, these need to be removed before continuing. So enable the move mode (ESC key) and click to select the faces of the top inside face of the leg and delete it. $
Remove the inside faces of the trunk and the hind leg in the same way. $
Due to processing reasons, MarbleCLAY can only configure up to two surfaces per edge, so if left as is, problems will arise in later processing. $
@#tut_footcapdelete.gif@$
$
Image above shows, these top inner faces removed from both legs.$
$

@footer
[] -----------------------------------------------------------------------------------------------
@Header
$
|S43 Forehead

1. Select the face creation tool and draw a face using the contour lines of the top of the head to the base of the ears. $
Since MarbleCLAY only supports quadrilaterals or triangles, only edges are created without faces on pentagons or more, but these edges can be used as guides for face creation, so leave them as poly lines or guide lines for now. $
$
Please note, you are joining the top of the elephant body outline (1) to the ear outline (2) and to the truck (3) $
The face created is more then 4 points, so no face is created until it's broken in to two smaller faces.$
(The explanation is difficult to understand, but please click in the order of the numbers in the figure and press the %BreakPop% key at the end)$
@#tut_head1.gif@
$
2. Next, from point (5) in the image above, click point (1) to point (2) as shown in the image below, the edges will automatically split to create two faces, quadrangles. $
@#tut_head2.gif@
$

|S42 Mouth

1. Create the mouth part in the same way as the trunk. $
@#tut_mouth.gif@
$
2. Connect the mouth part and the base of the trunk with the face %FacetTool% tool. $
$
If the 3D mesh becomes confusing and hard to work with, and it is difficult to select vertices, you can display the 3D magnifying glass by selecting [Window menu]->[View 3D Loupe] to enlarge the area around the cursor and select vertices. will help you. $
@#tut_loupe.gif@
$

|S43 Ears

1. Create the ears in the same way using the face %FacetTool% tool. $
$
2. Select the extrude %ExtrudeTool% tool (with the option set to "Extrude with backside") to add thickness to the ears. $
(Remove the internal facing faces of the ears in the same way as the feet and trunk) $
$
@#tut_earpoly.gif@
$
@footer
[] -----------------------------------------------------------------------------------------------
@Header

|S45 Connecting
$
In the same way as explained before use the face tool to create faces for the body surface. $
Don't worry if it doesn't look great, just move on. $
@#tut_bodypoly.gif@$
$
|S46 Legs

1. We would like to connect these two surfaces, but since the size of the edge of the legs and the size of the body surface are very different, it is not possible to connect them very neatly by stretching the surfaces as they are. $
@#tut_frontfoot.gif@
$
2. You can divide the surface of the body first, but MarbleCLAY has the feature that you can create the surface and divide the surface at the same time, so use this function to divide the body while creating the surface. $
$
3. Select the face %FacetTool% tool and click (1)->(2). An edges is generated. $
@#tut_frontfoot2.gif@$
$
4. Next, click the vertex of (1), and the edge of (2). $
@#tut_frontfoot3.gif@$
$
5. The body faces are divided into triangular and quadrangular faces. $
At this time, the edge sandwiched between the two faces is displayed as a dotted line, and this edge is called a semi-determined edge in MarbleCLAY. $
@#tut_frontfoot4.gif@$
$
6. Next, continuously Clicked with (1) -> (2)$
@#tut_frontfoot5.gif@$
$
7. The semi-determined edge created earlier disappears and a new square face is generated. $
(The face connected to the edge of (2) is newly divided into a triangular face and a quadrangular face, and another semi-determined edge is generated.)$
@#tut_frontfoot6.gif@$
$
8. Continue to divide the body polygons in the same way. $
@#tut_frontfoot7.gif@$
$
@footer
[] -----------------------------------------------------------------------------------------------
@Header
$
|S47 Managing
$
1. Using the previous method, finish drawing polygons for the rest of the other parts. The half of the elephant is almost completed as shown in the figure below. $
$
@#tut_halfelep.gif@$
$
2. However, as it is, the leg part is in the way and it is difficult to put polygons on the abdomen, next we will hide the leg polygons. $
You can hide faces with the maim menu [Mesh Modeling menu]->[Hide selected part] or right click menu, but as a practice of using the object window, we will apply a name to the leg polygons, make it a sub-mesh, and display it in the object window, and it can be zoomed in, selected, locked or hidden via it's group icons in the object window. $
$
3. Select the front leg polygons, right-click and select "Name selected parts" select "New name" (or shortcut keys Alt N), enter "front_foot" in the dialog. $
$
@#tut_footnaming.gif@$
$
4. A sub-mesh "front_foot" is created in the object window. $
@#tut_footnaming2.gif@$
$
5. Then repeat the above for the back leg, name it "rear_foot". $
@#tut_footnaming3.gif@$
$
6. You can show/hide each leg individually as it is, but for practice let's group the legs so that they can be shown/hidden at the same time. $
Select front_foot and rear_foot and select [Group] from the right-click menu to group front_foot and rear_foot together. $
(In the figure below, the created group is named "foot")$
$
@#tut_footnaming4.gif@$
$
7. Click the eye icon to the left of "foot" to hide both front and back legs. $
@#tut_foothide.gif@$
$
@footer
[] -----------------------------------------------------------------------------------------------
@Header
$
|S48 Abdomen
1. Make sure the work plane is the XZ plane. $
$
2. Make sure the leg polygons are hidden as explained in the previous page. $
$
3. Draw the center line of the abdomen with the face %FacetTool% tool etc.$
@#tut_under.gif@
$
4. The original polyline guideline will get in the way and be confusing, so hide it in the object window as well and start putting faces on the abdomen. $
However, some of the vertices belonging to the hidden legs could not be used, so there were some parts where faces could not be drawn. $
@#tut_under2.gif@$
$
5. Display the hind leg in the object window and put the faces on the part that could not be put on earlier. And repeat for the font leg if required.$
@#tut_under3.gif@$
$
6. Now we have generated faces for almost all parts. $
@#tut_under4.gif@$
$
|S49 SplineMesh
$
Try Spline %SplineSurf% to create a curved surface. $
A SplineMesh (curved surface) is an approximation shape that is created using the polygon data as shown below. $
$
You can continue modeling in this state, but for now run Spline %SplineSurf% again to remove the Spline surface. $
$
@#tut_halfspline.gif@
$
$
|S410 Symmetry
$
The current version of MarbleCLAY has the following limitations and features for creating symmetrical shapes. $
1) Possible to set symmetry or asymmetry for each face, however, all faces are symmetrical in simple symmetry mode.$$
2) If you want to connect the original plane and the symmetry plane, you must have a vertex on the plane of symmetry.$
$
Due to the restriction in 2 above, move the vertex at the center of the target onto the plane of symmetry (XZ plane). $
$
1. Set the display to the YZ plane of the three-sided view so that the center vertex can be easily selected. $
Select the central part with range selection (whole selection). $
$
@#tut_mirrorcenter.gif@
$
2. Change the view back to perspective and set the work plane to the XZ plane. $
Execute [Mesh Modeling menu]->[Move selected vertices to work plane] from the menu to move the vertices to the plane of symmetry. $
This will make sure the symmetry is aligned correctly and doesn't have holes.$
$
@#tut_center_xz.gif@
$
3. Now we are ready to symmetrize. $
Running Mirror/Curve menu->SimpleMirror %AllMirror% to symmetrizes the selected faces. $
(If you want to unsymmetrize, run Mirror/Curve menu->AllMirror again or  Mirror/Curve menu->Release symmetry)$
$
(With SplineMesh enable at the same time) $
@#tut_mirror.gif@
$
@footer
[] -----------------------------------------------------------------------------------------------
@Header

:S5 Finishing
$
The work so far has roughly completed the shape, but I think there are times when you want to add more details. $
This section introduces some functions that can be used to create details. $
$
|D1 Adding
$
You can use the %AddPointTool% Vertex tool to continuously subdivide faces. $
Edges created by division are called segment lines (or edge loop). $
$
1. Select the %AddPointTool% Vertex tool and hold down the Shift key and left click on the edge you want to split.$
@#tut_detail1.gif@$
$
2. The faces connected to the faces that make up the edge are split continuously.$
@#tut_detail2.gif@$
$
|D2 Deleting
Added segment lines can be deleted using the following methods: $
$
1. Select the move %MoveTool% (press the %BreakPop% key) and double-click on part of the edge loop to select the entire segment line.$
@#tut_detail3.gif@$
$
2. A single %EditDeleteEx% will make the line a semi-determined edge. $
$
3. Run %EditDeleteEx% one more time, the line will disappear and the faces between the lines will be merged. $
@#tut_detail4.gif@$
$
|D3 Welding
When welding two vertices, you can use face %FacetTool% to weld by mouse operation. $
(Use %MeshMenu%->%MeshWeld% to weld 3 or more vertices.)$
$
1. Select face %FacetTool% and drag one vertex you want to weld. $
$
2. When you start dragging, an arrow will appear from the vertex to the cursor position. $
Continue dragging to the other vertex, and release the mouse button when the other vertex is highlighted. $
$
@#tut_dragnweld1.gif@$
$
3. Two vertices have been welded. $
@#tut_dragnweld2.gif@$
$
There are many other editing methods, such as triangulating squares using the face %FacetTool% tool. $
$
See help "%PolygonOperation%" for details. $
$  
|D4 Bending
$
Add hands to make the elephant pose. $
Use the %SelectMagnet% mode of the %MoveTool% tool to create elongated parts such as trunk and legs.
It is convenient to use the function "smooth bend". $
$
1. Choose %SelectMagnet% from the select section. Automatically when you change the selection mode it becomes a move %MoveTool%. $
The influence range of the magnet selection is displayed in a circle around the mouse pointer. Set the size so that about 80% of the trunk is selected. $
Dragging to the right while holding down the right mouse button increases the area of influence. Drag left to make it smaller. $
$
@#tut_nosebend1.gif@$
$
2. Select the vertex of the tip of the trunk and drag it to move it. $
You can add bending deformation by pressing the [Ctrl] key while dragging. $
(In the Move tool -> smooth bend option (right click the Move tool button), ticking "Auto" will be enable to bend and transform automatically, without have to press the Ctrl key)$
$
@#tut_nosebend2.gif@
$
3. Bend parts other than the trunk (legs, etc.) in the same way. $
Since we want to transform the legs asymmetrically, we use Fix %MirrorFreezMirror% to create a symmetrical figure.
Please process after fixing / releasing. $
$
@footer
[] -----------------------------------------------------------------------------------------------
@Header

: End
$

$
The elephant is now complete. $
$
I set the UV value appropriately, painted the eyes, and tried to make it look like clay work. $
Since MarbleCLAY has only the function of a modeler, the final finish is in OBJ, 3DS, RRT, POV format.
Render what you exported with other 3D software. $
$
(For UV settings, please refer to the section "%+UVEdit%" in  help)$
$
@#tut_finish.jpg@
$
: Next
$ 
Be sure to email the creator, Takeshi Maeda for a (free) registration code, see <a href="..\Help\Help1.html#3">Help's Registration</a> for more information. $ 
$
Any questions about this fan translation, please ask via:$
#<a href="https://united3dartists.com/forum/viewtopic.php?f=4&t=6424&p=63994#p63994"/>https://united3dartists.com/forum/viewtopic.php?f=4&t=6424&p=63994#p63994  </a>
$
@footer