!Index1 '<FONT SIZE="+0" ><B>%s</B></FONT>'
!Index2 '<FONT SIZE="+0" >%s</FONT>'
!ShortCut MarbleCLAY.ini SHORTCUT
!ActionString Japanese.str

!Def title '<FONT SIZE="4" COLOR="#0"> MarbleCLAY </FONT>v0.2.39 beta5.7'
!Def Footer '<BR><BR><CENTER><TABLE FRAME=BOX CELLSPACING=0 COLS=1 RULES=GROUPS BORDER=1><COLGROUP><COL WIDTH=500></COLGROUP><TBODY><TR><TD><FONT SIZE="2">@prev@|@next@</FONT><CENTER>@page@</CENTER></TD></TR></TBODY><TBODY><TR><TD BGCOLOR="#94BD5E"><FONT SIZE="1" COLOR="#FFFFFF">Copyright(C)1998-2003 TakeshiMaeda / ESCARGOT Visualwares</FONT></TBODY></TABLE></CENTER></FONT></FONT></BODY></HTML>'
!Def Header '<HTML><BODY BGCOLOR="white" TEXT="black" LINK="#606080" VLINK="#707090" ALINK="red"><FONT FACE="Arial" SIZE="2"><FONT FACE="MS UI �S�V�b�N"><CENTER><TABLE FRAME=BOX CELLSPACING=0 COLS=2 RULES=GROUPS BORDER=1><COLGROUP><COL WIDTH=300><COL WIDTH=200></COLGROUP><TBODY><TR><TD BGCOLOR="#94BD5E"><FONT SIZE="2" COLOR="#FFFFFF">ESCARGOT Visualwares</FONT></TD><TD BGCOLOR="#94BD5E"><FONT SIZE="1" COLOR="#FFFFFF">3D Polygon Modeller</FONT></TD></TR></TBODY><TBODY><TR><TD>@title@</TD><TD><FONT SIZE="2">@prev@|@next@</FONT></TD></TR></TBODY></TABLE></CENTER>'

!Def S2 '<FONT SIZE="2"><B>'
!Def FE '</B></FONT>'
!Def no_sub '<IMG SRC="../HelpImg/no_sub.gif" BORDER=0>'
!Def sub_open '<IMG SRC="../HelpImg/sub_open.gif" BORDER=0>'
!Def sub_close '<IMG SRC="../HelpImg/sub_close.gif" BORDER=0>'
!Def sub_item '<IMG SRC="../HelpImg/sub_item.gif" BORDER=0>'
!Def page dummy
!Def prev �O��
!Def next ����

[Help.html
#<HTML>
#<HEAD>
#  <META NAME="GENERATOR" CONTENT="MakeAHelp for MarbleCLAY">
#  <META HTTP-EQUIV="Content-Type" CONTENT="text/html">
#  <TITLE>MarbleCLAY Help</TITLE>
#</HEAD>
#<FRAMESET COLS="180,77%">
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
##<FONT SIZE="1" FACE="MS UI �S�V�b�N">
##<FONT SIZE="1" FACE="Arial">
##<FONT  COLOR="#608030">ESCARGOT Visualwares<BR></FONT>
##<FONT SIZE="+1" FACE="Lucida console" COLOR="#60A030"> MarbleCLAY</FONT><BR>
##<BR>
##<BR>
##<BR>


!main
<!--
#<BODY BGCOLOR="white" TEXT="black" LINK="olive" VLINK="green" ALINK="red">
#<FONT  COLOR="#608030">ESCARGOT Visualwares  Application<BR></FONT>
@title@$
#<FONT SIZE="+3" FACE="Lucida console" COLOR="#60A030"> MarbleCLAY</FONT>v0.1.15 (beta5)<BR>
@next@
-->
@Header
\Intro 1.�C���g���_�N�V����
$
$
<CENTER>
@#overview.JPG@
</CENTER>
$
:Overview ����
�E�J�[�\���ʒu�̒��_�E�G�b�W�E�|���S����%HighlightElement%���邱�Ƃɂ��A�m���Ȓ��_�̑I���B$
�E�J�[�\���t�߂��g��\������%3DLoope%���g�����A�m���Ȓ��_�̑I���B$
�EUV���ɑ����ԗp��D(Dummy)�����������A3�����ő���ł���UV�ҏW�B$
�E�C�ӂ̃|���S���Ɏw��ł���A�Ώ̐}�`�ҏW�B(%SelectiveMirror%�@�\)$
�E%QuickArea%��p�����A�ȒP�Ȏ��_����$
�E%QuickTool%:Shift+Ctrl+Alt�L�[�̃R���r�l�[�V�����V���[�g�J�b�g�̃J�X�^�}�C�Y�ɂ������I�ȑ���$
�E���C���������Ă����`���̃��f�����O�B%FacetTool%$
�E�S�p�A�R�p�|���S���ɑ΂���%ChangeSplineSurf%�B(%SplineSurf%���m�̘A���������܂����ł����ŏI�I��%FreezeSpline%����̂ł��܂���Ȃ��ƍl���Ă��܂��B)$
�E%vertexColision% ���_�ҏW�̍ہA ���̃|���S���ƏՓˌ��m���s���܂��B$
�E(��)Wacom��SmartScroll�f�o�C�X�ɑΉ�$
�E<A HREF="http://www2.tomato.ne.jp/~leo/rok/rrk/" target="_top">�t���A���S���Y��</A>���̗p���A���Ȃ��X�e�b�v�Ŏv���ʂ�̈ʒu�ɒ��_���ړ����邱�Ƃ��ł���悤�ɂȂ�܂����B[beta5.2e]$
�E�v���O�C���@�\�A�X�N���v�g�@�\�̒ǉ�[5.4]$
�E�E�N���b�N����̃J�X�^�}�C�Y[5.5]$
�E%SimpleBone%�@�\$
$
$
:Introduction �ŏ���
MarbleCLAY�́A3D�|���S�����f���[�ł��B $
$
MarbleCLAY�̓t���[�E�F�A�ł��B��҂̓��m�O�T�Ȑ��i�ł���A�V�F�A�����郁���b�g�����̂Ƃ��댩�o���Ȃ��̂ŁA�V�F�A������\���͒Ⴂ�ł��B$
(����A�V�F�A�����邱�Ƃ������Ă��A�����_�œo�^���Ă������������ɂ́A�����Ŏg���Ă���������悤�ɂ���\��ł��B )$
$
���ɁA�A�C�f�A�̒񋟂�o�O�̃��|�[�g�����Ă������������ɂ͕K�������񋟂��܂��B
�A���A�u���X�̃\�t�g�ƑS�������@�\���ق����v���X�̗v�]�́A���܂������
�v��Ȃ��Ƃ������Ƃ����f�肵�Ă����܂��B�ł���΁A�u�`�����邽�߂ɖ𗧂悤�ȋ@�\���ق����B�v
�u�`����̂��s�ցv���A��̓I�ɉ������邽�߂̋@�\���~�������𖾋L���Ă���������΁A�������
�A�C�f�A�𐷂荞�ޗ]�n������̂ł�肪���������邱�Ƃ��ł��܂��B$
$
MarbleCLAY�̒��쌠��Takeshi Maeda���ۗL���܂��B MarbleCLAY���g�p�������Ƃɂ���ċN����A���ړI�A
�ԐړI�ȑ��Q�ɂ��āA����҂͈�؂̐ӔC�𕉂��܂���B �d�v�ȃt�@�C���͕K���o�b�N�A�b�v��
�������ŁA���g�p���������B$
$
MarbleCLAY�̓E�C���X�������Ă��Ȃ����Ƃ�ۏ؂��܂���B �K�����N�`���\�t�g��p���ăX�L��������
��Ɏ��s���Ă��������B(���N�`���\�t�g�A����уp�^�[���t�@�C���͍ŐV�̂��̂𗘗p���Ă�������)$
$
MarbleCLAY�̍ŐV�ł͍�҂�<A HREF="http://homepage3.nifty.com/escargot">Web�T�C�g</A>����_�E�����[�h���邱�Ƃ��ł��܂��B$
#�o�O���|�[�g���́A<A HREF="mailto:esv@nifty.com">���</A>�܂Ń��[���ł��肢���܂��B
$
$
�Ȗʉ��A�Ώ̐}�`�ҏW�ȂǁA���X�Ǝv���邩������܂���B�������A���_�I���̂��₷���ł́A���̂ǂ��
�\�t�g�ɂ������Ă��Ȃ��Ǝ������Ă��܂��B���܂��ꂽ�Ǝv���Ă��Ўg���Ă݂Ă��������B->%HowTo%$
$
$
:Registration �o�^
�{�o�[�W�����̓t���[�Ō��J���Ă��܂����A���e�X�g�Ƃ���������AMCL�`��(MarbleCLAY��p�`��)�ł̕ۑ��ɐ���(1�I�u�W�F�N�g<FONT COLOR="#FF8080">10000</FONT>�|���S���܂�)���������Ă��܂���$
���̑��̌`���ł̃G�N�X�|�[�g��A�t�@�C���̓��͂ɂ͐���������܂��񂵁A ���̑��̋@�\�ɂ���ؐ����͂������Ă��܂���̂ŁA�����㖳�����Ɏg�p���邱�Ƃ��o���܂��B$
$
��5.6�ȍ~��<FONT COLOR="#FF8080">����ł��߂������߂̌��J</FONT>�ł��A�ł���΃_�E�����[�h���Ă����ɂ͓o�^�����ɁA������x�̃I�u�W�F�N�g������Ă݂ăo�O�������邩�ǂ��������Ă݂Ă��������B$
�����o�O������������A���̃o�O�̏Ǐ�����̓o�^���ɏ��������ēo�^���[�����o���Ă��������B�o�O�̔����������킩��Ȃ��Ă����܂��܂���A�ǂ̂悤�ȃo�O����������̂���
�c�����邽�߂ɕK�v�ȏ��ł��̂ŁA���ׂȃo�O�ł����܂��܂���̂ł�낵�����肢���܂��B(�o�O��������Ȃ��ꍇ�́A�L���Ȃ��ł����܂��܂���)$
$
v1�ŏI����ł͓o�^�s�v�ɂ������ł��B�o�O�̂���\�t�g���g�����Ƃɂ��߂炢���������v1.0�����҂����������B$
$
$
�o�^���@�F$

�ȉ��̏����L�������[����<A HREF="mailto:esv@nifty.com">esv@nifty.com</A>�܂ł����肭�������B$

�܂�Ԃ��A ���������̂��߂̃L�[�������肵�܂��B �����������邱�Ƃō�Ɠr���̃f�[�^���ȒP�ɕۑ����邱�Ƃ�
�o����悤�ɂȂ�܂��B$
(�S�ċL������K�v�͂���܂���B�킩��͈͂����ŗǂ��ł�)$
$
�����FMarbleCLAY�o�^ $
$
1.�g�pOS (��FWindowsXP home)$
2.�g�pCPU (��FAMD Athron 1.4GHz)$
3.�������e�� (��F512MB)$
4.�r�f�I�J�[�h (��FATI RADEON 9700PRO)$
5.�g�p���Ă���3D�\�t�g (��FCarrara2)$
6.InternetExplorer�̃o�[�W����(IE6sp1)$
7.MarbleCLAY��m�����ꏊ$
8.MarbleCLAY���듮�삵���Ȃ�A���̏Ǐ�Ə󋵁B(�킩��͈͂ŏo���邾���ڂ���)$
9.�v�]�E�R�����g$
$
$
$
�o�^�͖����ł��B ������Version�ł̓V�F�A�����邩������܂���(���̏��\�薳��)�A�o�^���Ē��������ɂ͊J����
�������薳���Œ񋟂��܂��B$
$
:ModifyHistory �ύX����
2004/11/29-2005/2/13: ��5.7�Ή�$
%Introduction%�A%Registration%�A%EdgeSel%�A%ObjectSel%�A%EditDelete%�A %EditDeleteEx%�A%BeltSel%�A
%ExtrudeTool%�A%FacetFlowTool%�A
%PartsMenu%�A%SimpleBone%�A%BoneDrawTool%�A%Manipulator%�A%Plugin%�A
%StripMakePoly%�A%HighlightObject%�A%BevelExtrude%�A%Script%�A
%MQOImporter%�A%MQOExporter%�A%UVEdit%�A
%TestRenderRedQueen2%$

$
TODO:$
%ChangeAttribute%�A%Gyakkou%�A%QuickToolR%�A%ObjWinDragDrop%
$
@Footer

[] ---------------------------------------------------------------------------------

@Header
\Refer 2.���t�@�����X

:layout ���C�A�E�g
|whole_layout �S�̃��C�A�E�g
@#layout.jpg@$

��}�́AMarbleCLAY���N�����A�K���ȃI�u�W�F�N�g��ǂݏo������A4�ʐ}�\�����[�h�ɂ�����Ԃ̃X�N���[���V���b�g�ł��B
�ȍ~�Ɋe���ʂɂ��ďڍׂ��L���܂��B$
$
]lay_PersWay (1)�����}��
�Q��.%Pers_layout%$
�ҏW���̃I�u�W�F�N�g�𓧎����e���܂��B%QuickArea%��p���Ď��_��ύX���Ȃ��烂�f�����O���s���Ă����܂��B$
$
]lay_XYWay (2)XY�}��
�Q��.%3Way_layout%$
�I�u�W�F�N�g��Z�������畽�s���e���܂��B$
$
]lay_YZWay (3)YZ�}��
�Q��.%3Way_layout%$
�I�u�W�F�N�g��X�������畽�s���e���܂��B$
$
]lay_XZWay (4)XZ�}��
�Q��.%3Way_layout%$
�I�u�W�F�N�g��Y�������畽�s���e���܂��B$
$
]lay_QuickArea (5)�N�C�b�N�G���A
�Q��.%QuickArea%$
�e�}�ʂ̕\���G���A�̎��͂ɂ�%QuickArea%�ƌĂ΂�镔�������݂��܂��B���̕����͒��ږڂł͊m�F�ł��܂��񂪁A
���̕����ɃJ�[�\���������Ă����ƁA�J�[�\���`�󂪕ω����܂��̂ŁA����ɂ���đ��݂��m�F�ł��܂��B$
�W���ł́A���_�ύX�c�[���������̃G���A�ɐݒ肳��Ă���A���_�̉�]�A�Y�[���C��/�Y�[���A�E�g���ȒP�ɂł���悤�ɂȂ��Ă��܂�(�ݒ�͊��ݒ�_�C�A���O�ɂĕύX�\�ł��B)$
$
]lay_EditTools (6)�ҏW�c�[���o�[
�Q��.%EditTools%$
@#tooloption.gif@@#movetool.gif@@#facetool.gif@@#pointtool.gif@@#polytool.gif@@#freehandtool.gif@@#knifetool.gif@@#claytool.gif@@#extrudetool.gif@@#rolltool.gif@@#scaletool.gif@
$
��ʍ������ɔz�u����Ă���c�[���o�[��%EditTools%�o�[�ƌĂ΂�܂��B$
���̃o�[�ɂ͖ʁA�G�b�W�̍쐬�A��]�ȂǁA���f�����O�ɂ悭�g�p����c�[�����[�߂��Ă��܂��B$
$
�c�[���o�[�ɂ̓v���O�C���@�\�ɂ���Ēǉ����ꂽ�c�[���A�C�R�����\������Ă��邱�Ƃ�����܂��B$
$
]lay_ViewTools (7)���_�c�[���o�[
�Q��.%ViewTools% $
@#viewoption.gif@@#zoomin.gif@@#zoomout.gif@@#handtool.gif@@#zoomtool.gif@@#viewrolltool.gif@@#areazoom.gif@$
�c�[���̂����A���_�ύX�Ɋւ���c�[�����[�߂��Ă��܂��B$
$

]lay_QuickTool (8)�N�C�b�N�c�[���o�[
�Q��.%QuickTool%$
@#quicktooloption.gif@@#quickalt.gif@@#quickaltshift.gif@@#quickaltctrl.gif@@#quickctrlshift.gif@@#quickspace.gif@$
Shift,Ctrl,Alt,Space�L�[�Ȃǂ̃R���r�l�[�V�����ňꎞ�I�ɌĂяo�����c�[����
�ݒ肷�邽�߂�Bar�ł��B �p�ɂɎg�p����c�[���ނ�ݒ肵�Ă����ƍ�ƌ������オ��܂��B$
$
]lay_SelectTools (9)�I���c�[���o�[
�Q��.%SelectTools%$
@#seloption.gif@@#pointmode.gif@@#areamode.gif@@#magnetmode.gif@@#lassomode.gif@@#paintselmode.gif@$
�ʁA�G�b�W�A���_�Ȃǂ�I�����邽�߂̑I���c�[�����w�肵�܂��B$
�W����Ԃł́A�I���c�[����ݒ肷��ƁA���f�����O�c�[���������I�Ɉړ��c�[����
�ݒ肳��܂��B$
$
]lay_SelectFilter (10)�I���t�B���^�[�o�[
�Q��.%SelectFilter%$
@#filteroption.gif@@#pointsel.gif@@#edgesel.gif@@#facesel.gif@@#relsel.gif@$
�I���c�[���őI�������Ώۂ�ݒ肵�܂��B ���_�݂̂�I���������ꍇ���́A���_�{�^��
������������Ă����Ԃɂ��܂��B$
$
]lay_PreviewStyle (11)�v���r���[�ݒ�o�[
�Q��.%PreviewStyle%$
@#previewoption.gif@@#wire.gif@@#shadewire.gif@@#flatwire.gif@@#flat.gif@@#texture.gif@@#smooth.gif@@#shader.gif@@#opengl.gif@$
���f�����O���̉�ʕ\�����[�h��ݒ肵�܂��B$
$
]lay_Property (12)�v���p�e�B�[�o�[
�Q��.%PropertyWindowBar%$
 @#property.gif@$
���ݑI�𒆂̃I�u�W�F�N�g�Ɋւ����񂪕\������E�C���h�E���J���܂��B$
$
]lay_Undo (13)�A���h�D�o�[
�Q��.%UndoBar%$
@#undo.gif@@#redo.gif@$
$
]lay_Image (14)�C���[�W�o�[
�Q��.%ImageBar%$
@#imgoption.gif@@#openimg.gif@@#copyimg.gif@@#raunchpaint.gif@@#pasteimg.gif@@#pentool.gif@$
$
]lay_WaySplit (15)�}�ʕ����o�[
�Q��.%WaySplitBar%$
@#splitoption.gif@@#personly.gif@@#4way.gif@@#2way1.gif@@#2way2.gif@@#2way1uv.gif@@#2way2uv.gif@@#4wayuv1.gif@@#4wayuv2.gif@@#customway.gif@$
$

]lay_Status (16)�X�e�[�^�X�o�[
�Q��.%StatusBar%$
 @#statusbar.gif@$
�X�e�[�^�X��\�����܂��B$
$
]lay_PanelTray (17)�p�l���g���C
�Q��.%PanelTray%$
$
]lay_MainMenu (18)���C�����j���[
�Q��.%MainMenu%$
@#mainmenu.gif@$
$
$
|Pers_layout �����}���C�A�E�g
@#pers.gif@$
�����}�ł̓I�u�W�F�N�g��l�X�ȕ������璭�߂Ȃ���A�ҏW��Ƃ��s�����Ƃ��o���܂��B$
�I�u�W�F�N�g��3�����������̂ɑ΂��āA�X�N���[����2�����̋�Ԃł���A�}�E�X�J�[�\����2�����̑��삵���ł��Ȃ����߁A
����Ȃ�����₤���߂ɁA�ҏW��Ƃ��s���ۂɊ�ƂȂ�ʂ�I������K�v������܂��B(4)�`(10)�̃{�^���́A���̊��(��ƖʂƂ��Ă�)��I������ۂɎg�p���܂��B$
$
]lay_PersWorkArea (1)��ƃG���A 
���̕����ŁA�I�u�W�F�N�g�̃|���S����ҏW���܂��B$
$
]lay_PersQuickArea (2)�N�C�b�N�G���A 
�Q��.%QuickArea%$
$
]lay_PersMaximize (3)�ő剻/�����؂�ւ� 
��ƃG���A�̍ő剻�A�������̐؂�ւ����s���܂��B$
$
]lay_WorkPlanXY (4)XY���ʂ���Ɩ�
�Q��.%WorkPlaneIsXY%�A%AboutWorkPlane%$
$
]lay_WorkPlanYZ (5)YZ���ʂ���Ɩ�
�Q��.%WorkPlaneIsYZ%�A%AboutWorkPlane%$
$
]lay_WorkPlanXZ (6)XZ���ʂ���Ɩ�
�Q��.%WorkPlaneIsXZ%�A%AboutWorkPlane%$
$
]lay_WorkPlanPoly (7)�I���|���S������Ɩ�
�Q��.%WorkPlaneIsPoly%�A%AboutWorkPlane%$
$
]lay_WorkPlanPoly (8)�X�N���[������Ɩ�
�Q��.%WorkPlaneIsScreen%�A%AboutWorkPlane%$
$
]lay_WorkPlanAuto (9)��Ɩʂ������I��
�Q��.%AutoWorkPlane% �A%AboutWorkPlane%$
$
]lay_WorkPlanGyakkou (10)�␳�t�����_�ړ�(�t���A���S���Y��)
�Q��.%GyakkouWorkPlane% �A%AboutWorkPlane%$
$

|3Way_layout 3�ʐ}���C�A�E�g
@#xyview.jpg@$
�O�ʐ}�ł́A�I�u�W�F�N�g��X���AY���AZ���̕������畽�s�ɒ��߂����_�ŁA�ҏW��Ƃ��s���܂��B$
�����}�ł́A�I�u�W�F�N�g���m�̈ʒu�֌W���c�����ɂ����ꍇ���ɗp���܂��B�O�ʐ}�ł̓X�N���[���ɕ��s�Ȗʂ���ƖʂƂȂ邽�߁A��Ɩʂ�ݒ肷��{�^���͑��݂��܂��񂪁A��Ɩʂ��v���X�������璭�߂邩�A�}�C�i�X�������璭�߂邩��I�����邽�߂̃{�^��(4)�����݂��܂��B$
$
]lay_3wayWorkArea (1)��ƃG���A 
%WorkArea%$
$
]lay_3wayQuickArea (2)�N�C�b�N�G���A 
%QuickArea%$
$
]lay_3wayMaximize (3)�ő剻/�����؂�ւ� 
��ƃG���A�̍ő剻�A�������̐؂�ւ����s���܂��B$

@Footer

[] ---------------------------------------------------------------------------------

@Header
$
:MainMenu ���C�����j���[
%FileMenu% %EditMenu% %PartMenu% %MeshMenu% %MirrorMenu%$
 %ImageMenu% %ViewMenu% %OptionMenu% %WindowMenu% %HelpMenu%$
$
|FileMenu File���j���[

]FileNew �V�K &actNew
�V�����h�L�������g���쐬���܂��B$
$
]FileOpen �V�K &actFileOpen
�h�L�������g�t�@�C�����J���܂��B$
$
]FileSave �V�K &actFileSave
��ƒ��̃h�L�������g�t�@�C�����㏑���ۑ����܂��B$
$
]FileSaveAs �V�K &actFileSaveAs
��ƒ��̃h�L�������g�t�@�C���ɕʂ̃t�@�C���������ĕۑ����܂��B$
$
]FileImport �V�K &actImport
3D�`���̃t�@�C������I�u�W�F�N�g��ǂݍ��݁A�h�L�������g�ɒǉ����܂��B$
$
]FileExport �V�K &actExport
�I�𒆂̃I�u�W�F�N�g��l�X�Ȏ�ނ�3D�`���Ńt�@�C���ɏ����o���܂��B$
$
]FileExit A &actExit
MarbleCLAY���I�����܂��B$
$
$
|EditMenu Edit���j���[

]EditUndo A &actUndo
��O�̑�����������܂��B$
$
]EditRedo A &actRedo
�������������������x��蒼���܂��B$
$
]EditBreak A &actBreak
���ݑI�𒆂̃c�[������O�̏�Ԃɖ߂��܂��B$
�Ⴆ�΁A%FacetTool%���[�h�̎��A���������Ă���r����%EditBreak% ������ƁA
���������̂𒆎~���܂��B ���̏�ԂŁA������x%EditBreak% ����ƁA%MoveTool%
���[�h�ɖ߂�܂��B$
%EditBreak%�L�[��K���ɐ��񂽂����ƁA�K��%MoveTool%�ɖ߂�悤�ɂȂ��Ă��܂��B$
$
]EditCut A &actCut
�I�������v�f���N���b�v�{�[�h�ɃR�s�[������ŁA�폜���܂��B$
$
]EditCopy A &actCopy
�I�������v�f���N���b�v�{�[�h�ɃR�s�[���܂��B$
$
]EditPaste A &actPaste
�f�[�^���N���b�v�{�[�h�����ƒ��̃I�u�W�F�N�g���փy�[�X�g���܂�$
$
]EditDelete A &actDelete
�I�������v�f���폜���܂��B$
�E�ʂ�I�����Ă���ꍇ�́A���̖ʂ݂̂��폜�B$
�E�G�b�W��I�����Ă���ꍇ�́A�G�b�W�Ƃ��̃G�b�W�ō\�����Ă���ʂ��폜���܂��B$
�E���_��I����������ꍇ�́A���_�ƁA���̒��_�ō\�����Ă���G�b�W�A�ʂ��폜���܂��B$
$
%SelectRect%���s�����ʌS���폜����ꍇ�A�Ӑ}���Ȃ��ʂ��폜����邱�Ƃ�����(�G�b�W�Ⓒ�_�̍폜�ɂ��Ėʂ��폜�����)���߁A
%EditDeleteEx%���g�����ق������S�ɍ폜��Ƃ��s���܂��B$
$
]EditDeleteEx A &actDeleteEx
�I�������v�f�����폜���܂��B$
�E�P�������́A�Q�̃G�b�W�������_�����폜����ƁA���_���폜���āA���̂Q�̃G�b�W�����
�G�b�W�ɍ������܂��B �G�b�W��ɑł������_���폜�������ꍇ�Ɏg�p���܂��B$
�E�G�b�W��I�����Ă���ꍇ�́A���̃G�b�W�𔼊m��G�b�W�ɂ��܂��B$
$
�E���m��G�b�W��I�����Ă���ꍇ�A���̃G�b�W�ō\�������Q�̖ʂ������Ƃ��R�i�S�j�p�`�̏ꍇ�A�Q�̖ʂ�
��̎l�p�`�ɍ������܂��B�Q�̃|���S������̂S�p�`�ɕϊ��������ꍇ�Ɏg�p���܂�$
$
�E�ʂƕ����̒��_�A�G�b�W�𓯎��ɓ���폜�����ꍇ�A�I������Ă��Ȃ��ʂ��܂܂�Ă���G�b�W�Ⓒ�_���폜���܂���B$
���ʂ�%EditDelete%���s�������A���S�ɃG�b�W�Ⓒ�_���폜�ł��܂��B$
$
��L�̏����ɍ��v���Ȃ��ꍇ�A�������܂���B$
]EditDeleteObject �I�u�W�F�N�g�폜 &actDeleteObject
%ObjectWindow%�őI�𒆂̃I�u�W�F�N�g���폜���܂��B$
$
]EditSubTool �c�[���� &actTool
%EditTools%���Q�Ƃ��Ă��������B$
$
]EditSubSelTool �I���c�[���� &actSelTool
%SelectTools%���Q�Ƃ��Ă��������B$
$

]EditSubWorkplane ��Ɩʁ� &actWorkplane
]]WorkPlaneIsXY XY���ʂ���Ɩʂɂ��� &actWorkXY
XY���ʂ�%AboutWorkPlane%�ɐݒ肵�܂��B$
]]WorkPlaneIsYZ YZ���ʂ���Ɩʂɂ��� &actWorkYZ
YZ���ʂ�%AboutWorkPlane%�ɐݒ肵�܂��B$
]]WorkPlaneIsXZ XZ���ʂ���Ɩʂɂ��� &actWorkXZ
XZ���ʂ�%AboutWorkPlane%�ɐݒ肵�܂��B$

]]WorkPlaneIsScreen �X�N���[�����ʂ���Ɩʂɂ��� &actWorkScreen
���݂̃X�N���[���ƕ��s�����ʂ�%AboutWorkPlane%�ɐݒ肵�܂��B$

]]WorkPlaneIsPoly �I���|���S������Ɩʂɂ��� &actWorkPoly
�I���|���S���ƕ��s�����ʂ�%AboutWorkPlane%�ɂ���B$

]]AutoWorkPlane ��Ɩʂ������ݒ� &actWorkAuto
���_���猩�āA�����Ƃ��K�����ʂ�%AboutWorkPlane%�ɐݒ肵�܂��B$
�o�O�����邽�߁A��������Ɩʂ��ݒ肳��Ȃ��ꍇ������܂����A���̎��ɂ�
���_�������ύX���Ă��΂��܂��s���\��������܂��B$

]]GyakkouWorkPlane �ʒu�␳�t�����_�ړ� &actWorkGyakkou
�ߋ��̎��_�𗘗p���āA���_�����ړ����܂��B$
���̃��[�h������ŁA���_��ύX���Ȃ��璸�_���ړ������邱�ƂŁA���܂ł������Ȃ��X�e�b�v(�ŏ����)�Œ��_��ړI�̈ʒu�t�߂Ɉړ������邱�Ƃ��\�ɂȂ�܂��B$

(�����̋@�\�ɂ�<A HREF="http://www2.tomato.ne.jp/~leo/rok/rrk/" target="_top">Gyakkou�A���S���Y��</A>���̗p���Ă��܂�)$


]EditSelAll A &actSelectAll
�J�����g�̃I�u�W�F�N�g��S�đI�����邱�Ƃ��o���܂��B

]EditUnSel A &actUnSelect
�I�����������܂��B

]EditSelInv A &actSelectInverse
�I���𔽓]���܂��B

]EditSelDopel A &actSelectDopelEdge
�������_�Z�b�g���������̃G�b�W������ꍇ�A �ǂ��炩����̃G�b�W��I�����܂��B$
RDS�o�͎��ȂǁA ���d�G�b�W��F�߂Ȃ��t�@�C���t�H�[�}�b�g�ɏo�͂���ꍇ�A�ŏ���
���̃R�}���h�ő��d�G�b�W��I���������ƁA%EditDelete%���s���đ��d�G�b�W���������Ă��������B$
(�����̏ꍇ�A�`�󂪏����ω����Ă��܂��܂��̂Ŏ��ƂŏC�����K�v�ł�)$
$
]SelectSameMaterial �����J���[��I�� &actSelectSameMaterial
���ݑI�����Ă���ʂƓ����J���[�����ŁA���A�A�����Ă���ʂ�I�����܂��B$

]EditSelSingle A &actSelectSingleEdge
�ʂ������Ȃ��P�Ƃ̃G�b�W��I�����܂��B$
$
]EditSel2Tri A &actSelect2TrigonEdge
�Q�̎O�p�ʂ����L���Ă���G�b�W��I�����܂��B�������A�����őI�������̂͂Q�̎O�p�ʂ�
���������`���l�p�`�ɋ߂��`��ɂȂ镨�����ł��B$
���̃R�}���h�����s�������ƁA%EditDeleteEx%���s���ƁA�����̎O�p�ʂō\�������I�u�W�F�N�g��
�l�p�ʂō\�������I�u�W�F�N�g�ɂ��邱�Ƃ��ł��܂��B$
�������A�ȒP�ȃA���S���Y�����g�p���Ă��邽�߁A�����ڂɂ͎l�p�ʂɂȂ肻���ȕ���I���ł��Ȃ�
���Ƃ����X����܂��B$
$
]EditSelToTemp A &actSelectToTemp
�I������Ă���v�f���A���I���ƌĂ΂���Ԃɂ��܂��B$
���I����Ԃ́A%MeshArrayCopy%�@�\���Ŏg���܂��B$
$
]EditTempToSel A &actTempToSelect
���I����Ԃ̗v�f��I����Ԃɖ߂��܂��B$

$
|PartMenu Part���j���[
$
]ImportParts �p�[�c��ǉ� &actImportParts
�ۑ����Ă���ʂ�.mcl�t�@�C�����p�[�c�Ƃ��ăh�L�������g�ɓǂݍ��݂܂��B$
$
]FreezePart �p�[�c���Œ� &actFreezeParts
�I�����Ă���p�[�c���|���S�����b�V���Ƃ��Ď��̉����܂��B$
$
$
|MeshMenu MeshModeling���j���[

]MeshPrimitive �v���~�e�B�u�쐬�� &actPrimitive

]]MeshPrimSphere A &actPrimSphere
�������̐ݒ�����A�����쐬���܂��B$
$
]]MeshPrimSquare A &actPrimSquare
�������̐ݒ�A���_��G�b�W���s������ݒ���s���A�����̂��쐬���܂��B$
$
]]MeshPrimCylinder A &actPrimCylinder
������
$
]]MeshPrimCorn �O�p�� &actPrimCorn
������
$
]]MeshPrimDonut �h�[�i�b�c &actDonut
������
$
]]MeshPrimPlane ���� &actPlane
������
$
]MeshLathe A &actLathe
�C�ӂ̐��`���A�E�g���C���Ƃ�����]�̂𐶐����܂��B$
$
%FacetTool%�A%PolyLineTool%�A%FreehandLineTool%���ŊO�`����`���A���̐��`��I����A
%MeshMenu%->%MeshLathe%�����s���A����������͂���ƁAZ���𒆐S�Ƃ��Ďw�肵��
���`����O�`�Ƃ�����]�̂���������܂��B$
$
�{���́A�ォ��O�`����ύX�����ꍇ�ɉ�]�̂̌`�󂪃C���^���N�e�B�u�ɕό`����
�悤�Ȃ��̂��l���Ă��܂������A�Ƃ肠��������͌�񂵂ɂ��āA���̂悤�Ȍ`�ł̎�����
���܂����B$
����āA���̐惆�[�U�[�C���^�[�t�F�C�X���ύX�ɂȂ�\��������܂��B$
$
]MeshColision �Փˌ��m�� &actColision
]]MeshVertexColisionDeform ���_�Փˌ��m-�ό` &actVertexColision
�e���_���ɏՓˌ��m���s���܂��B ���̑���̌��ʁA �Ώۂ̃I�u�W�F�N�g���A���̃I�u�W�F�N�g��
��������ꂽ�悤�ȕό`�����邱�ƂɂȂ�܂��B$
$
]]MeshVertexColisionMove ���_�Փˌ��m-�ړ� &actVertexColisionMove
�e���_���ɏՓˌ��m���s���܂����A �v�Z���ʂ̂����A�����Ƃ��ړ����������Ȃ����_��
���킹�āu�I���I�u�W�F�N�g�S�́v���ړ����܂��B$
�I�u�W�F�N�g���m���҂�����Ɖ��킹�����ꍇ�Ɏg�p���܂��B$
$
]MeshEffectFilter �G�t�F�N�g�t�B���^�[�� &actEffectFilter
]]MeshRelaxFilter �����b�N�X &actEffectRelax
�I���������_�̈ʒu�𕽋ω����܂��B$
�I�u�W�F�N�g�\�ʂɖ]�܂Ȃ����ʂ��o�����ꍇ�ɁA���̉��ʕ�����I������%@MeshRelaxFilter%��
���s����ƁA�኱���炩�ɂȂ�܂��B �]�݂̊��炩���ɂȂ�܂Ő�����s���Ă��������B$
$
�s�����_�A�s���G�b�W�̐ݒ肪���f�����悤�ɂȂ�܂����B(��4.6)$
$

]]MeshBumpyFilter �o���s�[ &actEffectBumpy
�I���������_�̈ʒu�𗐂ꂳ���܂��B$
�}�O�l�b�g�I���������_�Q�ɑ΂��Ď��s�����ꍇ�A�I���̋����ɉ����ė������ω����܂��B$

]MeshMakePolyAll �S�Ăɖʒ��� &actMakePolyAll
�S�ẴG�b�W�ɑ΂��āA�\�Ȍ���ʂ𒣂�܂��B$
$
]MeshMakePolySel �I�𕔕��ɖʒ��� &actMakePolySel
�I�������G�b�W�ň͂܂�Ă��镔�������ɖʂ𒣂�܂��B$
$
]MeshPolySeparate �ʂ̕��� &actPolySeparate
�I�������ʂ��A�|�����b�V�����番�����܂��B$
$

]MeshPolySeparateByEdge �G�b�W�ŕ��� &actEdgeSeparate
]MeshTriangratePoly �O�p���� &actPolyTriangle

]MeshSubDivide �ĕ��� &actPolySubdivide
�I�������ʂ��A�ĕ������܂��B$
$
@#subdivide.jpg@
$
�A���S���Y�������܂�ǂ��Ȃ����߁A�ׂ����������Ă����ƌ`��ɂ��˂肪�����܂��B$
<B>*��4.6�ɂăA���S���Y�����ǁB�����͂܂��ɂȂ����Ǝv���܂�</B>$
<B>�s�����_�A�s���G�b�W�̐ݒ肪���f�����悤�ɂȂ�܂����B(��4.6)</B>$
$
]MeshFlipPolygon �|���S�����] &actPolyFlip
�I���|���S���𔽓]���܂��B$

]MeshAdjustPolygon �|���S���̌����𑵂��� &actPolyAdjust
�I���|���S���Ɍq�����Ă���S�Ă̖ʂ̌����𑵂��܂��B$

]MeshBooleanCut �u�[���A���J�b�g &actBooleanCut
��̃��b�V���Ԃ̌�������߁A�����Ń��b�V�����J�b�g���܂��B$
�Q��.%BooleanCut%$

]MeshPush �����o�� &actPolyPushByFig
�I��ʂ��A�����o���܂�$
<B>���s�����o��</B> �ł́A�ʂ̖@���x�N�g�������ɁA�����ɉ����o�����s���܂��B$
<B>���_�̖@���x�N�g���ɂ��������ĉ����o��</B> �ł́A�e���_��@���x�N�g���̌����ɉ����o���܂��B$
���̑��̉����o�����@�́A�܂��������Ă��܂���B$

]MeshDuplicate ���� &actDuplicate
�I��v�f���A�������܂��B$
�w��ʂɑ΂��đΏ̂ɕ�������ꍇ�A <B>�n��</B>�Ƀ`�F�b�N�����Ă����ƁA�ڍ�������
�n�ڂ��܂��B(���݂͕s����ł�)$

]MeshArrayCopy �z��R�s�[ &actArrayDuplicate
�I��v�f��A�����ĕ������܂��B$
��5.1�ł́A�I��v�f���A���I�����C���ɉ����ĕ�������@�\�݂̂���������Ă��܂��B$
$

]MeshWeld �n�� &actWeld
�I�𒸓_��n�ڂ��܂��B$
<B>UV�r���[�Ŏ��s�����ꍇ��UV���_���n�ڂł���悤�ɂȂ�܂��� beta5.3</B>$
$
<B>�n�ڂ��钸�_�̋���</B> �ɐݒ肵�����������ڋ߂��Ă��钸�_���n�ڂ���܂��B$
<B>�I���������_��S�ėn��</B> �Ƀ`�F�b�N������ƁA�����Ɋ֌W�Ȃ��I���������_����_�ɂ܂Ƃ߂��܂��B$
$

]MeshMoveToWorkPlane �I��ʂ���ƖʂɈړ� &actMoveToWorkPlane
�I��v�f���A��ƖʂɈړ����܂��B$
%MeshDuplicate%�ŁA�Ώ̂ɕ�������O�ɁA�ڍ��ʂɂȂ镔���̒��_����ƖʂɈړ����Ă����ƁA�m����
%MeshWeld%���邱�Ƃ��ł��܂��B$

]MeshFlatPolygon �ʂ𕽖ʉ����� &actPolyFlat
�I��ʂ𕽖ʉ����܂��B$
�܂��A�s���S�ł��B$
$
]HideSelected �I�𕔂��B�� &actPolyHide
�I�����Ă���v�f���B���܂�(��\���ɂ���)$
$

]HideUnSelected ��I�𕔂��B�� &actPolyUnSelectHide
�I�����Ă��镔���ȊO�̗v�f���B���܂�(��\���ɂ���)$
$

]UnHide �B����������\�� &actPolyUnHide
%HideSelected%��%HideUnSelected%de�B�����������ēx�\�����܂��B$
$

]Naming ���O������ &actPolyNaming
�I�������v�f�ɖ��O�����܂��B$
$

]ColorChange �I�𕔂̐F��ς��� &actPolyChangeColor
�I������Ă���ʂ̃}�e���A����I�𒆂̃}�e���A���Œu�������܂��B$
$

]PickMaterial �}�e���A�����E�� &actPickMaterial
�I��ʂ̃}�e���A�����E�����Ƃ��ł��܂��B$
$


$
|MirrorMenu Mirror/Curve���j���[

]AllMirror �ȈՑΏ� &actAllMirror

���݂̃I�u�W�F�N�g���ȈՑΏۃ��[�h�ɂ��܂��B$
���̃��[�h�ł́A�I�u�W�F�N�g���̑S�Ă̗v�f��Ώ̉����܂��B�P���ȑΏې}�`�𐶐�����ꍇ�͂��̋@�\���g���Ă��������B$
$
�Ώ̕����Ɣ�Ώ̕��������݂���悤�Ȍ`��𐶐��������ꍇ�́A%AllMirror%���������āA%MirrorMakeMirror%���g�p���Ă��������B$
$
cf.%SelectiveMirror%
$
]MirrorMakeMirror �Ώ̐}�`���� &actMirror

�I������Ă���ʂ��AXZ���ʂɑΏ̂ɑΏ̕ҏW���܂��B$
(���݂�XZ���ʂ��I�΂�Ă��܂����A�����I�ɕύX�\�ɂ��܂��BRDS�I�ȑ����
���P����Ȃ�YZ���ʂ̂ق����ǂ���������܂����)$
��x�A�Ώ̐}�`�𐶐�����ƁA�ȍ~���̖ʂɂȂ��Đ��������ʂ́A�����I�ɑΏەҏW����܂��B$
�Ώ̐}�`��������XZ���ʂɑ��݂��Ă������_�́A���̖ʂƑΏ̖ʂ̊Ԃŋ��L����AXZ���ʏ�
���痣�����Ƃ��o���Ȃ��Ȃ�܂��B$
$
�����_�ł́A�s���S�ȋ@�\�ł��邽�߁A�ΏەҏW���̖ʂɑ΂��āA�ړ��A��]�A�g��k���ȊO��
�ҏW���s���ƁA�Ώ̐}�`���폜����܂��B$
���̏ꍇ�A�ʂ��ēx�I������%MirrorMakeMirror%���邱�ƂŁA�Ώ̐}�`���Đ������邱�Ƃ��ł��܂��B$
�Ώ̐}�`���Đ��������ꍇ�ɁA�������Ώ̐}�`�ɂȂ�Ȃ����Ƃ�����܂����A���̏ꍇ��
��x%MirrorUnMirror%���s���đΏەҏW������������ŁA������x%MirrorMakeMirror%���đΏ����Ă��������B$
$
cf.%SelectiveMirror%
$
]MirrorSelectUnMirror �I��ʂ̑Ώ̉��� &actSelectUnMirror
�I�𕔕����Ώ̐}�`�������Ă���ꍇ�A�Ώ̉����������܂��B$
$

]MirrorSelectFreezMirror �I��ʂ̑Ώ̌Œ� &actSelectFreezMirror
�I�𕔕����Ώ̐}�`�������Ă���ꍇ�A�Ώ̂��Œ肵�܂��B$
�Ώ̂��Œ肳�ꂽ�}�`�́A���ꂼ��ʌɕҏW�\�ł����A����������%MirrorMakeMirror%���s����
�Ώ̕ҏW��Ԃɖ߂�܂��B$
$

]MirrorUnMirror �Ώ̉��� &actUnMirror

�Ώ̕ҏW���������܂��B$
$
%AllMirror%�̏ꍇ�A���[�h����������܂��B$
$
]MirrorFreezMirror �Ώ̐}�`���Œ� &actFreezMirror

�Ώ̐}�`���Œ肵�đΏ̕ҏW���������܂��B$
��x�Œ肵���Ώې}�`�́A�ȍ~�ʏ�̖ʂƓ����悤�ɑI���E�ҏW���\�ɂȂ�܂��B$
$
%AllMirror%�̏ꍇ�A���[�h����������܂��B$
$

]ChangeSplineSurf �Ȗʉ� &actSplineMesh

�R�p�`�A�������͂S�p�`�|���S���ō\�������I�u�W�F�N�g��Bezier�p�b�`�Ȗʉ����܂��B$
���ɋȖʉ�����Ă���I�u�W�F�N�g�ɑ΂��Ď��s����ƁA�Ȗʂ���������܂��B$
$
�኱�����ȕ��@�Ńp�b�`���m��ڑ����Ă��邽�߁A�ȖʂƂ��Ă̘A�����͕ۏ؂���܂���B$
$
���łł́A�܂�ɋȖʂ��ُ퐶������邱�Ƃ�����܂��B���̏ꍇ�͂�����x
%ChangeSplineSurf%���s���ċȖʂ��������Ă���A������x�Ȗʉ����s���Ă��������B$
$
@#spline.jpg@$
����%ChangeSplineSurf%�Ő������ꂽ�ȖʁB�E��%ChangeSplinePatch%�Ő������ꂽ�ȖʁB$
$
cf.%SplineSurf%
$
]ChangeSplinePatch �Ȗʉ� &actSplinePatch
�]���^��%ChangeSplineSurf%�Ƃ͈قȂ�A����_��ʂ�Ȗʂ���������܂��B$
$
cf.%SplineSurf%
$
]FreezeSpline �Ȗʂ̃|���S���� &actFreezSpline

Bezier�p�b�`�Ȗʉ������I�u�W�F�N�g���w��̕������Ń|���S�������邱�ƂŁA�����_�����O�\�t�g�E�F�A(RDS��)��
�������ޏ��������܂��B �Ȗʉ������I�u�W�F�N�g���|���S�������Ȃ��Ń����_�����O�\�t�g�Ɏ������񂾏ꍇ�A
�Ȗʉ��O�̌`��Ń����_�����O����Ă��܂��܂��B$
$
�A���AMegaPOV��Redqueen�`�����A�ꕔ�̌`���ł͎����I�Ƀ|���S���ɕ�������邽�߁A���̑���͕s�v�̏ꍇ������܂��B(�������͊��ݒ�_�C�A���O�Őݒ�ł��܂�)$

@#freezeSpline.jpg@

]SharpEdge �G�b�W���s������ &actEdgeSharp

���̃G�b�W���܂����镔���Ő܂�Ȃ���悤�ȋȖʂ𓾂邱�Ƃ��o���܂��B$
RayDreamStudio�`���ŏo�͂����ꍇ�ɂ́A���b�V�����f���[�̃G�b�W���s������@�\���g�p�����̂Ɠ�����
���ʂ������܂��B$
$
<B>��4.7���璸�_�̃E�F�C�g�ɑΉ����܂������A���̋@�\�ł͒��_�ւ̃E�F�C�g�Ƃ͈Ⴄ���ʂ������܂�$
�󋵂ɂ���Ďg�������Ă�������</B>

$
$

]UnSharpEdge �G�b�W�����炩�ɂ��� &actEdgeSmooth
%SharpEdge%�Ƌt�̓�������܂��B$


]SharpVertex ���_���s������ &actVertexSharp

�Ȗʉ����ɐ�炷���_���w�肵�܂��B $

<B>��4.7���璸�_�̃E�F�C�g�ɑΉ��������߁A���̋@�\�̓��삪�ύX����܂����B$
��4.7�ȍ~�ł��̃R�}���h�����s����ƁA�E�G�C�g���ő�ɂ����ꍇ�Ɠ������ʂ������܂�</B>
$
$
�s�����_��%MeshRelaxFilter%�A%MeshSubdivide%���s���Ă��ړ����܂���B
$
$


]UnSharpVertex ���_�����炩�ɂ��� &actVertexSmooth
%SharpVertex%�Ƌt�̓�������܂��B$
$
<B>��4.7�ȍ~�ł��̃R�}���h�����s����ƁA�E�G�C�g��0�ɂ����ꍇ�Ɠ������ʂ������܂�</B>
$
$
@#sharpedge.jpg@
$
������A �ʏ�̋Ȗʉ��I�u�W�F�N�g�A ��ʂ̂Q�̃G�b�W���s�������I�u�W�F�N�g�A ����ɏ�ʂ̂Q���_���点���I�u�W�F�N�g�̏��ł��B$
$
$
*SplineWeight �Ȗʉ����̃E�F�C�g
<B>��4.7</B>
]SplineWeightUp ���_�E�F�C�g���� &actSplineWeightP
���������Ȗʂ��A���_�ɋ߂Â��܂��B$



]SplineWeightDown ���_�E�F�C�g���� &actSplineWeightM
���������Ȗʂ��A���_���牓�����܂��B$
�E�F�C�g������������ƁA�������тȌ`��ɂȂ�܂��B$
$
$
<B>���j���[�ɂ�鑀��̑��Ƀ}�E�X����ɂ��E�F�C�g�ύX���\�ł��B$
%MoveTool%�g���A�E�F�C�g��ύX������������I�����A���̕������E�����ɉE�h���b�O����ƁA�E�F�C�g���������A
�������ɉE�h���b�O����ƃE�F�C�g���������܂��B$
���̑�����@�̓e�X�g�i�K�ł��邽�ߏ����I�ɕʂ̑�����@�ɕύX�����\��������܂�</B>
$
$
@#weight.gif@
$
��i������A �ʏ�̋Ȗʉ��I�u�W�F�N�g�A�e���_�̃E�F�C�g�����Ȃ������I�u�W�F�N�g$
���i������A�e���_�̃E�F�C�g��傫�������I�u�W�F�N�g�A�����̒��_�̃E�F�C�g���ő�ɂ����I�u�W�F�N�g�ł��B$
$
|PartsMenu Parts/Bone���j���[
]ImportParts ImportParts &actImportParts
]FreezeParts FreezeParts &actFreezeParts

]PartsToWorkPlane PartsToWorkPlane &actPartsToWorkPlane

]ParsMirror ParsMirror &actParsMirror

]AttachBoneSimple AttachBoneSimple &actAttachBoneSimple
]DetachBoneSimple DetachBoneSimple &actDetachBoneSimple
]Skinmode Skinmode &actSkinmode
]DeactivateSkinMode DeactivateSkinMode &actDeactivateSkinMode
]AttachBone AttachBone &actAttachBone
]DetachBone DetachBone &actDetachBone
]PartsResetPosition PartsResetPosition &actPartsResetPosition

|ImageMenu UV/Image���j���[
]UVGenerate UV &actUVMapMake

�I�������ʂɑ΂���UV�l�����蓖�Ă܂��B$
$
]UVBurn �ĕt�� &actImgUV
UV�e���v���[�g���쐬���AUV���b�V�����ĕt���܂��B�O���y�C���g�\�t�g�Ńe�N�X�`����`���ۂɃe���v���[�g�Ƃ��ėp���܂��B$
$
]ImageCopyToClipborad �N���b�v�{�[�h�ɃR�s�[ &actImgCopy
%ObjectWindow%�őI�𒆂̉摜���N���b�v�{�[�h�ɃR�s�[����$
$ 
]ImagePasteFromClipborad �N���b�v�{�[�h�ɃR�s�[ &actImgPaste
%ObjectWindow%�őI�𒆂̃e���v���[�g�փN���b�v�{�[�h����摜���y�[�X�g����$

$
]ImageTempSize �e���v���[�g�T�C�Y�ύX &actImgSizeAndPos
%ObjectWindow%�őI������Ă���e���v���[�g��
�ʒu�ƃT�C�Y��ύX����_�C�A���O���\������܂��B $

]ImageTempHalfTone �e���v���[�g�W�F�\�� &actImghalftone
%ObjectWindow%�őI������Ă���e���v���[�g�摜�̃R���g���X�g�������܂��B
�e���v���[�g�̐F���Z�����ăI�u�W�F�N�g���m�F�����炢���Ɏg�p���Ă��������B$

]ImageTempOpen �e���v���[�g�ɉ摜�ǂ݂��� &actImgOpen
�e���v���[�g��I�����AImage->�摜��ǂ݂��ނ����s����ƁA�e���v���[�g�摜�����[�h���邱�Ƃ��ł��܂��B$
$
]ImageModelingTemplate ���f�����O�e���v���[�g &actModelingTemplate
]]ImageImportToXY XY���ʂɓǂݍ��� &actImageXY
]]ImageImportToYZ YZ���ʂɓǂݍ��� &actImageYZ
]]ImageImportToZX ZX���ʂɓǂݍ��� &actImageZX
$
|ViewMenu View���j���[

]ViewRefresh ��ʍX�V &actRefresh
���݂�Version�ł́A��������Ă��������ɉ�ʂɃS�~���c���Ă��܂��܂��B
�K���ȂƂ���ŁA%ViewRefresh%���s���āA��ʂ��X�V���Ă��������B$

]Grid �O���b�h�ݒ� &actGridSet
]GridSnap �O���b�h�X�i�b�v &actGridOnOff
��Ɩʂ�XY,YZ,XZ�̂����ꂩ�ɐݒ肵�Ă���ꍇ�A�J�[�\���ړ����O���b�h�P�ʂɌ��肵�܂��B$
$
|OptionMenu Option���j���[
$
|WindowMenu Window���j���[
$
|HelpMenu Help���j���[
@Footer

[] ---------------------------------------------------------------------------------
@Header

:ContextMenu �R���e�N�X�g���j���[ 
�p�[�X�y�N�e�B�u�r���[�A�������͂R�ʐ}��ŁA�}�E�X�̉E�{�^�����N���b�N���A���̂܂܃{�^���𗣂��ƃR���e�N�X�g���j���[���\��
����܂��B$
�R���e�N�X�g���j���[�ɂ́A�F�X�ȍ��ڂ��܂܂�Ă���A�����I�ɂ̓J�X�^�}�C�Y�\�ɂ���\��ł����A
�������d�v�ȍ��ڂ����݂��܂��̂ŁA�ȉ��ɐ������܂��B$

]BreakPop ���~ &actBreak
  ���C�����j���[��%EditBreak%�Ɠ����ł��B ���C���`��𒆎~������A �W���̈ړ����[�h�ɖ߂����肵�܂��B$
  
]Enter ���s
  ��������������ɁA���j���[���甲���܂��B$
$
]CursorAt �J�[�\���ʒu�����݂̓_�Ɉړ� &actCursorChange
�ʏ�A���f�����O���ɂ́A%AboutWorkPlane�����苗�����ꂽ���ʂɕ��s���đ��삪
�s���܂��B$
�Ⴆ�΁A��Ɩʂ���K���ȋ����������ꂽ�Ƃ���ɕ��ʂ��쐬�������ꍇ�A
���̋����̈ʒu�ɑ��݂��钸�_�̏�ɃJ�[�\���������čs���A%CursorAt%�����s����ƁA
�ȍ~�A�J�[�\���͍�Ɩʂ��炻�̋�������������܂��B ���̏�ԂŖʂ��쐬����ƁA
��Ɩʂ����苗�����ꂽ�ʂ��쐬���邱�Ƃ��ł��܂��B$
�t�ɁA�J�[�\���ʒu����Ɩʂ��痣��Ă��܂��Ă����ԂŁA��Ɩʏ�ɖʂ���肽���ꍇ
�ɂ́A���_�����݂��Ȃ��ꏊ�ŁA%CursorAt%�����s����ƁA�J�[�\���͍�Ɩʏ���ړ�����悤�ɂȂ�܂��B$
���t�Ő�������Ƃ�₱�����ł����A����Ă݂�΁A�����ɗ����ł���Ǝv���܂��B$
$

]ViewAt ������\���̒��S�ɂ��� &actViewCenter
�J�[�\���ʒu���A�\���̒��S�ƂȂ�_(�����_)�ɂ��܂��B$
$
]SelectRelated �ڑ��_��I�� &actObjectSelect
�J�[�\���̉��ɂ���v�f�ɘA�����Đڑ�����Ă���v�f��S�đI�����܂��B$
�I�u�W�F�N�g���̓Ɨ������p�[�c��I�����邽�߂Ɏg�p���܂��B �}�E�X�̍��_�u���N���b�N�ɂ�
���蓖�Ă��Ă��邽�߁A�ʏ�͂�������g�p���邱�Ƃ������Ǝv���܂��B$

$
]ContextNaming1 �I�𕔂ɖ��O������>
]]ContextNaming2 �V�K���� &actNaming
�I�����Ă���v�f�ɐV�������O(�|�����b�V����)�����܂��B$
�V�����������̂�%ObjectWindow%�ɕ\������܂��B$
$
�Q��.%ObjectHandling%$

@Footer

[] ---------------------------------------------------------------------------------

@Header
:ToolBars �c�[���o�[

|EditTools �ҏW�c�[��
@#tooloption.gif@@#movetool.gif@@#facetool.gif@@#pointtool.gif@@#polytool.gif@@#freehandtool.gif@@#knifetool.gif@@#claytool.gif@@#extrudetool.gif@@#rolltool.gif@@#scaletool.gif@@#longbonetool.gif@@#facetflowtool.gif@
$
$
]ToolOption �c�[���I�v�V����
@#tooloption.gif@
�e�c�[���ŗL�̐ݒ���s��%ToolOptionWindow%��\�����܂��B%ToolOptionWindow%�͕W���ł͍���%PanelTray%���ɕ\������܂��B$
%ToolOptionWindow%�́A�e�c�[���̃{�^�����E�N���b�N���Ă��\������܂��B$
$
]MoveTool �ړ��c�[�� &actEditMove movetool.gif
@#movetool.gif@
�I���������_�A�G�b�W�A�ʂ̈ړ����s���܂��B���̃c�[����I�����Ă����Ԃ�
%SelectTools%��p���đI���c�[����ύX����ƁA%SelectRect%�A
%SelectMagnet%�A%SelectLasso%���s�����Ƃ��ł��܂��B$
%SelectMagnet%��I�����Ă���ꍇ�A [%Smoothbend%]�I�v�V�������L���ɂȂ�܂��B
���̃X���[�X�x���h�u�����v�Ƀ`�F�b�N�����邩�A�h���b�O����CTRL�L�[�������ƁA
���_�𕽍s�ړ��ł͂Ȃ��A�Ȃ��ړ����܂��B�ג����I�u�W�F�N�g�̒��_�ҏW���Ɍ��ʓI�ɓ����܂��B$
$
]FacetTool �ʐ����c�[�� &actEditPolygn facetool.gif
@#facetool.gif@
���������Ă������ƂŖʂ𐶐����܂��B�c�[���E�C���h�E%ToolOptionWindow%�Ŗʐ������u���S�Ɏ����v�ɂ��Ă���
�ꍇ�A�S�p�`�A�������͂R�p�`���\�����ꂽ���_�Ŏ����I�ɖʂ���������܂��B$
���̏ꍇ�A�Ӑ}���Ă���ꏊ�Ƃ͈Ⴄ�ʂ���������Ă��܂��������邽�߁A�u���[�U�[����������v���[�h��
�p�ӂ��Ă��܂��B���̃��[�h�ł́A���[�U�[���S�_�A�������͂R�_��A�����ăN���b�N�����ꍇ�̂݁A�ʂ�����
����܂��B$
$
�܂��A�u�h���b�O���E�F���h�v�Ƀ`�F�b�N�����Ă���ꍇ�A���_���h���b�O���đ��̒��_�̏��
�����Ă����� ���_���m��n�ڂ��邱�Ƃ��ł��܂�(����I�u�W�F�N�g���̏ꍇ)�B �قȂ�I�u�W�F�N�g
�Ԃ�A�`�F�b�N�����Ă��Ȃ��ꍇ���́A���_�������ʒu�Ɉړ����邾���ŗn�ڂ͂���܂���B$
$
]AddPointTool ���_�ǉ��c�[�� &ActEditAddPoint pointtool.gif
@#pointtool.gif@
���ɂ���G�b�W��ɁA���_��ǉ����܂��B$
Ctrl+���N���b�N�A�������͉E�N���b�N(�c�[���E�C���h�E%ToolOptionWindow%�őI���\)�Ŋ��ɂ��钸�_��
�폜���܂��B(�E�N���b�N�ɂ�%ContextMenu%�����蓖�Ă��Ă��邽�߁A������
�h�����߂ɁA�W���ł�Ctrl+���N���b�N�Ɋ��蓖�Ă��Ă��܂�)$
$
]PolylineTool �܂���c�[�� &actEditPolyline polytool.gif
@#polytool.gif@
�ʂ���������Ȃ����ȊO��%FacetTool%�Ɠ����ł��B$
$
]FreehandlineTool �t���[�n���h�܂���c�[�� &actEditFree freehandtool.gif
@#freehandtool.gif@
�t���[�n���h�Ń��C����`�悵�܂��B ���f�����O�̍ŏ��ɁA�����܂��ȊO�`��`������
�g�p���܂��B ���_�������Ȃ肪���Ȃ̂ŁA%AddPointTool%���g���ēK���ɒ��_���폜
���Ă��������B$
$

]CutTool �J�b�g�c�[�� &actEditKnife knifetool.gif
@#knifetool.gif@
�ʁA�����J�b�g���܂��B$
�ؒf�Ώۂ̃I�u�W�F�N�g����h���b�O���邱�ƂŁA�I�u�W�F�N�g���h���b�O���������Őؒf���܂��B
�I�u�W�F�N�g��Ń}�E�X�h���b�O���I������(�}�E�X�{�^���𗣂���)�ꍇ�A�}�E�X�{�^���𗣂���
�ꏊ�̖ʂ���A�����Ă��镔���������ؒf����܂��B(�I�u�W�F�N�g�̗����ɂ͉e��������)$
$
]ClayTool �N���C�c�[�� &actEditClay claytool.gif
@#claytool.gif@
�I�u�W�F�N�g�̕\�ʂ�S�y�̂悤�ɕό`������c�[���ł��B$
���炩�ɕό`�����邽�߂ɁA�K�v�Ȃ�΃I�u�W�F�N�g�\�ʂ��ĕ������܂��B�ό`����͈͂�
%SelectMagnet%�Ŏw�肳��܂��B$
���̃c�[���Ŏv���ʂ�̌`�����̂́A�قڕs�\���Ǝv���܂����A �v�������Ȃ��`���
��邱�Ƃ��o����̂ŁA���f�����O�������̃A�C�f�A���ɖ𗧂�������܂���B$
%MoveTool%�Ɠ��l�ɁA[%Smoothbend%]�I�v�V�������L���ł��B$
(���̃c�[���͎������̋@�\�ł��B �{�c�ɂȂ�\��������܂�)$
$
]ExtrudeTool �����o���c�[�� &actEditPush extrudetool.gif
�I���|���S����l�X�Ȍ`���ŉ����o���܂��B$
�����o���`���̓T�u�c�[���Ō��肳��A�T�u�c�[����%ToolOptionWindow%�������́A%ExtrudeTool%���N���b�N���邩�A�h���b�O���邱�Ƃŕ\������郁�j���[��p���đI���ł��܂��B$
$
@#extrudetool.gif@ ���s�����o��$
�|���S����I��������A�E�����Ƀ}�E�X�����h���b�O����ƁA�|���S���̕\���̕����ɖʂ������o����܂��B$
$
@#extrudetool_back.gif@ ���ʂ��c���ĉ����o��$
�|���S����I��������A�E�����Ƀ}�E�X�����h���b�O����ƁA�|���S���̕\���̕����ɖʂ������o����܂��B�X�ɁA���X�I������Ă����ʂ��c��A���]���܂��B$
�|���S�����甠��̌`����쐬����ۂɗ��p���܂��B$
$
@#extrudetool_bevel.gif@ �׃x�������o��$
�|���S����I��������A�E�����Ƀ}�E�X�����h���b�O����ƁA�|���S���̕\���̕����ɖʂ������o����܂��B���̎��A�V�����ʂ͉����o�����ɂ�ď������Ȃ�܂��B$
$
@#extrudetool_move.gif@ �ړ������o��$
�}�E�X�̍��h���b�O�ɉ����ă|���S���̌����Ƃ͖��֌W�ɉ����o����܂��B$
$
@#extrudetool_snap.gif@ �X�i�b�v�����o��$
�V�����ʂ́A���X�I�����Ă����ʂɒ���t������Ԃō쐬����܂��B$
$
*BevelExtrude �G�b�W�׃x��
@#extrudetool_beveledge.gif@ �G�b�W�׃x��$
���̃T�u�c�[���͑��̃T�u�c�[���Ƃ͈قȂ�A�ʂł͂Ȃ��G�b�W�ɍ�p���܂��B�G�b�W��I�����E�����Ƀ}�E�X�����h���b�O����ƁA�G�b�W�Ƀx�x����������܂��B$
$

$
*EdgeExtrude �G�b�W�A���_�̉�������
�G�b�W�̉����o��:$
��4.8����A�G�b�W�����������Ėʂ����@�\�ɑΉ����܂����B�܂��A�G�b�W�̉���������⍲���邽�߂�
����I�ł����A���_�������o���Ėʂ����@�\������܂��B�ڂ����͂P�|Step Tutorial��
�Q�Ƃ��Ă��������B$
$
���̋@�\�̓G�b�W�x�x���ȊO�̃c�[�����I�΂�Ă���Ƃ��ɗL���ł��B$
$

]Roll2D 2D��]�c�[�� &actEditRoll2D rolltool.gif
@#rolltool.gif@
�I�𕔕�����Ɩʂɑ΂��ĕ��s�ɉ�]�����܂��B$
��]�̒��S��ύX����ꍇ�A ��]�̒��S�ƂȂ钸�_��Shift+�N���b�N�őI�����Ă��������B
��]�̒��S��I���̒��S(�f�t�H���g)�ɖ߂������ꍇ�́A�K���Ȗʂ�Shift+�N���b�N�őI�����Ă��������B$
$
]ScaleTool �g��k���c�[�� &actEditScale scaletool.gif
@#scaletool.gif@
�I�𕔕����g��k�����܂��B$
�g�k�̒��S��ύX����ꍇ�A�g�k�̒��S�ƂȂ钸�_��Shift+�N���b�N�őI�����Ă��������B
�h���b�O����Shift�L�[�������ƁAXYZ�����ɓ��{�Ŋg��k�����s���܂��B$
$
]BoneDrawTool �{�[���쐬�c�[�� &actToolPluginBoneDrawTool longbonetool.gif
�{�[�����쐬���܂��B$
�{�[���̎�ނ̓T�u�c�[���Ō��肳��A�T�u�c�[����%ToolOptionWindow%�������́A%BoneDrawTool%���N���b�N���邩�A�h���b�O���邱�Ƃŕ\������郁�j���[��p���đI���ł��܂��B$
$
@#longbonetool.gif@ �����O�{�[��$
�����̃{�[�����쐬���܂��B�}�E�X�̍��h���b�O�Ń{�[���̒�����ύX���A���{�^���������Ȃ���E�{�^�����h���b�O���邱�Ƃő�����ύX���܂��B$
$
@#shortbonetool.gif@ �V���[�g�{�[��$
�����̃{�[�����쐬���܂��B�}�E�X�̍��h���b�O�Ń{�[���̑傫����ύX���܂��B$
$

]FacetFlowTool �t�@�Z�b�g�t���[�c�[�� &actToolPluginFacetFlowTool facetflowtool.gif
@#facetflowtool.gif@ �ʂ̗���𐮂���ۂɎg�p���܂��B$
�E�l�p�ʂ��N���b�N����ƁA�ʂ��̎O�p�ʂɕ������܂�$
�E��̎O�p�ʂŋ��L���ꂽ�G�b�W(�l�p�ʂ̑Ίp���Ƃ݂Ȃ�)���N���b�N����ƁA�Ίp���𔽓]���܂�$
�E���]�����Ίp����������x�N���b�N����ƁA��̎O�p�ʂ���̎l�p�ʂɍ�������܂�$
$
�Ίp���̔��]�A�ʂ̍����A�ʂ̕�����%ToolOptionWindow%��ON/OFF��ݒ�ł��܂��B$

@Footer

[] ---------------------------------------------------------------------------------

@Header
|SelectTools �I���c�[��
@#seloption.gif@@#pointmode.gif@@#areamode.gif@@#magnetmode.gif@@#lassomode.gif@@#paintselmode.gif@$

]SelectOption �I���I�v�V����
@#seloption.gif@
�e�I���c�[���ŗL�̐ݒ���s���E�C���h�E%SelectOptionWindow%��\������$

]SelectPoint ��_�I�� &actSelPoint pointmode.gif
@#pointmode.gif@
���_�A�G�b�W�A�ʂ̂����A%SelectFilter%�Ŏw�肳�ꂽ�v�f��I�����܂��B$
Shift+���N���b�N�Ō��݂̑I���֒ǉ��ACtrl+���N���b�N�Ŋ��ɑI������Ă���v�f��I�������B$

]SelectRect ��`�I�� &actSelRect areamode.gif
@#areamode.gif@
�}�E�X�h���b�O�Ŏw�肵����`�̓����ɂ���v�f��I�����܂��B$
Shift�������Ȃ���h���b�O����ƁA���݂̑I���֒ǉ��ACtrl�������Ȃ���h���b�O����ƁA��`����
�v�f��I���������܂��B$

]SelectMagnet �}�O�l�b�g�I�� &actSelRel magnetmode.gif
@#magnetmode.gif@
���N���b�N�����v�f����A���̋����ȓ��ɂ���v�f��i�K�I�ɑI�����܂��B$
�E�h���b�O���邱�ƂŁA�I��͈͂��w�肷�邱�Ƃ��ł��܂��B$

]SelectLasso ������I�� &actSelFreeHand lassomode.gif
@#lassomode.gif@
�}�E�X�h���b�O�ŕ`�悵���C�ӌ`��͈͂̓����ɂ���v�f��I�����܂��B$
Shift�������Ȃ���h���b�O����ƁA���݂̑I���֒ǉ��ACtrl�������Ȃ���h���b�O����ƁA�͈͓���
�v�f��I���������܂��B$
$ 

]SelectPaint �A���I�� &actSelPaint paintselmode.gif
@#paintselmode.gif@
�}�E�X�h���b�O���J�n�����v�f�Ɠ�����ނŁA���A�������v�f��I�����܂��B$
$
$


|SelectFilter �I���t�B���^�[
@#filteroption.gif@@#pointsel.gif@@#edgesel.gif@@#facesel.gif@@#revfacesel.gif@@#relsel.gif@$
$
�I���t�B���^�[��ݒ肵�܂��B���̃t�B���^�[�Ŏw�肳�ꂽ�v�f(���_��)�݂̂��A
�}�E�X����ɂ����%HighlightElement%���ꂽ��A�I�����邱�Ƃ��ł��܂��B$

]VertexFilter ���_�t�B���^�[ &actFilterPoint
@#filteroption.gif@
���_�̑I���E�s��ݒ肵�܂��B$

]EdgeFilter �G�b�W�t�B���^�[ &actFilterEdge
@#pointsel.gif@
�G�b�W�̑I���E�s��ݒ肵�܂��B$

]PolyFilter �ʃt�B���^�[ &actFilterPoly
@#facesel.gif@
�ʂ̑I���E�s��ݒ肵�܂��B$

]RevPolyFilter ���ʃt�B���^�[ &actFilterRevPoly
@#revfacesel.gif@
���ʂ���сA���ʂɑ�����v�f�̑I���E�s��ݒ肵�܂��B$

]PolyRel �A���t�B���^�[ &actFilterRel
@#relsel.gif@
�A���v�f�̌���I���E�s��ݒ肵�܂��B$
���̃t�B���^�[�̓���͓���ŁA�ȉ��̂悤�ȓ�����s���܂��B:$
1.�����I������Ă��Ȃ��ꍇ$
�@���̑I���t�B���^�[�̐ݒ�ɂ��������Ď��R�ɑI�����\�B$
$
2.���_���I������Ă���ꍇ$
�@���̒��_�ɐڑ�����Ă���A�ʁA�G�b�W�������I���ł��܂��B$
$
3.�G�b�W���I������Ă���ꍇ$
�@���̃G�b�W�ɐڑ�����Ă���A�ʁA���_�������I���ł��܂��B$
$
4.�ʂ��I������Ă���ꍇ$
�@���̖ʂɐڑ�����Ă���A�G�b�W�A���_�������I���ł��܂��B$
$
5.�����Ȃ��ꏊ���N���b�N�����ꍇ$
�@�I������������A1�̏����ɂȂ�܂��B$
$
�ׂ�������g�񂾏ꏊ�̒��_����I���������ꍇ���A�ꔭ�Ń}�E�X�I���̑��삪������ɁA���̃t�B���^�[��ON�ɂ���΁A�I�����₷���v�f���܂��ŏ��ɑI�я��X�ɖړI�̗v�f�܂ł��ǂ��Ă��������o���܂��B$
$
$
$

@Footer

[] ---------------------------------------------------------------------------------

@Header

|PreviewStyle �v���r���[�X�^�C��
@#previewoption.gif@@#wire.gif@@#shadewire.gif@@#flatwire.gif@@#flat.gif@@#texture.gif@@#smooth.gif@@#shader.gif@@#opengl.gif@$

]WirePreview1 ���C��1 &actPreview1
@#wire.gif@
�I�u�W�F�N�g�����C���[�t���[���\�����܂��B$

]WirePreview2 ���C��2 &actPreview2
@#shadewire.gif@
�I�u�W�F�N�g�����C���[�t���[���\�����܂��B$

]FlatPreview1 �t���b�g &actPreview3
@#flatwire.gif@
�I�u�W�F�N�g���t���b�g�V�F�[�f�B���O�{���C���[�ŕ\�����܂��B$
$
]FlatPreview2 �t���b�g &actPreview4
@#flat.gif@
�I�u�W�F�N�g���t���b�g�V�F�[�f�B���O�ŕ\�����܂��B$
�\�����x�Ɋւ��ẮA%FlatPreview1%�Ɠ����ł����A���C���[�\�������Ȃ����A�኱�����Ȃ��Ă��܂��B$
$


]TexturePreview �e�N�X�`�� &actPreview5
@#texture.gif@
%FlatPreview1%,%FlatPreview2%���ɁA�e�N�X�`����\�����܂��B$
�y�C���g�����s���ꍇ�Ɏg�p���܂��B �����_�ł�UV�}�b�v���{���ꂽRDS�t�@�C����ǂ݂��񂾏ꍇ����
�e�N�X�`���𒣂肱�񂾂Ƃ������Ӗ�������܂����A�S���ėp�����Ȃ����߁A�y�C���g�@�\�𕜊�������
�܂ł́A�Ӗ����Ȃ��Ǝv���Ă����Ă��������B$
$
]SmootnPreview �X���[�X�V�F�[�f�B���O &actPreviewSmooth
@#smooth.gif@ %FlatPreview1%��%FlatPreview2%���ɁA�X���[�X�V�F�[�f�B���O�\�����s���܂��B(%OpenGLPreview%�\�����̂ݗL��)$

]ShaderPreview ARB�V�F�[�_�[ &actPreviewAdvancedShader
@#shader.gif@ %FlatPreview1%��%FlatPreview2%���ɁA�t�H���V�F�[�f�B���O�E�o���v�}�b�v�\�����s���܂��B(RADEON9500�ȍ~�AGeForceFX�ȍ~�̃r�f�I�J�[�h��%OpenGLPreview%�\�����s�����̂ݗL��)$
$
<B>*GL_ARB_fragment_program,GL_ARB_vertex_program,GL_ARB_multitexture���T�|�[�g�����r�f�I�J�[�h���K�v�ł�</B>$
$

]OpenGLPreview OpenGL &actOpenGL
@#opengl.gif@ OpenGL�ɂ��v���r���[�\�����s���܂��B$

@Footer
[] ---------------------------------------------------------------------------------

@Header

|ViewTools ���_�c�[��
@#viewoption.gif@@#zoomin.gif@@#zoomout.gif@@#handtool.gif@@#zoomtool.gif@@#viewrolltool.gif@@#areazoom.gif@@#lighttool.gif@$
]ViewOption ���_�ύX�E�C���h�E�\��
@#viewoption.gif@
%ViewOptionWindow%��\�����܂��B$

]Zoomin �Y�[���C�� &actZoomIn zoomin.gif
@#zoomin.gif@
���݂̃r���[���g��\�����܂��B$
$
]Zoomout �Y�[���A�E�g actZoomOut zoomout.gif
@#zoomout.gif@
���݂̃r���[���k���\�����܂��B$
$
]HandTool �n���h�c�[�� &actViewHand handtool.gif
@#handtool.gif@
�����_�̈ړ����s���܂��B$
$
]ZoomTool �Y�[���c�[�� actViewZoom zoomtool.gif
@#zoomtool.gif@
�}�E�X�h���b�O�ɂ��Y�[���C���E�Y�[���A�E�g���s���܂��B$
$
]ViewRollTool �h���[�c�[�� actViewMove viewrolltool.gif
@#viewrolltool.gif@
�}�E�X�h���b�O�ɂ�鎋�_�̈ړ����s���܂��B$
$
]RegionZoomTool �̈�Y�[���c�[�� actViewZoomRect areazoom.gif
@#areazoom.gif@$
�w��͈͂��r���[�Ƀt�B�b�g�����܂��B(���܂������Ă��܂���)$
$

]LightTool ���C�g�c�[�� actLightMove lighttool.gif
@#lighttool.gif@$
$
�}�E�X�h���b�O�ɂ�郉�C�g�̈ړ����s���܂�$

|QuickTool �N�C�b�N�c�[��
@#quicktooloption.gif@@#quickalt.gif@@#quickaltshift.gif@@#quickaltctrl.gif@@#quickctrlshift.gif@@#quickspace.gif@$

Alt, Shift+Alt, Ctrl+Alt, Shift+Ctrl, Space�L�[�ƃ}�E�X�̍��N���b�N�̃R���r�l�[�V�����ňꎞ�I�ɑI�������c�[����ݒ肵�܂��B$
�e�L�[�ɑΉ������{�^���������ƁA%EditTools%,%ViewTools%�Ɋ܂܂��c�[���̃��j���[���\������܂��̂ŁA�ݒ肵�����c�[����I��ł��������B$

]QuickAlt Alt�L�[
@#quickalt.gif@
Alt�L�[���������Ƃ��ɌĂяo�����@�\��ݒ肵�܂��B
�W���ł�%ViewRollTool%�����蓖�Ă��Ă��܂��B$
$
]QuickAltShift Alt+Shift�L�[
@#quickaltshift.gif@
Alt+Shift�L�[���������Ƃ��ɌĂяo�����@�\��ݒ肵�܂��B
�W���ł�%FacetTool%�����蓖�Ă��Ă��܂��B$
$
]QuickAltCtrl Alt+Ctrl�L�[
@#quickaltctrl.gif@
Alt+Ctrl�L�[���������Ƃ��ɌĂяo�����@�\��ݒ肵�܂��B
�W���ł�%CutTool%�����蓖�Ă��Ă��܂��B$
$
]QuickCtrlShift Ctrl+Shift�L�[
@#quickctrlshift.gif@
Ctrl+Shift�L�[���������Ƃ��ɌĂяo�����@�\��ݒ肵�܂��B
�W���ł�%ScaleTool%�����蓖�Ă��Ă��܂��B$
$
]QuickSpace Space�L�[
@#quickspace.gif@
Space�L�[���������Ƃ��ɌĂяo�����@�\��ݒ肵�܂��B
�W���ł�%HandTool%�����蓖�Ă��Ă��܂��B$
$

|ImageBar �C���[�W�o�[
@#imgoption.gif@@#openimg.gif@@#copyimg.gif@@#raunchpaint.gif@@#pasteimg.gif@@#pentool.gif@$
$
|PropertyWindowBar �v���p�e�B�o�[
 @#property.gif@$
$
|UndoBar �A���h�D�o�[
@#undo.gif@@#redo.gif@$
]UndoButton �A���h�D &actUndo
@#undo.gif@
]RedoButton ���h�D &actRedo
@#redo.gif@
$
|WaySplitBar �}�ʕ����o�[
@#splitoption.gif@@#personly.gif@@#4way.gif@@#2way1.gif@@#2way2.gif@@#2way1uv.gif@@#2way2uv.gif@@#4wayuv1.gif@@#4wayuv2.gif@@#customway.gif@$
$
%WorkArea%�̕����`����ύX���邱�Ƃ��ł��܂��B$
$
|StatusBar �X�e�[�^�X�o�[
 @#statusbar.gif@$
$
$
@Footer

[] ---------------------------------------------------------------------------------
@Header
:Window �E�C���h�E��

�e�c�[���̃I�v�V�����ݒ��A�I�u�W�F�N�g��������邽�߂̃E�C���h�E��$
�E�C���h�E�E��̃s���̃A�C�R�����A$
@#pin_float.gif@�̎��́A�}�E�X�J�[�\�����E�C���h�E�O�ɏo��Ǝ����I�ɃN���[�Y����܂��B$
@#pin_lock.gif@�̎��́A�����I�ɃN���[�Y����܂���B$
$
�܂��A���̃A�C�R�����h���b�O���邱�ƂŃ��C���E�C���h�E�̉E�������͍��[��%Dock%���邱�Ƃ��\�ł��B$

|ObjectWindow �I�u�W�F�N�g�E�C���h�E
�I�u�W�F�N�g�Ǘ������邽�߂̃E�C���h�E$
@#objectwin.gif@$

$
1)�Ȗʉ����ꂽ���b�V���I�u�W�F�N�g$
2)���b�V���I�u�W�F�N�g$
3)�Ȗʉ����b�V���I�u�W�F�N�g�̖���$
4)���b�V���I�u�W�F�N�g�̖��̕ύX���s��EDITBOX$
5)�T�u���b�V��(�|���S���O���[�v)�̖���$
6)�\��/��\���؂�ւ��A�C�R��$
7)UV�e���v���[�g$
8)���b�V������{�^���B�����烁�b�V���̃t�B�b�g�A�S�I���A���b�N$
9)�I�u�W�F�N�g�C���|�[�g$
10)�V�K���b�V���I�u�W�F�N�g�쐬$
11)�V�K�T�u���b�V���̍쐬$
12)���b�V���I�u�W�F�N�g/�T�u���b�V���̍폜$
$
|ToolOptionWindow �c�[���I�v�V����
�ҏW�c�[���̃I�v�V������ݒ肷��E�C���h�E�ł��B$
%EditTools%�őI������Ă���c�[���ɂ���āA�ݒ荀�ڂ��ω����܂�$

]ToolMoveWindow �ړ��c�[���I�v�V����
@#op_move.gif@$
%SelectMagnet%��Ԃ̎��A���_�ړ��̍ۂ�%SmoothBend%�@�\���g�����ۂ��̐ݒ���s���܂��B$
�����F���_�����ʈړ������ꍇ�Ɏ����I��%SmoothBend%��ON�ɂ��܂��B$
�X�P�[���ϊ��F%SmoothBend%���ɁA�ړ������ɂ��킹�ăI�u�W�F�N�g�̃X�P�[����ύX���܂��B$
$
]ToolFacetWindow �ʃc�[���I�v�V����
@#op_facet.gif@
$
]ToolPolylineWindow �܂���c�[���I�v�V����
@#op_polyline.gif@
$
]ToolAddPointWindow ���_�ǉ��c�[���I�v�V����
@#op_addpoint.gif@
$
]ToolClayWindow �N���C�c�[���I�v�V����
@#op_clay.gif@
$
]ToolExtrueWindow �����o���c�[���I�v�V����
@#op_extrude.gif@
$
]Tool2DRotateWindow
@#op_2drotate.gif@
$
]ToolScalingWindow
@#op_scaling.gif@
$

$
|SelectOptionWindow �I���I�v�V����
%SelectTools%�őI������Ă���I���c�[���̃I�v�V������ݒ肵�܂��B$
@#op_selpoint.gif@$
$
@#op_selectrect.gif@$
$
@#op_selectmagnet.gif@$
$
$
$
|ViewOptionWindow ���_�ύX�E�C���h�E
���_�������K��̈ʒu�ɐݒ肵����A�L���������ʒu�ɕύX���܂��B$
@#ViewWindow.gif@$
(1)XZ���ʂ�-Y�������猩�܂�$
(2)XY���ʂ�+Z�������猩�܂�$
(3)ZY���ʂ�-X�������猩�܂�$
(4)ZY���ʂ�+X�������猩�܂�$
(5)XY���ʂ�-Z�������猩�܂�$
(6)XZ���ʂ�+Y�������猩�܂�$
(7)���_�ύX�̃A���h�D�A���h�D���s���܂��B$
(8)���݂̎��_���L�����܂��B$
$

|3DLoope 3D���[�y &actLoope
�J�[�\�����ӂ��g�債�āA���C���[�t���[���\�����܂��B$
���G�ȕ����ɂ��钸�_��I������ꍇ�Ɏg�p���܂��B �|���S�����������Ȃ�Ə������d���Ȃ邽�߁A�K��ON/OFF��؂�ւ��Ă��������B
$
@#3dLoupe.gif@
$
$
|PropertyWindow �v���p�e�B�E�C���h�E
�I�u�W�F�N�g�̒��_���A�G�b�W���A�ʐ���\�����܂��B$
$
�܂��A���ݑI�����Ă���v�f�̈ʒu�A�T�C�Y��%Numeric%���邱�Ƃ��\�ł��B$

$
@#op_property.gif@
$
$

|VecCalc �x�N�g���d��
���l���͂�⏕���邽�߂̋@�\�ł��B(Window/�E�C���h�E�\��/�x�N�g���d��)$
$
���݂̏��A�L�[�{�[�h���͂ɂ͊��S�Ή��ł��Ă��Ȃ����߁A
�}�E�X����œ��͂��s���K�v������܂��B$
$
�x�N�g���l(���W�l)����͂���ꍇ�A$
1��J���}�łR�̒l(X,Y,Z�l)����؂��ē���$
2��}�ʂ̔C�ӂ̏ꏊ�Ń}�E�X�̍��{�^��������$
$
�̂Q�ʂ�̕��@������܂��B$
$
���̋@�\�ƁA%Numeric%�𕹗p���邱�ƂŁA�Ⴆ�΂Q�̃I�u�W�F�N�g��C�ӂ̒��_���m�Őڂ���
�p�ɔz�u�\�ł��B$
$
1��ڂ�������̒��_�����N���b�N����B$
2�%VecCalc%��[-]���N���b�N$
3��ڂ��������̒��_���N���b�N����$
4�%VecCalc%��[=]���N���b�N����ƁA�Q�̒��_�̋������v�Z�����$
5�%VecCalc%��[Copy]���N���b�N���A�N���b�v�{�[�h�ɃR�s�[����$
6��ڂ��������̃I�u�W�F�N�g��S�I������$
7�%PropertyWindow%���J���A�ʒu�w����uRel�v�ɂ���$
8��ʒu���͗��̉E���̃{�^���������ƁA�v�Z�������W���y�[�X�g�����$
9��u�K�p�v�������ƁA�I���I�u�W�F�N�g���ړ�����B$
$
�����Đ��l���͂������ꍇ�́A��x�I�u�W�F�N�g���N���b�N���āA�I�u�W�F�N�g��
���݈ʒu���ēx�擾���Ȃ����Ă��������B$
$

�K�v������Ȃ�A�x�N�g���̓��ρA�O�ςȂǂ̉��Z�������\�ł��B�v�]������܂�����A�����������B$
$
|Dock �h�b�L���O
$
]DockToolBar �c�[���o�[�̃h�b�L���O
$
beta5.1����A�c�[���o�[���t���[�e�B���O��ԂɂȂ�Ȃ��Ȃ�܂����B$
$
�������A�c�[���o�[�̉E�N���b�N���j���[����㉺���E�����ꂩ�̍D�݂̏ꏊ�Ƀc�[���o�[���ړ����邱�Ƃ��ł��܂��B$
�܂��A�c�[���o�[���h���b�N���邱�ƂŁA�o�[�̏��Ԃ����ւ��邱�Ƃ��\�ł��B$

$
]DockWindow �E�C���h�E�ނ̃h�b�L���O
�E�C���h�E�E��̃s���̃A�C�R��@#pin_float.gif@�A@#pin_lock.gif@��
�h���b�O���āA���C���E�C���h�E�̉E�������͍��[�Ƀh���b�v���邱�Ƃ�%PanelTray%��%Dock%���邱�Ƃ��\�ł��B$
%Dock%����������ꍇ�A@#pin_dockrelease.gif@���h���b�O���Ă��������B$
$
|PanelTray �p�l���g���C
���E�C���h�E�̉E�ƍ��[�̌v��̃p�l���g���C������A�g���C�ɂ͊e��E�C���h�E���h�b�L���O���邱�Ƃ��o���܂��B
$
�g���C�ɕ����̃E�C���h�E��%Dock%����āA�g���C���Ɏ��܂肫��Ȃ��ꍇ�A�g���C�ɃX�N���[���o�[���\������X�N���[���\�������悤�ɂȂ�܂��B
�A���A�ړI�̃E�C���h�E��\���̈�܂Ŏ����Ă��邽�߂ɃX�N���[���o�[���g���K�v�͂���܂���B$
�g���C�̍��[�ɔz�u����Ă���e�E�C���h�E�p�̌Ăяo���{�^�����������ƂŁA�ړI�̃E�C���h�E�������ɃX�N���[���C�����Ă��܂��B$
$
@Footer

[] ---------------------------------------------------------------------------------
@Header

|OptionConfig ���ݒ�


@Footer

[] ---------------------------------------------------------------------------------
@Header

:AboutWorkPlane ��ƃG���A/��Ɩ�

|WorkArea ��ƃG���A


|WhatIsWorkPlane ��ƖʂƂ�

 �I�u�W�F�N�g��3�����������̂ɑ΂��āA�X�N���[����2�����̋�Ԃł���A�}�E�X�J�[�\����2�����̑��삵���ł��Ȃ����߁A
����Ȃ�����₤���߂ɁA�ҏW��Ƃ��s���ۂɊ�ƂȂ�ʂ�I������K�v������܂��B���̖ʂ���ƖʂƌĂт܂��B$
$
]SetWorkPlaneXY XY���ʂ���Ɩʂɂ����}
��ƖʑI���{�^��(%lay_WorkPlanXY%�{�^���| �u%Pers_layout%�v���Q��)�������́A�@%EditMenu%->%WorkPlaneIsXY%�����s����XY���ʂ���Ɩʂɐݒ肵����Ԃ����̐}�ł��B$
$
@#work_xy.gif@$
$

]DrawPolyOnWorkPlane ��Ɩʂɖʂ��쐬
���̏�Ԃ�%FacetTool%���g���Ėʂ𐶐�����(�u%UseFacetTool%�v���Q��)�ƁA���̐}�̂悤�ɁA��Ɩʏ�ɖʂ���������܂��B$
$
@#work_polydraw.gif@
$

]MoveOnWorkPlane ��Ɩʏ�ŃI�u�W�F�N�g���ړ�
�c�[����%MoveTool%�ɕύX���A�I�u�W�F�N�g���h���b�O����ƁA��Ɩʂɕ��s���ăI�u�W�F�N�g���ړ������邱�Ƃ��ł��܂��B$
��������ς���ƁA��{�I�ɂ̓I�u�W�F�N�g�͍�Ɩʂɕ��s�ȕ����ɂ����ړ��ł��܂���B$
$
@#work_movepoly.gif@
$
]MoveVerticalWorkPlane ��Ɩʂ��琂�������ɃI�u�W�F�N�g���ړ�
%MoveTool%�c�[���̎��ɁAAlt�L�[�������Ȃ���I�u�W�F�N�g�����E�Ƀh���b�O����ƁA��Ɩʂ��琂�������ɃI�u�W�F�N�g���ړ������邱�Ƃ��ł��܂��B$

$
@#work_moveaway.gif@
$
]MoveOnWorkPlane2 ��Ɩʂ��痣�ꂽ�I�u�W�F�N�g���ړ�
���}�̂悤�ɁA��Ɩʂ��痣��Ă���I�u�W�F�N�g���A��Ɩʂ�����̋�����ۂ����܂ܕ��s�ړ����܂��B$
$
@#work_movepoly2.gif@
$
]DrawPolyOnPoly ��Ɩʂ��痣�ꂽ�I�u�W�F�N�g�𗘗p���āA�ʂ𐶐�
$
��Ɩʂ��痣�ꂽ�I�u�W�F�N�g�̒��_�𗘗p���āA�u%UseExist%�v�̕��@�Ŗʂ����ƁA���p�������_�Ɠ�������������Ɩʂ��痣�ꂽ�ʒu�ɐV�����ʂ�����܂��B$
�ȍ~�A���̈ʒu�ɖʂ⃉�C�������ۂɂ��A��������������Ɩʂ��痣�ꂽ�ʒu�ɐ��������悤�ɂȂ�܂��B$
$
�܂��A��Ɩʂ���̋����́A�K���Ȓ��_���%ContextMenu%->%CursorAt%�����s���邱�Ƃɂ���āA�ύX���邱�Ƃ��ł��܂��B(���_���������ꏊ��%CursorAt%�����s����ƍ�Ɩʂ���̋�����0�Ƀ��Z�b�g���邱�Ƃ��ł��܂��B)$
$
@#work_polydraw2.gif@
$
$
@Footer

[] ---------------------------------------------------------------------------------
@Header
\HowTo 3.�g����


:PolygonOperation �|���S������

|MakePrimitive ��{�`��쐬
$
MarbleCLAY�̓|���S�����f���[�ł��B�ŏ�����ꖇ�ꖇ�|���S��������Ă������Ƃ��ł��܂����A�ŏ��͎��̃X�e�b�v�����s���A�v���~�e�B�u���쐬����
MarbleCLAY�̓����ł���A�ȒP�Ȓ��_�I���@�\��̌����Ă݂Ă��������B$
$
]HowToSetPrimitive �v���~�e�B�u�z�u
��Ƃ��ċ��̂����ꍇ�ɂ��Đ������܂��B$
$
1.�܂��ŏ��ɁA%FileMenu%->%FileNew%��%FileMenu%->%FileOpen%�œK���ȃh�L�������g���J���Ă����Ă��������B$
$
2.%FileMenu%->%FileNew%�ŐV�K�h�L�������g���J�����ꍇ�́A���̂܂�%MeshMenu%->%MeshPrimitive%���J���A%MeshPrimSphere%�����s���Ă��������B$
$
3.%FileMenu%->%FileOpen%�Ŋ����h�L�������g���J�����ꍇ�́A�v���~�e�B�u���ǂ̃I�u�W�F�N�g�ɒǉ����邩��I�����܂��B$
$
3-1.%ObjectWindow%���J���A�e�ƂȂ�I�u�W�F�N�g(�������̓T�u���b�V��)��I�ԁB$
3-2.�ʃI�u�W�F�N�g�Ƃ��ăv���~�e�B�u�𐶐��������ꍇ�́ARoot��I������B$
3-3.%MeshMenu%->%MeshPrimitive%���J���A%MeshPrimSphere%�����s���Ă��������B$
$
|HowToSelect �I����@
�I�u�W�F�N�g��I��������@��������܂��B%HowToSetPrimitive%�ō쐬�����I�u�W�F�N�g�̈ꕔ�A�������͑S�̂��ȉ��̕��@�̂����ꂩ�őI��������A�u%MoveObjectVertex%�v�ɂ�����ł��������B$
$
]SingleClickSel �ʏ�̑I����@
%SelectPoint%��I�сA%SelectFilter%�őI���������v�f�̎�ނ�I�т܂��B$
���Ƀ}�E�X�J�[�\����I���������v�f�̏�Ɉړ�����ƁA�v�f��%HighlightElement%�����̂ŁA�����Ń}�E�X�N���b�N����ƁA���̗v�f���I������܂��B$
$
�`�����������Đ�����ۂɕp�ɂɗ��p���܂��B$
$
]AreaSel ��`�͈͂őI��
1.%SelectRect%��I�сA%SelectFilter%�őI���������v�f�̎�ނ�I�т܂��B$
���Ƀ}�E�X�J�[�\�����h���b�O���ċ�`��`���A�}�E�X�{�^���𗣂��ƃ��j���[���\������A
��`���̑S�Ă̗v�f�̑I���A�������̓t�B���^�[�ݒ�ɏ]�����I����I�Ԃ��Ƃ��ł��܂��B$
$
2.%SelectPoint%���[�h�̂܂܁A�v�f�����݂��Ȃ��ꏊ����}�E�X�h���b�O���J�n����ƁA1�Ɠ����悤�ɑI�����邱�Ƃ��ł��܂��B$
$
�܂��A%SelectOptionWindow%�ɂ���āA�u���j���[�ɂ��I���v�A�u��ɑS�Ă�I���v�A�u��Ƀt�B���^�[���g�����I���v��I�Ԃ��Ƃ��ł��܂��B$
$

]DoubleClickSel �_�u���N���b�N�I��
%MoveTool%��%ScaleTool%�A%Roll2D%���̃��[�h�ŉ\�ȁA�I�u�W�F�N�g��I��������@�Ƃ��Ă͍ł���y�Ȏ�i�ł��B$
$
1.�I�u�W�F�N�g�̒��_�������́A�ʂ��_�u���N���b�N����Ɛڑ��������S�đI������܂��B$
$
2.�G�b�W���_�u���N���b�N�����ꍇ�A���̃G�b�W�ɘA�������G�b�W���I������܂�$
(*%EditDeleteEx%�Q��)
$

]EdgeSel �A���G�b�W�I��
%DoubleClickSel%���Q��$

]ObjectSel �A���|���S���I��
%DoubleClickSel%���Q��$

]BeltSel �x���g�I��
1.�I���������|���S���̃G�b�W��ō��{�^�����v���X���܂��B$
$
2.���{�^�����v���X������ԂŉE�{�^�����N���b�N���Ă��������A�|���S�����x���g��ɑI������܂��B$
$

]PaintSel �}�E�X�ŘA���I��
1.%SelectPaint%��I�сA%SelectFilter%�őI���������v�f�̎�ނ�I�т܂��B$
$
2.�I������Ă��Ȃ��A�K���ȗv�f�̏�Ń}�E�X�h���b�O���J�n����ƁA���̗v�f�ɐڑ�����Ă���v�f��A�����đI�����邱�Ƃ��ł��܂��B$
$
]AllSel �S�đI�� &actSelectAll
%EditMenu%->%EditSelAll%���j���[$
���g�����ŃJ�����g�̃I�u�W�F�N�g��S�đI�����邱�Ƃ��o���܂��B$

$
]DopelEdgeSel ���d�G�b�W�I��
%EditMenu%->%EditSelDopel%���j���[$

�������_�Z�b�g���������̃G�b�W������ꍇ�A �ǂ��炩����̃G�b�W��I�����܂��B$
RDS�o�͎��ȂǁA ���d�G�b�W��F�߂Ȃ��t�@�C���t�H�[�}�b�g�ɏo�͂���ꍇ�A�ŏ���
���̃R�}���h�ő��d�G�b�W��I���������ƁA%EditDelete%���s���đ��d�G�b�W���������Ă��������B$
(�����̏ꍇ�A�`�󂪏����ω����Ă��܂��܂��̂Ŏ��ƂŏC�����K�v�ł�)$
$
]SingleEdge �P�ƃG�b�W�I��
%EditMenu%->%EditSelSingle%���j���[$
�ʂ������Ȃ��P�Ƃ̃G�b�W��I�����܂��B$
$
]TriEdgeSel �Q�̂R�p�ʂ̋��L�G�b�W��I��
%EditMenu%->%EditSel2Tri%���j���[$
�Q�̎O�p�ʂ����L���Ă���G�b�W��I�����܂��B�������A�����őI�������̂͂Q�̎O�p�ʂ�
���������`���l�p�`�ɋ߂��`��ɂȂ镨�����ł��B$
���̃R�}���h�����s�������ƁA%EditDeleteEx%���s���ƁA�����̎O�p�ʂō\�������I�u�W�F�N�g��
�l�p�ʂō\�������I�u�W�F�N�g�ɂ��邱�Ƃ��ł��܂��B$
�������A�ȒP�ȃA���S���Y�����g�p���Ă��邽�߁A�����ڂɂ͎l�p�ʂɂȂ肻���ȕ���I���ł��Ȃ�
���Ƃ����X����܂��B$
$
]SelectSameMaterial �����J���[��I�� &actSelectSameMaterial
%EditMenu%->%SelectSameMaterial%���j���[$
���ݑI�����Ă���ʂƓ����J���[�����ŁA���A�A�����Ă���ʂ�I�����܂��B$
$
]SelectByObjectWindow �I�u�W�F�N�g�E�C���h�E�őI��
�I�u�W�F�N�g�E�C���h�E���̃|�����b�V�����̉E���̃A�C�R��(�Ԃ��g�ň͂܂ꂽ�~��)���N���b�N����ƁA���̃|�����b�V�����\������ʂ��S�đI������܂��B$
$
|MoveObjectVertex �ړ��E��]�E�g��k��
]SelectObject �I�u�W�F�N�g�̑I��
�I�u�W�F�N�g�Ⓒ�_���ړ����邽�߂ɂ́A�܂��ŏ��Ɉړ�����������I�����Ȃ���΂Ȃ�܂���B$
�u%HowToSelect%�v���Q�Ƃ��āA�ړ��������I�u�W�F�N�g��I�����Ă��������B$
$
]MoveMove �ړ�
%MoveTool%��I�����āA�I�������I�u�W�F�N�g�Ⓒ�_���h���b�O����ƁA��Ɩʂɕ��s���������Ɉړ������邱�Ƃ��ł��܂��B(�u%WhatIsWorkPlane%�v���Q��)$
$
%MoveTool%��I�������܂܂ł��A�ʂ̒��_����I�����Ĉړ����邱�Ƃ��ł��܂��B$
$
]ManiMove �}�j�s�����[�^���g�����ړ�
$
%MoveTool%��I�����A%ViewMenu%->%ViewMani%�����s����ƁA�I�𕔕���%Manipulator%���\������܂��B$
$
����%Manipulator%�̊e�������̖�󕔕����h���b�O���邱�ƂŁA(��Ɩʂ̏�ԂƂ͖��֌W��)�I�𕔕����e���ɂ����Ĉړ����邱�Ƃ��ł��܂��B$
$
]RollRoll ��]
%Roll2D%��I������ƁA�I�������v�f�̎���ɉ�]�p�R���g���[���|�C���g���\������܂��B���̃R���g���[���|�C���g���h���b�O����ƁA��Ɩʂɕ��s���������ɑI��v�f����]�����邱�Ƃ��ł��܂��B$
�܂��A�K���Ȓ��_��Shift+�N���b�N���邱�ƂŁA���̒��_����]�̒��S�_�Ƃ��Đݒ肷�邱�Ƃ��ł��܂��B$
$
%Roll2D%��I�������܂܂ł��A�ʂ̒��_����I�����ĉ�]���邱�Ƃ��ł��܂��B����ɁA�I��v�f���h���b�O���邱�ƂőI��v�f���ړ������邱�Ƃ��ł��܂��B$
$
$
]ManiRoll �}�j�s�����[�^���g������]
$
%Roll2D%��I�����A%ViewMenu%->%ViewMani%�����s����ƁA�I�𕔕���%Manipulator%���\������܂��B$
$
����%Manipulator%�̊e�������̖�󕔕����h���b�O���邱�ƂŁA(��Ɩʂ̏�ԂƂ͖��֌W��)�e���𒆐S�ɑI�𕔕�����]���邱�Ƃ��ł��܂��B$
$
]ScaleScale �g��k��
%ScaleTool%��I������ƁA�I�������v�f�̎���Ɋg��k���p�R���g���[���|�C���g���\������܂��B���̃R���g���[���|�C���g�̂��������̂̒��_�����̃|�C���g���h���b�O����ƁA��Ɩʂɕ��s���������ɑI��v�f���g��k�������邱�Ƃ��ł��܂��B$
�����̖̂ʂ̒��S�����̃R���g���[���|�C���g���h���b�O����ƁA�����̖̂ʂƐ����ȕ����ɑI��v�f���g��k�����邱�Ƃ��ł��܂�(��Ɩʂ̐ݒ�Ƃ͖��֌W)�A�����Ctrl�L�[�������Ȃ���h���b�O����Ɣ��Α��̖ʂ̃R���g���[���|�C���g�𒆐S�Ƃ��Ċg��k�������邱�Ƃ��ł��܂��B$
�܂��A�K���Ȓ��_��Shift+�N���b�N���邱�ƂŁA���̒��_���g��k���̒��S�_�Ƃ��Đݒ肷�邱�Ƃ��ł��܂��B$

$
%ScaleTool%��I�������܂܂ł��A�ʂ̒��_����I�����Ċg��k�����邱�Ƃ��ł��܂��B����ɁA�I��v�f���h���b�O���邱�ƂőI��v�f���ړ������邱�Ƃ��ł��܂��B$
$

$
|MakeFacet �}�E�X�ɂ��|���S������

��{�I�ɂ�%FacetTool%���g���Ėʂ��쐬���Ă����܂��B$
%FacetTool%��I�񂾏�ԂŁA%UseFacetTool%����A%Split%�܂ł�
��Ƃ����[�h�؂�ւ����ӎ����邱�ƂȂ��A�X���[�Y�ɍs�����Ƃ�
�\�ł��B$
$
�����I�ɍs����v�f�����X���邽�߁A���[�U�[�ɂ���Ă�
�]�v�Ȃ����b�ɂȂ��Ă��镔��������܂����A
�c�[���I�v�V�����̐ݒ�ɂ��@�\�������s�����ƂŁA��Ԃ�������
����ɁA���[�U�[���Ӑ}�����ʂ�̓��삵�����Ȃ��悤�ɐݒ肷��
���Ƃ��\�ł��B$
$

]UseFacetTool ��̖ʂ����
�P�Ƃ̖ʂ����ꍇ�͎��̎菇�ł�$
1.%FacetTool%��I��$
2.�C�ӂ̏ꏊ�ŁA���{�^�����N���b�N$
3.������2�_���N���b�N$
4.��ԍŏ��ɃN���b�N�����_���ēx�N���b�N$
$
]UseExist �A�����Ėʂ����1
���ɑ��݂��Ă���ʁA�G�b�W�𗘗p���Ėʂ����ꍇ�́A$
1.%FacetTool%��I��$
2.�C�ӂ̒��_��I��ŁA�N���b�N$
3.�����ĕʂ̏ꏊ���N���b�N$
4.�l�p�`��O�p�`�ɂȂ��������Ɏ����I�ɖʂ��͂��܂��B$
$
�������A�c�[���I�v�V�����Ŗʐ������u���[�U�[�������v����
���[�h�ɂ��Ă���ꍇ�A�����I�ɖʂ͒����܂���B���
%UseFacetTool%�̕��@���g�����ƂɂȂ�܂��B$
$
]StripMakePoly �A�����Ėʂ����2
v2�o�[�W�����݂̂ł����A�X�g���b�v���͂ŘA�����Ėʂ��쐬�ł��܂��B$
$
1.%FacetTool%��I��$
2.�R�̎���`���悤��Shift�L�[�������Ȃ���N���b�N�B$
3.�R�̎������Ɏl�p�ʂ��͂��܂��B$
4.������`���悤��Ctrl�L�[�������Ȃ���N���b�N�B$
5.���������ɎO�p�ʂ��͂��܂��B$
$
v2alpha4�ł́A�Ӑ}�����ʂ����܂����ɂ͊��ꂪ�K�v�ł��B$
$
]Triangurate �l�p�ʂ��Q�̎O�p�ʂɂ���
%FacetTool%�g�p���A�l�p�ʂ��O�p�ʂɂ��邱�Ƃ��\�ł��B$
1.�����������ʂ̔C�ӂ̒��_��I��ŃN���b�N$
2.���̖ʂ̑Ίp����̂�������̒��_��I��ŃN���b�N$
�N���b�N�����Q�_�����ԃG�b�W���V�����쐬����A���̖ʂ͂Q����
�O�p�ʂɕ�������܂��B$
$
%MeshTriangratePoly%���Q�Ƃ��Ă��������B$
$
]Split �����̖ʂ𕪊�����
%FacetTool%��%PolyLineTool%���g���Ďl�p�ʂ𕪒f���邱�Ƃ��\�ł��B$
1.�����������ʂ̔C�ӂ̃G�b�W��ŃN���b�N$
2.�N���b�N�����ʒu�̒��_������A�����I�ɖʂ��Q�ɕ�������܂��B$
3.���̂Ƃ��A�V���ɍ쐬���ꂽ�G�b�W�𔼊m��G�b�W�ƌĂт܂��B$
$
���̂܂܂ł́A�P�̎l�p�`�ƂP�̎O�p�`�ɕ������ꂽ��ԂɂȂ�܂����A
�����Ĉȉ��̑�����s�����ƂłQ�̎l�p�`�ɕ������邱�Ƃ��ł��܂��B$
4.��قǕ��������G�b�W�̌��������̃G�b�W��ŃN���b�N$
5.����ƃN���b�N�����Q�_�����ԃG�b�W���V�����쐬����A���X�̎l�p�`��
�Q�̎l�p�`�ɕ������ꂽ�`�ɂȂ�܂��B$
6.���̂Ƃ����m��G�b�W�͍폜����Ă��܂��B$
7.����ɑ����ėׂ̖ʂ𕪊����Ă������ƂŁA�A�������ʂ̕������\�ł��B$

$
%CutTool%�A%AddPointTool%���Q�Ƃ��Ă��������B$
$

]FacetWarning1 �ʍ쐬���̒��ӓ_1
�ʂ̍쐬�́A�l�p�`��O�p�`���\������镔���Ɏ����I�ɍs���邽�߁A���[�U�[��
�Ӑ}���Ȃ��ꏊ�ɖʂ������Ă��܂����Ƃ�����܂��B$
$
���Ƃ��΁A�V���ɍ쐬���ꂽ�G�b�W�ɂ���āA�O�p�`�Ǝl�p�`�������ɍ\���\��
�Ȃ�ꍇ������܂��B���̂Ƃ��AMarbleCLAY�̓��[�U�[���ǂ���ɑ΂��Ėʂ𒣂肽���̂������f�ł��Ȃ�
���߁A�K���ȕ���I��Ŗʂ�\���Ă��܂��܂��B$
$
�����������邽�߂ɂ͈ȉ��̕��@���g���܂��F$
$
1.�O�p�ʁA�������͎l�p�ʂ̂ǂ��炩�����𐶐�����悤�Ɏw�肷��B$
�c�[���I�v�V�����̃`�F�b�N�{�b�N�X�ō쐬�������Ȃ����̃`�F�b�N���O�����A
%FacetTool%�ł̒��_�w�莞��Ctrl(�O�p����)��������Shift(�l�p����)�������Ȃ���N���b�N������B$
2.�ʂ̐������u���[�U�[���w�肷��v���[�h�ɂ���$
�c�[���I�v�V�����̃��W�I�O���[�v�őI�����Ă��������B$
$
]FacetWarning2 �ʍ쐬���̒��ӓ_2
MarbleCLAY�ł́A��̃G�b�W�ō\�������ʂ͂Q�܂łɌ��肳��܂��B�R�ȏ�̖ʂ��\������悤�ȏꏊ�ɖʂ𒣂邱�Ƃ͏o���܂���B$
$
�������A�o�O�A�������̓C���|�[�g�����`��̒��ɂ��̂悤�Ȍ`�󂪊܂܂�Ă���
�悤�ȏꍇ�ɁA��������A�R�ȏ�̖ʂ��\������G�b�W���쐬����Ă��܂����Ƃ�
����܂��B���ۂɂ͂R�ȏ�̖ʂ��\������G�b�W�����݂��Ă���킯�ł͂Ȃ��A
�����ʒu�ɕ����̃G�b�W�����݂��Ă���̂ł����A���̂܂܂̏�Ԃ��ƕs�s��(RDS�`���ł�
�G�N�X�|�[�g������ɍs���Ȃ��A�Ȗʉ����ɗ\�����ʌ`��ɂȂ铙)�����邽�߁A�ȉ���
�菇�ł��̂悤�ȃG�b�W(���d�G�b�W�ƌĂт܂�)����������K�v������܂��B$
$
1.Edit/���d�G�b�W�I�������s$
2.Edit/�폜�����s$
3.�폜���s�������߁A�K�v�Ȗʓ��������邱�Ƃ�����܂��B���̏ꍇ�͎��ƂŏC������
�K�v������܂��B$

]UseGuide �K�C�h���C����p����
%PolyLineTool%��A%DrawGuide%�ɂ���č�������ɉ����Ėʂ�\����@$
�K�C�h���C���ƌ����Ă��A�ʏ�̃G�b�W�ƕς��Ȃ����߁A%UseExist%���̕��@��
�ʂ�����Ă������Ƃ��\�ł����A�K�C�h���C���̒��_�����A�쐬�������`���
���_���������������菭�Ȃ������肷��ꍇ�ɁA��Ƃ��s����Ȃ邱�Ƃ�����
���߁A�ȉ��̑�����s���܂��B$
$
%DrawGuide%�ł̐����ƈꕔ�d�Ȃ��Ă��܂�$
1.�K�C�h���C����S�đI�����āA�V�������O������B(�I�u�W�F�N�g�̒��ɃK�C�h���C������
���݂��Ă��Ȃ��ꍇ�́A���̂܂܂ŗǂ�)$
2.�I�u�W�F�N�g�E�C���h�E�ŁA�K�C�h���C���ɂ������O�̉��̌��A�C�R�����N���b�N����
���b�N����$
$
����ŁA�K�C�h���C���ɑ΂��āA�ړ��A�������̑��삪�s���Ȃ��悤�ɂȂ�A�X�ɒ��_��
�\������Ȃ��Ȃ邽�߁A�ʍ쐬���삪�s���₷���Ȃ�܂��B��̓I�ɂ́A$
$

|DrawGuide �K�C�h���C����`��
�|���S���������Ȃ�쐬����̂ł͂Ȃ��A�܂��ŏ��ɃK�C�h�ƂȂ郉�C�����쐬���Ă���A���̃K�C�h�ɉ����ă|���S����
�쐬������@������܂��B
$
]UsePolyline �܂���c�[�����g��
��肽���|���S���̌`�󂪂�����x�c���ł��Ă���ꍇ�́A%PolyLineTool%���g���čŏI�I�ɍ�肽���|���S���Ɠ����x�̍r���̃K�C�h���C����
�����Ɨǂ��ł��傤�B$

]UseFreeHand �t���[�n���h�c�[�����g��
�^�u���b�g������ꍇ��A�ŏI�I�ɍ�肽���|���S���Ɠ����x�̍r���̃K�C�h���C�����s�K�v�ȏꍇ�́A%FreehandlineTool%���g���΁A�葁��
�K�C�h���C�����������Ƃ��o���܂��B$
$
]GuideLock �K�C�h���C�������b�N����
%FreehandlineTool%�ō쐬�����K�C�h�̏ꍇ�A�|���S���쐬�ߒ��ŃK�C�h���C�����|���S���̈ꕔ�ɂȂ��Ă��܂��A���ɖʓ|�Ȃ��ƂɂȂ邱�Ƃ�
�������߁A�K�C�h���C�����o�������_�Ń��b�N���邱�Ƃ������߂��܂��B$
$
%ObjectWindow%�ŃK�C�h���C���̉E���̌��}�[�N���N���b�N����ƃK�C�h���C�������b�N����܂��B$
%UseGuide%�ɂ��A���b�N�ɂ��Ă̐�������������܂��B$
$
$
<B>TODO:�����ɐ}��}��</B>

$

|UseExtrude �����o���c�[�����g��

]MakeFacetExtrude �����o���ɂ��ʐ���
%FacetTool%�Ɠ��l�ɁA�ʂ��쐬���邽�߂̋@�\�ł����A������͊����̖ʂ𗘗p���Ėʂ��쐬���܂��B$
�ʂ̐F���́A�����ʂƓ������̂������p����܂��B$

1.%ExtrudeTool%��I��$
2.�c�[���I�v�V�����E�C���h�E�ŁA�u���s�����o���v�u�x�x�������o���v�u�ړ������o���v
�̂����ꂩ��I��$
3.�����o�������ʂ�I��(%AnotherSel%�Q��)$
4.�I�����������̏�ɃJ�[�\���������A��������}�E�X�̍��{�^���������Ȃ��� $
�@4-1.�E�Ƀh���b�O����Ɩʂ̕\�ʕ����ɖʂ������o����܂�(���s�����o���A�x�x�������o��)$
�@4-2.���Ƀh���b�O����Ɩʂ̗��ʕ����ɖʂ������o����܂�(���s�����o���A�x�x�������o��)$
�@4-2.�h���b�O����ƁA���̕����ɖʂ������o����܂�(�ړ������o��)$
$

]MakeFacetFromEdge �G�b�W����̖ʐ���
�G�b�W��C�ӂ̕����ɉ����o���܂��B$
�������A�����o���`���̎w��͖�������u�ړ������o���v����܂��B$
$
1.%ExtrudeTool%��I��$
2.�c�[���I�v�V�����E�C���h�E�Łu�G�b�W�A���_�̉����o���v�Ƀ`�F�b�N�����Ă��邱�Ƃ��m�F$
3.�����o�������G�b�W��I��(%AnotherSel%�Q��)$
4.�I�����������̏�ɃJ�[�\���������A��������}�E�X�̍��{�^���������Ȃ���
�h���b�O����ƁA���̕����ɖʂ������o����܂�$
$ 
@#edgeextrude.gif@
$
]MakeFacetFromEdge ���_�������o��
%MakeFacetFromEdge%�Ƌ��Ɏg���܂��B���}�̂悤�Ȍ`�̏ꏊ�ɖʂ���肽���ꍇ�A%MakeFacetFromEdge%�ł�
���Ғʂ�̖ʂ𒣂邱�Ƃ͏o���܂���A�������A���̂悤�Ȍ`���%MakeFacetFromEdge%���g���Ėʂ�����Ă����ꍇ�ɔ��ɂ悭�������Ă��܂��܂��B$
$
���̂悤�ȏꍇ�͈ȉ��̑�����s���A�ʂ𒣂邱�Ƃ��\�ł��B$
1.%ExtrudeTool%��I��(���ɑI������Ă���ꍇ�͏ȗ��\)$
2.�c�[���I�v�V�����E�C���h�E�Łu�G�b�W�A���_�̉����o���v�Ƀ`�F�b�N�����Ă��邱�Ƃ��m�F$
3.�}�̂悤�ɖʂ𒣂肽�������̒��_��Ίp����Ƀh���b�O���ĔC�ӂ̏ꏊ�������́A��������̒��_��Ń}�E�X�{�^���𗣂�$
(�����̒��_�𓯎��ɉ����o�����Ƃ͂ł��܂���)$
$
@#vertexextrude.gif@
$


|Fusion ����
]FusionPointByMouse �}�E�X����ɂ�钸�_�̍���(�h���b�O&�E�F���h)
%FacetTool%���[�h�ɂāA�C�ӂ̒��_��ʂ̒��_�̏�܂Ńh���b�O���A�h���b�v����ƁA���̓�̒��_���n�ڂ���܂��B$
$
]FusionPoint ���_�̍���
�����̒��_��I�сA%MeshMenu%->%MeshWeld%�����s���邱�ƂŁA���_�̗n�ڂ��ł��܂��B$
���̎��A�_�C�A���O�ɂāA�S�Ă̒��_�������I�Ɉ�̒��_�ɗn�ڂ���(%ForceWeld%)���A�w�肵����������
�߂����_���m������n�ڂ��邩��I�����邱�Ƃ��ł��܂��B
$
]FusionPoly �ʂ̍���
�����������ʂƖʂ����L����G�b�W��I�����A%EditDeleteEx%���Q����s���邱�ƂŁA�ʂ��P�̎l�p�ʂ�
�ϊ����邱�Ƃ��ł��܂��B$
�����\�ȏ����́A$
�E�O�p�ʁ{�O�p��$
�E�l�p�ʁ{�l�p��$
�̏ꍇ�ł��B$
$

|Numeric ���l����

%PropertyWindow%�̈ʒu���ɐ��l����͂��邱�Ƃ�
���ݑI�����Ă���v�f���ړ����邱�Ƃ��\�ł��B$
���͕����ɂ͐�Βl�w��ƁA���Βl�w�肪�\�ł��B$
$
%PropertyWindow%�̃T�C�Y���ɐ��l����͂��邱�Ƃ�
���ݑI�����Ă���v�f���g��E�k�����邱�Ƃ��\�ł��B$
���͕����ɂ͐�Βl�w��ƁA�{���w�肪�\�ł��B$
$
$
�����Ӂ����l���͂ňړ������s�����I�u�W�F�N�g�ɑ����Đ��l���͂�
�s�������ꍇ�́A��x�I�u�W�F�N�g���N���b�N���āA�I�u�W�F�N�g�̐V����
�ʒu�A�T�C�Y���擾���Ȃ����Ă��������B$

���l���͂�⏕���邽�߂�%VecCalc%���g�p�\�ł��B$
$
|Nudge �i�b�W

Alt+�J�[�\���L�[���������ƂŁA�I��v�f����������邱�Ƃ��\�ł��B$
$
�R�ʐ}���A�N�e�B�u�ȏ�ԂŃJ�[�\���������ƁA�J�[�\���������������ɔ������܂��B$
$
�p�[�X�r���[���A�N�e�B�u�ȏ�Ԃł�Alt+�������J�[�\����-Y�����AAlt+�E�����J�[�\����
Y�����B$
ALt+������J�[�\����-X�����AAlt+�������J�[�\����X�����BAlt+Ctrl�L�[�������Ȃ��������J�[�\����Z�����A�������J�[�\����-Z�����Ɉړ����܂��B$
$
�ړ������͊��ݒ�ŕύX���\�ŁA�X�y�[�X�L�[�������Ȃ���Alt+�J�[�\���L�[���������ƂŐݒ�ړ���������10�{�ɂȂ�܂��B$
$ 
<B>Beta5.1����AAlt�L�[�𓯎��ɉ����d�l�ɕύX����܂����B�A���A���ݒ��ύX����΂ŏ]���ǂ���A�J�[�\���L�[�݂̂ł̃i�b�W���삪�s���܂��B</B>
$
@Footer
[] ---------------------------------------------------------------------------------

@Header
:Manipulator �}�j�s�����[�^
�}�j�s�����[�^���g���ƁA���_�������[���h���W�̊e�������݂̂ɐ������ē���������A�C�ӂ̖ʂ̖@��������p�[�c/�{�[���̃��[�J�����W���ɐ������ē��������肷�邱�Ƃ��ł��܂��B$
$
|WorldManipulator �ʏ�̃}�j�s�����[�^ON &actViewManipulator
�N�������͂��̏�Ԃł��B$
$
�I�𕔕������[���h���W�������Ɉړ�������(%MoveTool%��)�A��](%Roll2D%��)�������肷�邱�Ƃ��ł��܂��B$

|LocalManipulator ���[�J���}�j�s�����[�^ON &actViewLocalManipulator
�Ō�ɃN���b�N�����ʁE���_�̖@��������A�G�b�W�̕����A�p�[�c/�{�[���̃��[�J�����W���ɂ����Ĉړ�/��]�����邱�Ƃ��ł��܂��B$
$
|ManipulatorOff �}�j�s�����[�^OFF
�ʏ�̃}�j�s�����[�^���\������Ă��鎞��%WorldManipulator%���A���[�J���}�j�s�����[�^���\������Ă��鎞��%LocalManipulator%���ēx���s���邱�ƂŃ}�j�s�����[�^���������Ƃ��ł��܂��B$
����g�񂾏ꏊ��ҏW����Ƃ����A�}�j�s�����[�^���ז��ȏꍇ�ɂ�OFF�ɂ��Ă��������B$

@Footer
[] ---------------------------------------------------------------------------------

@Header
:ObjectHandling �O���[�v����

MarbleCLAY�ɂ́A%ObjectWindow%�Ƃ����A�I�u�W�F�N�g�Ǘ��̂��߂̃E�C���h�E������A���̃E�C���h�E�ɂăI�u�W�F�N�g�̖��̕ύX��A�O���[�v�����Ȃǂ��s�����Ƃ��ł��܂��B$
$

|MakeObject �I�u�W�F�N�g����

]ob_Startup �N������̏��
MarbleCLAY�N�������A%FileMenu%->%FileNew%�Ńh�L�������g���쐬��������ł́A�I�u�W�F�N�g�͈���Ȃ���Ԃł��B$
���̎��A%ObjectWindow%���́A���}�̂悤�ȕ\���ɂȂ��Ă��܂��B("Root"�́A�S�ẴI�u�W�F�N�g���������ځB�����ł̓I�u�W�F�N�g��������݂��Ȃ��̂�Root�̉��ɂ͍��ڂ�����܂���B)$
$
@#obj_null.gif@$
$
$
]ob_firstmake �ŏ��̃I�u�W�F�N�g���쐬
���̏�ԂŁA%MakePrimitive%��A%MakeFacet%���̕��@�ŉ��炩�̃|���S�������ƁA%ObjectWindow%���Ɏ����I�Ɉ�̃I�u�W�F�N�g���쐬����܂��B$
$
�V�����I�u�W�F�N�g�ɂ́A"NewObject"�Ƃ������O�������A�I�u�W�F�N�g���̃|���S���Q(�|�����b�V��)�ɂ�"Mesh-0"�Ƃ������O���t�����Ă��܂��B$
(%MakePrimitive%�ŃI�u�W�F�N�g��������ꍇ�́A�|�����b�V���̖��̂�"Sphere"���ɂȂ��Ă��܂����A�K�X�ǂݑւ��Ă�������.)$
$
@#obj_firstmake.gif@ @#obj_work_firstmesh.gif@$
$
��̃I�u�W�F�N�g�ɂ́A�����̃|�����b�V�����܂ނ��Ƃ��ł��܂��B��}�̏�Ԃł́A�V�����쐬���ꂽ�I�u�W�F�N�g-
"NewObject"���I�����ꂽ���(�Z���F�ŁA���]�\��)�ɂȂ��Ă���A�I�u�W�F�N�g��I������ƁA�I�u�W�F�N�g���̑S�Ẵ|�����b�V��(�����ł�"Mesh-0")���I������Ă���
��ԂɂȂ�܂��B$
$
$
]obj_addpoly �|���S���ǉ�
"NewObject"��I��������ԂŁA����Ƀ|���S����ǉ����Ă����ƁA�ǉ����ꂽ�|���S����"NewObject"���̓K���ȃ|�����b�V���ɑ����邱�ƂɂȂ�܂��B�����ł̓|�����b�V����"Mesh-0"�̂�
�Ȃ̂ŁA��������"Mesh-0"�ɂȂ�܂��B$
 @#obj_work_secondmesh.gif@$
 $
�Q��.%RuleAddMesh%$
$
$
]obj_newpolymesh �|�����b�V�����ǉ��@
�|�����b�V�����̒ǉ��ɂ͓�ʂ�̕��@������܂����A�ŏ���%ObjectWindow%�̑���Œǉ�������@���q�ׂ܂��B$
$
@#obj_newmesh.gif@$
%ObjectWindow%�̉����ɕ���ł���A�C�R���̂����A��}�̖��Ŏ����A�C�R�����N���b�N����ƁA$
"NewObject"�̉��ɐV����"Mesh-1"�Ƃ������̂̃|�����b�V�����쐬����܂��B$
@#obj_newmesh2.gif@$
$
$
]obj_addpoly2 "Mesh-1"�Ƀ|���S���ǉ�
���̂܂܂̏�Ԃ�"NewObject"�Ƀ|���S����ǉ�����ƁA�����̏ꍇ�A�|���S����"Mesh-0"�ɑ����Ă��܂��܂��B$
"Mesh-1"�Ɋm���Ƀ|���S����ǉ��������ꍇ�́A%ObjectWindow%��"Mesh-1"���N���b�N���āA"Mesh-1"�݂̂��I������Ă����Ԃɂ���K�v������܂��B$
$
@#obj_selmesh1.gif@ @#obj_work_mesh1.gif@$
��}�̂悤�ɁA"Mesh-1"���I�����ꂽ��ԂŃ|���S����ǉ�����ƁA�|���S����"Mesh-1"�ɑ����悤�ɂȂ�܂��B$
(��}�ł͌��₷���悤�ɁA�|���S���̐F��ύX���Ă���܂�)$
�܂��A���̏�Ԃł́A"Mesh-1"�ɑ�����|���S���ȊO�͔������ɂȂ�ҏW�ł��Ȃ��Ȃ�܂��B$
$
$
]obj_newpolymesh2 �|�����b�V�����ǉ��A
�|�����b�V������ǉ������Ԗڂ̕��@��������܂��B$
%ObjectWindow%�ŁA"NewObject"��I�����āA�I�u�W�F�N�g�S�̂�ҏW�\��Ԃɂ��Ă��������B$
$
@#obj_newmesh2.gif@�@@#obj_work_naming.gif@$
$
���ɔC�ӂ̃|���S����I����(�����ł͓�Ԗڂ̃|���S����I�����܂�)�A�}�E�X�̉E�{�^�����N���b�N����%ContextMenu%��\�����A%ContextNaming1%->%ContextNaming2%�����s����ƁA
�|�����b�V��������͂���_�C�A���O���\������܂��B$
$
@#obj_dlg_naming.gif@$
$
�_�C�A���O�ɁA�ǉ����������̂����(�����ł�"new-mesh"�Ƃ��܂�)���āAOK�{�^���������ƁA�I�����Ă����|���S����"new-mesh"�ƂȂ�A�|�����b�V������%ObjectWindow%�ɕ\������܂��B$
$
@#obj_3mesh.gif@ @#obj_work_3mesh.gif@
$
$
]RuleAddMesh �|���S���ǉ��ƃ|�����b�V����
�|���S����ǉ������ꍇ�ɁA���̃|���S�����ǂ̃|�����b�V���ɑ������ƂɂȂ邩��\�����邽�߂ɂ́A�ȉ��̋K����m��K�v������܂��B$
$
�K��1�F%ObjectWindow%�ŁA��̃|�����b�V����������I�����Ă���ꍇ�B(�Q��.%obj_addpoly2%)$
�E�V�����쐬�����|���S���́A�S�Ă��̃|�����b�V���ɑ�����B$
$
�K��2�F%ObjectWindow%�ŃI�u�W�F�N�g�S�̂�I�����Ă���ꍇ�B(�����̗�ł�"NewObject"������I�����Ă���ꍇ)$
�E���ɑ��݂���|���S���̒��_��G�b�W�𗘗p���č쐬�����|���S���́A���p���������Ɠ����|�����b�V���ɑ�����B$
�E�����̃|�����b�V���ɑ�����A���_��G�b�W�𗘗p���č쐬�����|���S���́A���p�����|�����b�V���̂����ꂩ�ɑ����邪�A
�ǂ̃|�����b�V���ɑ����邩�͕s��Ȃ̂ŁA�쐬�������%obj_newpolymesh2%�̕��@�ŁA�蓮�Ń|�����b�V���̊��蓖�Ă��s���B$
�E���ɂ��钸�_��G�b�W�Ȃǂ�S�����p�����ɍ쐬�����|���S���́A�����̏ꍇ�A%ObjectWindow%���ň�ԏ�ɕ\������Ă���|�����b�V��
�ɑ�����B$
$
$
]Grouping �|�����b�V���̃O���[�v��  
�����̃|�����b�V�����A�O���[�v�����邱�Ƃ��ł��܂��B$
�O���[�v�����邱�ƂŁA�����̃|�����b�V���𓯎��ɕ\��/��\��������A�I�������肷�邱�Ƃ��o����悤�ɂȂ�܂��B$
$
@#obj_group.gif@$
�O���[�v���������|�����b�V����I��(�����ł�"Mesh-0"�ƁA"Mesh-1"��I��)�A�E�N���b�N���j���[��\�����āu�O���[�v���v�����s����B$
(�����̃|�����b�V����I������ꍇ�ACtrl�L�[�������Ȃ���|�����b�V�������N���b�N���邩�A�|�����b�V�����������}�E�X�ō��h���b�O����B)$
$
@#obj_group2.gif@$
�V�����O���[�v���쐬����(��}�ł�"GroupMesh-0"�Ƃ�������)�A���̃O���[�v�̉��Ɍ��X�̃|�����b�V����������悤�ɂȂ�܂��B$
$
$
]UnGrouping �O���[�v����
�쐬�����O���[�v�́A�E�N���b�N���j���[�́u�O���[�v�����v�ŉ������邱�Ƃ��ł��܂��B$
$
$
]GroupRename ���̕ύX
�I�u�W�F�N�g���A�|�����b�V�����A�O���[�v����%ObjectWindow%�̏㕔�ɂ���G�f�B�b�g�{�b�N�X��p���ĕύX���邱�Ƃ��ł��܂��B$
$
@#obj_rename1.gif@$
���̂�ύX�������������N���b�N(�����ł�"GroupMesh-0")���āA�G�f�B�b�g�{�b�N�X�ɐV�������O"Group"����͂��ăG���^�[�L�[�������B$
$
@#obj_rename2.gif@$
���̂�"Group"�ɕύX����܂��B$
$
@Footer
[] ---------------------------------------------------------------------------------

@Header
:ViewChange ���_��ς���

|UseWheel �}�E�X�̒��{�^��
�z�C�[���}�E�X���A�R�{�^���}�E�X�̒��{�^���������Ȃ���h���b�O����ƒ����_���ړ����邱�Ƃ��ł��܂��B$
$
��5���A���{�^���������Ȃ���A�}�E�X�̉E�{�^�����h���b�O����Ǝ��_�������_�𒆐S�ɉ�]���܂��B$
$
�܂��A���ݒ�ŏ�L��������ւ�����A���̋@�\�����蓖�Ă邱�Ƃ��\�ł��B$
$

|QuickArea �N�C�b�N�G���A
�e�}�ʂ̕\���G���A�̎��͂ɑ��݂������@�\�̈���g�������_�ύX���@�B%lay_QuickArea%���Q�ƁB$
�W���ł́A���_�ύX�c�[���������̃G���A�ɐݒ肳��Ă���A���_�̉�]�A�Y�[���C��/�Y�[���A�E�g���ȒP�ɂł���悤�ɂȂ��Ă��܂�$
%PerspectiveView%�ƁA%3WayView%�ł͈قȂ�@�\�����蓖�Ă��Ă���A%OptionConfig%�_�C�A���O�ŁA�N�C�b�N�G���A�ɕʂ̋@�\�����蓖�Ă邱�Ƃ��ł��܂��B$

]PerspectiveView �����}
�����}�ʂ̑��ʂɃJ�[�\�����߂Â���ƁA�J�[�\���`��@#curdolly.gif@�ɂȂ�܂��B
���̏�ԂŁA�}�E�X�̍��{�^���������Ȃ���h���b�O����ƁA���_�������_�𒆐S�ɉ�]���܂��B$
���l�ɁA�E�{�^���������Ȃ���㉺�����Ƀh���b�O����ƁA���_���O��Ɉړ����܂��B$
$
]3WayView 3�ʐ} 
�R�ʐ}�̑��ʂɃJ�[�\�����߂Â���ƁA�J�[�\���`��@#curhand.gif@�ɂȂ�܂��B
���̏�ԂŁA�}�E�X�̍��{�^���������Ȃ���h���b�O����ƁA�����_���ړ����܂��B$
���l�ɁA�E�{�^���������Ȃ���㉺�����Ƀh���b�O����ƁA�}�ʂ��g��k�����܂��B$

$
|UseQuickTool �N�C�b�N�c�[�����g��
�����̏�Ԃł́AALT�L�[�Ɏ��_�ύX�c�[���ASPACE�L�[�ɒ����_�ύX�c�[�������蓖�Ă��Ă��܂��B$
$
�����}�ʂ�ALT�L�[�������Ȃ���}�E�X�{�^�����h���b�O����ƁA���_�������_�𒆐S�ɉ�]���܂��B$
���l�ɁAALT+�E�{�^���������Ȃ���㉺�����Ƀh���b�O����ƁA���_���O��Ɉړ����܂��B$
$
�R�ʐ}�A�����}�ʂ�SPACE�L�[�������Ȃ���}�E�X�{�^�����h���b�O����ƁA�����_���ړ����܂��B$
���l�ɁAALT+�E�{�^���������Ȃ���㉺�����Ƀh���b�O����ƁA�}�ʂ��g��k�����܂��B$
$
QuickToolBar���g���āA�L�[�̊��蓖�Ă�ύX���邱�Ƃ��\�ł��B$
$
$
|UseNormal �c�[���o�[�őI������

%ViewTools%�ŁA���_�ύX�c�[���⒍���_�ύX�c�[����I�����Ă��A���_����͉\�ł��B$
$
$
|SmartScroll �X�}�[�g�X�N���[�����g��
(��)WACOM����̔�����Ă���SmartScroll�Ƃ����f�o�C�X���g���ƁA����ɂ�鎋�_�ύX���o����悤�ɂȂ�܂��B$
$
���g�p�O�ɁA�Y�t����Ă���MarbleCLAY.ssp�t�@�C����SmartScroll�E�C���h�E�Ƀh���b�O&�h���b�v���Ă����Ă��������B
$
|ArvelMouse �g���b�N�{�[���t���}�E�X���g��
Arvel����̔�����Ă���g���b�N�{�[���t���̃}�E�X���g���ƁA�g���b�N�{�[���ɂ�鎋�_�ύX���o����悤�ɂȂ�܂��B$
�����ݒ�ɂāA�z�C�[���̋@�\�ɢ�r���[���[��������蓖�ĂĂ��������B$
@Footer

[] ---------------------------------------------------------------------------------
@Header

:SplineSurf �Ȗ�
MarbleCLAY�̓|���S�����f���[�ł����A%ChangeSplineSurf%��%ChangeSplinePatch%�̓��ނ̌`�����g�����Ȗʃ��f�����O���\�ł��B$
�����Ȗʃ��f���Ŏg����Ȗʂ̓|���S�����f�������Ɏ����I�ɐ�������邽�߁A�|���S�����f�����O�̓����ł��鎩�R�x�̍������f�����O
���슴���ێ����邱�Ƃ��ł��܂��B$
$
�������A���f�����O����͏�Ƀ|���S���ɑ΂��čs���邽�߈ȉ��̂悤�Ȍ��_������܂��F$
1.�Ȗʂ̊O�`��������ɖʏ�ɒ��_��ǉ�������A�ʂɌ����J���邱�Ƃ��ł��Ȃ��B(%ChangeSplinePatch%�Ɋւ��Ă͏����̃o�[�W�����ł�����x���������\��������܂�)$
2.�Ȗʂ��|���S������ĊԐړI�Ɉ������߁A�ҏW���ʂ𒼊��I�ɔc������B���f���ɒ��ڐG��銴�o�ɖR�����B(�A���A����Ɋւ��Ă͊���邱�Ƃ͉\���ƍl���܂�)
$
]MakeSplineSurf �Ȗʂ̐���
�Ȗʂ̐������@�͔��ɊȒP�ł��B$
1.�܂��ŏ���%PolygonOperation%���Q�Ƃ��ēK���ȃI�u�W�F�N�g���쐬���Ă��������B$
2.�Ȗʉ��������I�u�W�F�N�g��%ObjectWindow%�őI�����Ă��������B$
3.%MirrorMenu%->%ChangeSplineSurf%��������%MirrorMenu%->%ChangeSplinePatch%�����s����ƑI�������I�u�W�F�N�g���Ȗʉ�����܂��B$

]FreezeSplineObject �Ȗʂ̃|���S����
MarbleCLAY�ō쐬�����Ȗʃ��f���𑼂̃A�v���P�[�V�����Ŏg�p���邽�߂�%Export%����ꍇ�A���̂܂܂ł͋Ȗʉ��O�̃|���S���������o�͂���Ă��܂��܂��B$
���̃A�v���P�[�V�������|���S������Ȗʂ𐶐�����@�\�������Ă���ꍇ�͂��̂悤�ȗ��p���@���\�ł����A�����ł͂Ȃ��ꍇ�A�ȉ��̎菇��%Export%�O�ɋȖʂ��|���S��������K�v������܂��B$
$
1.�|���S�����������I�u�W�F�N�g��%ObjectWindow%�őI���B$
2.%MirrorMenu%->%FreezeSpline%�����s$
3.�|���S�����̃��x������͂��܂��B(��F4�Ɠ��͂���ƈ�̖ʂ�4x4=16�̃|���S���ɕ������܂��B)$
4.�|���S�������ꂽ�I�u�W�F�N�g��<���̖��O>+"(Freeze)"�Ƃ������O�Ő��������̂ŁA�����I������%Export%���s���Ă��������B$

]TuneSplineStyle �Ȗʂ̔�����

�E%SharpEdge%������ƁA�Ȗʂ̃G�b�W�𗧂Ă鎖���o���܂��B(���̏�Ԃɖ߂��ꍇ��%UnSharpEdge%�����s����)$
�E%SharpVertex%�A%UnSharpVertex%�������s���邱�ƂőI���������_���点����A���炩�ɂ��邱�Ƃ��\�ł��B$
�E%MoveTool%���[�h���ɂ́A�E�F�C�g��ύX���������_���E�����ɉE�h���b�O����ƁA�E�F�C�g���������A�������ɉE�h���b�O����ƃE�F�C�g���������܂��B$



@Footer

[] ---------------------------------------------------------------------------------
@Header

:SelectiveMirror �Ώ̐}�`�ҏW


@Footer


[] ---------------------------------------------------------------------------------
@Header

:Template ���G�\��
$
�p�[�X�r���[�ȊO�̃r���[�ɂ́A���f�����O�̉��G�Ƃ��ăe���v���[�g�摜��\�����邱�Ƃ��ł��܂��B$
�e���v���[�g�͊e�I�u�W�F�N�g���Ɏw�肷�邱�Ƃ��ł��܂��B
$
%ImageMenu%->%ImageModelingTemplate%->%ImageImportToXY%,$
%ImageMenu%->%ImageModelingTemplate%->%ImageImportToYZ%,$
%ImageMenu%->%ImageModelingTemplate%->%ImageImportToZX%,$
�����s����ƁA�摜�I��p�̃_�C�A���O���\�������̂ŁA�e���v���[�g�Ƃ��ē\�肽���摜��I��ł��������B$
$
����ƁA�w�肵���r���[�ɉ摜���\������܂��B���̂Ƃ��A�\�������摜�̉𑜓x�́A���ݒ��
�ݒ肵���T�C�Y�Ɏ����I�ɕϊ�����(�f�t�H���g320x240)�A�e���v���[�g�̕\���ʒu�́A�e���W��-10�̈ʒu����T�C�Y20�̕��ŕ\������܂��B$
$
�e���v���[�g�̈ʒu�A�T�C�Y�͏����I�ɂ�GUI����ŕύX�ł���悤�ɂ������ł����A����͊ȈՓI����
�ł��邽�߁A �b��_�C�A���O�Ő��l�ł̎w��݂̂��\�ł��B$
$

$
<B>
  
  �����ӁF �e���v���[�g�摜���g�債������ƁA �|���S���Ɖ摜�̂��ꂪ�傫���Ȃ�܂��B�C�����Ă�������.$
  
</B>
@Footer




[] ---------------------------------------------------------------------------------
@Header
:ChangeAttribute �J���[�E��������


@Footer

[] ---------------------------------------------------------------------------------
@Header
:UVEdit UV�ҏW
��5.1����UV�ҏW�@�\���������܂����B�����_�ł͂܂��������ł��邽�߁A�ꕔ�̑��쎞��UV�l������ꂽ��듮�삵���肷��\��������܂����A
�ȉ��̂悤�ȓ���������܂��F$
$
1.MarbleCLAY�ł�UV�ҏW����ʂȕ��Ƃ��Ĉ��킸�A�|���S���ҏW�̉�������ɂ�����̂Ƃ��Ĉ����܂��B$���̂���UV�l(MarbleCLAY�ł�UV���_�ƌĂт܂�)�̑I����ړ��E��]�E�g��k��
���ʏ�̃|���S���ҏW�Ƃقړ������o�ōs�����Ƃ��ł��܂��B$
���̃A�v���P�[�V�����ł悭����AUV�ҏW��p�̃E�C���h�E�ł̑����A��p���j���[�����g�������삪�g���ɂ����Ɗ��������Ƃ�������͂��Ў����Ă݂Ă��������B$
$
@#uvroll.jpg@$
UV���_��I�����āA%Roll2D%�c�[���ŉ�]$
$
$
2.UV�l�̑�����|���S������Ɠ����ɂ��邽�߂ɁAUV�l�̑��ɑ�O�̗v�f�Ƃ���D�l��ǉ����ĎO�����I�u�W�F�N�g�Ƃ��Ĉ����܂��B$
UVD�𓧎��}�ŕ\�����đ��삷�邱�ƂŁA����g�񂾕��G�ȃI�u�W�F�N�g��UV���_���c�����₷���A�I�����₷���Ȃ�܂��B$
(UVW�Ƃ�����UVD�Ƃ����̂́A���̂Ƃ����҂̎茳��UVW�l�����I�u�W�F�N�g��������A�v���P�[�V�������Ȃ��̂Ŏ����Ȃ�=W�l���G�N�X�|�[�g���鎖���Ȃ����ƁA
��O�̗v�f�͂����܂ł��_�~�[=dummy�ł��邱�Ƃ𖾎������������ׂł��B�����I��UVW�Ƃ����\���ɕύX���邩������܂���B)$
$
@#uvpers.jpg@
$
$
UV�ҏW���|���S���ҏW�Ɠ����Ɉ����悤�ɂ������߁A�����_�ł͈ȉ��̂悤�Ȍ��_������܂�:$
1.UV��ҏW���Ă���̂��A�|���S����ҏW���Ă���̂����킩��ɂ�����������\��������B$
2.UV�ҏW�ƃ|���S���ҏW�𓯓��ɂ��悤�Ƃ�����邠�܂�AUI�̐݌v�ɖ���������A���̋@�\���������F$
2-1�D<S>UV���_���A�ʂ�UV���_�ɗn�ڂł��Ȃ�</S> <B>�ʐ����c�[�����g�����ƂŃh���b�O&�E�F���h���o����悤�ɂȂ�܂����B beta5.3</B>$
2-2. �ʂ�UV�l��ʂ̖ʂɃR�s�[&�y�[�X�g�ł��Ȃ�$
$
$
|AttachUVValue UV�l���蓖��

UV�����蓖�ĂāA�e�N�X�`���p�̃e���v���[�g�����菇���T���v���t�@�C����p���Đ������Ă����܂��B$
�܂��ŏ���%FileMenu%->%FileOpen%�����s���āAsamples�t�H���_����"Ceratophrys.mcl"�t�@�C��(�x���c�m�K�G��)���J���Ă����Ă��������B$
$
]UVSelectMesh UV�����蓖�Ă���������I������
�T�u���b�V��"top"�̉��̐Ԃ��g�ň͂܂ꂽ�A�C�R�����N���b�N����ƃx���c�m�K�G���̊�E�w�ʁE���ʂ̃��b�V�����I������܂��B$
���̕�����UV�l�����蓖�Ă܂��B$
$
@#uvstep1.jpg@$
$
]UVAttach UV���蓖��
%ImageMenu%->%UVGenerate%�����s����ƃ_�C�A���O���\������܂��B$
�}�b�s���O�`��ɂ�"�J�X�^��"��I�����A���S����"Z��"��I������"OK"�{�^���������Ă��������B$
$
@#uvstep2j.jpg@$
]UVCheck1 UV�m�F
%WaySplitBar%�̉E����5�Ԗڂ̃A�C�R�����N���b�N����UV�r���[��\�����܂��B$
U�l�AV�l�����ꂼ��0�`1.0�͈̔͂Ŋ��蓖�Ă��Ă��鎖���m�F�ł��܂��B(UV�r���[���ɔ����_���ň͂܂ꂽ������0����1.0�͈̔�)$
$
@#uvstep3.jpg@$
]UVCheck2 UVD�m�F
%WaySplitBar%�̉E����8�Ԗڂ̃A�C�R�����N���b�N����UVD�r���[��\�����܂��B(���}�ł͍X�Ɋe�r���[��%FlatPreview1%�\���ɂ��Ă��܂�)$
UVD�r���[�Ŋm�F����ƁA�x���c�m�K�G���̔w�ʂƕ��ʂ�UV�r���[�ł͏d�Ȃ��Ă��邱�Ƃ��킩��܂��B$
$
�����ŁA���ʂ�؂藣���Ĉړ������邱�Ƃɂ��܂��B$
$
@#uvstep4.jpg@$
]AbdomenSplit ���ʂ�؂藣��
1.UVD�r���[�ŕ��ʕ����̃��b�V����I�����܂��B(�ʏ�̓����}�ʂőI�����Ă����܂��܂��񂪁A���̏ꍇ�A���̃R�}���h�����s����O��UVD�r���[�ɐ؂�ւ��Ă����Ă�������)$
2.%MeshMenu%->%MeshPolySeparate%�����s����B$
$
����ŕ��ʂ�UV���b�V�����w�ʂ���؂藣����܂��B$
$
@#uvstep5.jpg@$
]AbdomenRoll ���ʂ���]�����鏀��������
1.%Roll2D%�c�[����I��$
2.���}�̒��_��Shift+�N���b�N����$
$
@#uvstep6.jpg@$
]AbdomenRoll2 ���ʂ���]������
�n���h���̈�_��Shift�L�[�������Ȃ���h���b�O����180�x��]�����܂��B$
$
@#uvstep7.jpg@$
]AllUVSet �S�Ă̖ʂ�UV���蓖��
��L�v�̂ŁA���o���A�ځA�葫��UV�����蓖�ĂĂ����ƁAUV�l��0�`1.0���Ɏ��܂�Ȃ��Ȃ��Ă��鎖�������̂ŁA
%ScaleTool%�c�[����I�сA�S�Ă�I������0�`1.0�Ɏ��܂�悤�ɏk�����܂��B$
$
@#uvstep8.jpg@$
$
|MekeUVtemplate UV�e���v���[�g�쐬
UV���蓖�Ă��I�������AUV�e���v���[�g���쐬���܂��B$$
%ImageMenu%->%UVBurn%�����s����ƃ_�C�A���O���\�������̂ŁA�u��U�������Ă���쐬�v�Ƀ`�F�b�N�����A�K���ȉ𑜓x����͂��܂��B$
$
@#uvstep9j.jpg@$
]UVTemplate UV�e���v���[�g�m�F
��L�_�C�A���O��OK�{�^����������UV�e���v���[�g���쐬����܂��B$
$
UV�r���[��\�������UV���b�V�����Ă��t����ꂽ�e���v���[�g�摜���w�i�ɕ\������Ă��邱�Ƃ��m�F�ł��܂��B$
$
���̃e���v���[�g���O���\�t�g�ŊJ���ăe�N�X�`�������ꍇ�A%ObjectWindow%��"UV Template"��I�����A%ImageMenu%->%ImageCopyToClipborad%
�����s���āA�e���v���[�g�摜���N���b�v�{�[�h�ɃR�s�[���ĊO���\�t�g�ŕҏW���Ă�������(�O���\�t�g�ŉ摜�̉𑜓x��ύX���邱�Ƃ���)�B$
$
@#uvstep10.jpg@$
$
|UVMapping �e�N�X�`���\��t��

1.�O���\�t�g�ŕҏW�����e�N�X�`���摜����������bmp��jpg���ŕۑ�$
2.�K���ȃ}�e���A���̊g�U���}�b�v�ɕۑ������摜�t�@�C������ݒ�$
3.�}�e���A�����I�u�W�F�N�g�ɓK�p$
$
(�O���ō�����摜���ēxUV�e���v���[�g�Ƀy�[�X�g���AUV�e���v���[�g���e�N�X�`���Ƃ��ė��p������@������܂����A�����͊������܂�)$


|UVFinish ����
��L�菇�ō쐬�����摜���e�N�X�`���Ƃ��Đݒ肵�āA�Ƃ肠������������Ƃ��̂悤�ɂȂ�܂��B(%ShaderPreview%���g���ăo���v�}�b�v���v���r���[���Ă��܂�)$
$
@#uv_finish.jpg@

@Footer


[] ---------------------------------------------------------------------------------
@Header
:HighlevelEdit ���x�ȕҏW

|VertexColision ���_�Փˌ��m

���_�ړ�(���������A�g��k�����܂�)���s��������ɁA�R�}���h�����s���邱�ƂŁA
�e���_�����̑���ɂ���Ĉړ������O�Ղ̊Ԃɖʂ��������ꍇ�ɁA�ȉ��̓�����s���܂��B$
$
$
<B>
�@�����ӁF�A�G�b�W���m�A�|���S�����m�̏Փˌ��m��������Ă��Ȃ����߁A ���_�����蔲���铙���E������܂��B$
�@ �܂����ɏ������d���ł��B$
</B>

|EffectFilter �G�t�F�N�g�t�B���^�[

$

|BooleanCut �u�[���A���J�b�g
<FONT COLOR="#FF8080">v2�݂̂̋@�\</FONT>$

MarbleCLAY�ł͓�̃��b�V���Ԃ̌�������߁A���̐��Ń��b�V�����J�b�g����@�\��%@BooleanCut%�ƌĂ�ł��܂��B
�ʏ�̃u�[���A���̂悤�ɁA��̃I�u�W�F�N�g�̍���a�����߂邱�Ƃ��ł���킯�ł͂Ȃ��̂ŁA���̖��͕s�K����
�悤�ȋC�����܂����A���b�V���Ԃ̌���ŕ������邱�Ƃ����ł���΁A���̌�A���Ƃō���a�̌`��ɉ��H���邱�Ƃ�
�ł���̂ŁA���̂悤�ȃl�[�~���O�ɂ��Ă��܂��B$
$
<B>���̋@�\�͊J�����ł��邽�߁A�قڎg�p�ł��Ȃ��Ǝv���Ă����Ă��������Bv2�ȍ~�ŉ��P����\��ł�</B>
$
$
%@BooleanCut%�̎菇�F$
1.%@BooleanCut%�̑ΏۂƂȂ��̃��b�V���𓯂��I�u�W�F�N�g�̒��ɍ쐬���Ă��������B$
2.��̃��b�V�����\������ʂ�S�đI�����Ă��������B(���̎��A%DoubleClickSel%�@�\�����g���ƊȒP�ɑI�����\�ł�)$
3.%MeshMenu%->%MeshBooleanCut%�����s���Ă��������B$
4.��̃��b�V���Ԃ̌���ŁA���b�V������������܂��B$
$



@Footer

[] ---------------------------------------------------------------------------------

@Header
:SimpleBone �ȈՃ{�[��
MarbleCLAY�̃{�[���́A�A�j���[�V�����⑼�̃A�v���P�[�V�����ւ̏����o����O��ɂ������̂ł͂���܂���B�{�[���̎d�l��
�e�A�v���P�[�V�����ɂ��܂��܂��ł��邽�߁A�����o����O��ɐ݌v���s���ƍő���񐔓I�Ȃ��̂ɂȂ�A�������傫���Ȃ邽�߂ł��B$
(�������AMCL�t�@�C���ɂ͒��_���̃{�[���E�F�C�g��񂪏����o����Ă���̂ŁA���̃A�v���ւ̃R���o�[�^�\�t�g����邱�Ƃ͉\���Ǝv���Ă��܂�)$
$
MarbleCLAY�̃{�[���́A�P���ȃ|�[�Y�̃I�u�W�F�N�g�����f�����O���ɁA���X�ŏI�C���[�W�ɋ߂��|�[�Y��������
���f���̌`����m�F���邱�ƂŁA�C���[�W����̂���̏C���⃂�f�����O��ƂɌ����郂�`�x�[�V�������ێ����邱�Ƃ���ȗp�r�Ƃ��đz�肵�Ă��܂��B$
$
���̗p�r�̂��߂ɂ́A$
$
1.�{�[���͊ȒP�ɑg�ݍ��߂�$
2.�ό`��Ԃƒʏ��Ԃ��ȒP�ɍs�����ł���B$
3.�ό`��Ԃ̂܂܃��f�����O�ł���B(�����_�ł͖��B��)$
$
�̏������l�����܂��B1,2�̏����Ŏ����Ă���悤��"�ȒP"����ǋ���������������"�Ȉ�"�{�[���Ɩ��Â��Ă��܂��B$
$


|BonePrepare �{�[���g�ݍ��ݏ���

1.�K���ȃ��b�V�����f����p�ӂ��J���B(�K���ȃ��f���������ꍇBone_Tut.mcl���J���Ă�������)$
$
��������$
$
2.%PolygonOperation%���Q�Ƃ��āA���b�V�����f�����쐬���Ă��������B$
$
@#bone1.jpg@$

|BoneDraw �{�[���쐬
1.��Ɩʂ�XZ�ʂɐݒ肵�� %BoneDrawTool%��I�уI�u�W�F�N�g�̒��S�������h���b�O���ă{�[����`���B$
���h���b�O���ɉE�h���b�O����ƃ{�[���̑�����ύX�ł��܂��B$
@#bone2.jpg@$
$
2.���̎��A�{�[�����I�u�W�F�N�g�ɃX�i�b�v���Ă��܂��A���}�̂悤�ɐ��������S���Ƀ{�[�������Ȃ����Ƃ�����܂��B$
(%SelectFilter%��%VertexFilter%����OFF�ɂ��āA�{�[���`�掞�ɃI�u�W�F�N�g�ɃX�i�b�v���Ȃ��悤�ɍ쐬�ł��܂����A�����ł͒��S���炸��Ă��܂�����
�z�肵�܂�)$
@#bone3.jpg@$
$
3.�L�����N�^���Ώ̃��f���̏ꍇ�A�ŏ��̃{�[���͑Ώ̂̒��S�ʂɈʒu���Ă���ق����ǂ��̂ŁA
%PartsMenu%->%PartsToWorkplane% �����s���Ă��������B$
@#bone4.jpg@$
(�{�[�����Ώ̖ʂɈړ����܂����B)$
$

4.�V�����ꏊ(���̗�ł͂Ƃ����̎�̕t����)���h���b�O���ă{�[����`���ƁA�O��쐬�����{�[���̎q�Ƃ��ĐV�����{�[�����쐬����܂��B$
@#bone5.jpg@$
$
5.���̗v�̂ő����ă{�[����`���Ă����܂��B$
@#bone6.jpg@$
$

6.�����Ęr�̃{�[�����쐬���܂��BXY���ʂ���Ɩʂɂ��Ă����Ă��������B$
���ɁA(���̗�ł͓��̂�)�{�[�����N���b�N����ƁA���̃{�[�����I������܂��B$
@#bone7.jpg@$
$
7.�����ĐV�����{�[�����쐬����ƁA���̃{�[���͑I������Ă����{�[���̎q�ɂȂ�܂��B$
�����v�̂Řr�̃{�[�����쐬���܂��B$
@#bone8.jpg@$
$
8.���ʂ��猩�Ęr�̃{�[���̈ʒu������Ă���ꍇ�́A%MoveTool%�c�[����I�сA�r�̕t�����̃{�[����I��œK���Ȉʒu�Ɉړ������܂��B$
@#bone9.jpg@$
$
9.�I�u�W�F�N�g������ꍇ��%ObjectWindow%��"Root"��I�����ăI�u�W�F�N�g�ƃ{�[���𓯎��ɃA�N�e�B�u�ɂ��Ă��������B$
�X�ɁA�K�v�ɉ�����%Roll2D%���Ń{�[������]�����Ĕ����������܂�$
@#bone10.jpg@$
$
10.�E�r�̃{�[�������܂��B$
�r�̕t�����̃{�[����I�сA%PartsMenu%->%ParsMirror%�����s����ƁA���r�̃{�[���\�����~���[�R�s�[����A�E�r�̃{�[�����쐬����܂��B$
@#bone11.jpg@$
$
11.����܂ł̍�ƂƓ����v�̂ŁA�S�Ẵ{�[�����쐬���܂��B$
@#bone12.jpg@$
$
12.�ēx%ObjectWindow%��"Root"��I�����ăI�u�W�F�N�g�ƃ{�[���𓯎��ɃA�N�e�B�u�ɂ��āA���b�V�����{�[������݂͂łĂ��镔�����������`�F�b�N���܂��B$
���̗�ł͊{�̃{�[�����ׂ��A���b�V�����݂͂łĂ����̂�%MoveTool%��I��Ŋ{�̃{�[�����N���b�N���AY�������̊g��n���h�����h���b�O���ă{�[����傫�����Ă��܂��B$
@#bone13.jpg@$
���̃{�[���������l�ɃT�C�Y��ύX���Ă����܂��B$
(�n���h��������ꍇ��%Manipulator%��OFF�ɂ��A�n���h�������ݓ�ꍇ�͎��_��K���ɕύX���Ă�������)$
$

|AttachBone �{�[����K�p
1.�{�[�����쐬���I�������A��ԏ�ʂ̊K�w�̃{�[���ƃ��b�V�����f����I������$
@#bone14.jpg@$
$
2.%PartsMenu%->%AttachBoneSimple%�����s���Ă��������B$
@#bone15.jpg@$
�{�[�����V���v���ɕ\������A�ό`�����������܂����B$
$

|DeformBone �{�[���ό`
1.%MoveTool%�c�[���I�����āA�����������{�[����I�����A�n���h����̊e�|�C���g���h���b�O���邱�Ƃ�
�I�u�W�F�N�g���ό`���܂��B
@#bone16.jpg@$
$
|DetachBone �{�[��������
�ό`���������āA���b�V���ҏW���s�������ꍇ��$
%PartsMenu%->%DetachBoneSimple%�����s���Ă��������B$
$
|AdvancedBone ���x�ȃ{�[������
v2�ł͒��_���Ƀ{�[�������蓖�Ă���A�{�[�����蓖�Ă����������ɕό`��Ԃ������A�N�e�B�u�ɂ�����A�N�e�B�u�ɂ��鎖���ł��܂��B$
�������A������͂܂��d�l���ς��\��������̂Ńh�L�������g���ł��Ă��܂���B$
$

@Footer

[] ---------------------------------------------------------------------------------

@Header
:HighlightElement �n�C���C�g�\��
%SelectFilter%�Őݒ肳��Ă���v�f�̏�ɁA�}�E�X�J�[�\���������čs���ƁA���̗v�f��%@HighlightElement%����܂��B$
$
|HilightAtVertex ���_�̃n�C���C�g�\��
���_�̏�ɃJ�[�\��������ꍇ�A ���_�̐F���n�C���C�g�J���[�ŋ����\������A���̒��_�ɐڑ�����Ă���G�b�W��
�n�C���C�g�J���[�Œʏ�\������܂��B$
�����G�b�W�ɐڑ�����Ă�������Е��̒��_���I������Ă��钸�_�������ꍇ�A���̃G�b�W�͑I���J���[�Œʏ�\������܂��B
���̋@�\���g���āA���_�����G�Ȍ��ł��A������x�C�ӂɒ��_��I�����邱�Ƃ��ł��܂��B$
$

|HightlightEdge �G�b�W�̃n�C���C�g�\��
�G�b�W�̏�ɃJ�[�\��������ꍇ�A�G�b�W���n�C���C�g�J���[�ŋ����\������܂��B$
�������A�G�b�W�̗��[�̒��_���I������Ă��钸�_�������ꍇ�A�J���[�͕ω������A�����\������܂��B$
$

|HightlightPolygon �ʂ̃n�C���C�g�\��
�ʂ̏�ɃJ�[�\��������ꍇ�A�ʂ��n�C���C�g�J���[�ŋ����\������܂��B$
�������A�ʂɊ܂܂��G�b�W�̗��[�̒��_���I������Ă��钸�_�������ꍇ�A�J���[�͕ω������A�����\������܂��B$
$

|HighlightObject �I�u�W�F�N�g�̃n�C���C�g�\��
%ObjectWindow%�̃��b�V�����̏�ɃJ�[�\��������ꍇ�A���̃��b�V��(�������̓T�u���b�V��)���n�C���C�g�\������܂��B$
���̋@�\���g���ƃ}�V�����ׂ��傫���Ȃ�\�������邽�߁A�@�\��OFF�ɂ��邱�Ƃ��ł��܂��B$
�@�\OFF�{�^����%ObjectWindow%�̉����ɂ���@#obj_highlight.gif@�{�^���ł��B$


@Footer


[] ---------------------------------------------------------------------------------

@Header
:TestRendering �e�X�g�����_�����O &actTestRender

�X���[�X�V�F�[�f�B���O��Ԃ̊m�F�p�Ɏ��������@�\�B$
�s���G�b�W�ɂ͖��Ή��ł��邽�߁A�G�b�W�������Ă��镔���Ȃǂ��Ӑ}�����ʂ�ɕ\���ł��܂���B$
�����_�ł́A�L�@�I�Ȃ��̂̌`����m�F���邽�߂����Ɏg�p�\�ƍl���Ă����Ă��������B$
$
�����_�ł̓e�N�X�`������ҏW���ɂ������A�ėp���ɂ����Ă��܂��B���̐�A������x�̃e�N�X�`�������w��ł���悤�ȋ@�\���������ł����A�V�[���ҏW�ł��郌�x��
�܂ł̋@�\�ǉ��\��͂���܂���B(�f���͏o���܂���)$
<B>��5.1����}�e���A���������|���S���Ɋ��蓖�Ă邱�Ƃ��ł���悤�ɂȂ�A�e�N�X�`�����̕ҏW���\�ɂȂ�܂����B</B>

$
MegaPOV�ɂ��ẮAPOV-Ray�֘A�̃T�C�g�ȂǂŒ��ׂĂ��������B��Ҏ��g���̋@�\��
����ɂ������Đ^���ɒ��׎n�߂��΂���ł��̂ŁA�ڂ��������͂ł��܂���B$
$
POV-Ray3.1�ƁAMegaPOV0.7�ȍ~������ɃC���X�g�[������Ă���΁A%TestRendering%�����s�����
�����I��MegaPOV���N�����A�����_�����O���J�n����܂��B$
MarbleCLAY����̓����_�����O�T�C�Y�Ȃǂ̎w����s���Ă��܂���̂ŁA���ӂ��Ă��������B$
����MegaPOV���N������Ă���ꍇ�́AMegaPOV���Ŏ蓮�Ń����_�����O�����s����K�v������܂��B$
<B>��5.1����MegaPOV0.7����сAPOV-Ray3.5���T�|�[�g���܂���</B>
$
:TestRenderRedQueen2 �e�X�g�����_�����O &actTestRenderRRT
$
2005/2/13���݁ARedqueen�̃t���[�ł͌��J����Ă��܂���B$
$
���̋@�\/�w���v���e�̈�����Redqueen�̎����o�[�W�����̌��J�`�Ԃ��������Ă���ēx�������܂��B$
$

�Q�l�F(�ȉ��̏���RQ2Beta�����ɏ��������́B) $
$
$
Redqueen2�Ƃ̘A�g       2003/12/29 T.Maeda$
$
��5.3e����e�X�g�����_�����O�ɍ��Y�����_�����O�\�t�g"Redqueen2"���ǉ�����܂����B$
redqueen2�ɂ��Ă�
http://www.teamredqueen.com
���Q�Ƃ��Ă��������B$
$
������$
�E�ŏ���Redqueen�̃o�C�i���̈ʒu�� Option->���ݒ�->�e�X�g�����_�����O�ɂĎw�肵�Ă��������B$
$
�E����Sample�t�H���_�ɂ���"rq2_sample2.mcl"�t�@�C�����J���Ă��������B$
$
�E�I�u�W�F�N�g�E�C���h�E��Root��I�����Ă�������$
$
�EOption->�e�X�g�����_�����O(RRT2)�����s���Ă��������B$
$
�ERedqueen2���Ăяo����A�����_�����O�I����A�摜���\������܂��B$
$
�E���ڃ����_�����O����K�v���Ȃ��ꍇ�A�G�N�X�|�[�g�ɂ�rrt�t�@�C���������o���Ă��������B(RRT2�Ƀ`�F�b�N�����鎖)$
$
���ݒ肠�ꂱ��$
$
�܂�Redqueen�̃t�H�[�}�b�g�����S�Ɋm�肵�Ă��Ȃ��Ǝv���܂��̂ŁA�����MarbleCLAY�ł͊e��ݒ��GUI�����ɕn��ɂȂ��Ă��܂����A���̕����R�x���������Ă��܂��B���̐�A�}�e���A���p�����[�^���������Ă��ȒP�ɑΉ��ł��܂��B$
$
�E�����_�����O�ݒ�$
�I�u�W�F�N�g�E�C���h�E��Root��I�сA�E�N���b�N���j���[����"�ǉ����"��I�����Ă��������B$
�_�C�A���O���J���܂��̂ŁA���̒��̃G�f�B�^��$
$
<!----> [rq_render]tracedepth 3$
$
���ƋL�����Ă��������B(�����_�����O�ݒ���s��Ȃ��ꍇ�A�K���ȃf�t�H���g�l���ݒ肳��܂�)$
$
�E�J�����ݒ�$
�����Root�̒ǉ�����$
$
<!----> [rq_camera]oversampling 10$
$
���ƋL�����Ă��������B�J�����ʒu���͌��݂̎��_�ɂȂ�܂��B$
$
�E�o�b�N�O���E���h$
������$
$
<!----> [rq_background]�`$
$
�ł��B$
$
�E�I�u�W�F�N�g�A�g���r���[�g$
�A�g���r���[�g�̓}�e���A���Ɠ����悤�Ȉ����ɂ��悤���Ǝv������ł����A�Ƃ肠�����I�u�W�F�N�g�Ɏ������Ă��܂��B�e�I�u�W�F�N�g�̒ǉ������J���āA$
$
<!----> [rq2attr]primaryunvisible$
$
���Ƃ��Ă��������B$
�X���[�W���O���A�A�g���r���[�g�Ƃ��Ĉ����Ȃ����̂�$
$
<!----> [rq]smoothing 30$
$
���Ɠ��͂��Ă��������B$
$
�E���C�g$
MarbleCLAY�̓��f���Ȃ̂Ń��C�g�I�u�W�F�N�g�͎����Ă��Ȃ����߁A�I�u�W�F�N�g�����C�g�Ƃ��ĕϊ����܂��B�I�u�W�F�N�g�̒ǉ�����$
$
<!----> [rq_light]pointlight$
$
������$
$
<!----> [rq]color 1 1 1$
<!----> [rq]photon 5000$
$
���ƋL�����Ă��������B$
�ʒu���̓I�u�W�F�N�g�̒��S�ʒu�����p����܂��B(arealight�ł̓|���S���̊e�ʂ�ʃ��C�g�Ƃ��Đݒ肵�܂����A���S�ł͂���܂���B���̑��̃��C�g�͒��S�ʒu�݂̗̂��p�Ȃ̂łǂ�Ȍ`��ł����܂��܂���)$
$
$
�E�}�e���A��$
�}�e���A����I�сA�ǉ������J���Ĉȉ��̂悤�ɋL�����Ă��������B$
$
<!----> [rq]frostness 1$
$
���B(color, reflection, transparency,specular���̓}�e���A���ݒ肪���f����܂����A�e���ڂ̊֌W���悭�킩���Ă��Ȃ����߁A����͂��Ȃ�K���ł��BMarbleCLAY�ɂ�鎩���ݒ肪�s���ȏꍇ�͒ǉ����ɂĖ����I�Ɏw�肵�Ă�������)$
$                                                                                                                                                                                                                         
�E�}�b�v�摜$
ppm�t�@�C���ŏo�͂���܂��B(�����̃o�[�W�����ł�png�ɕύX���܂��B)$
$
�g�����͈ȏ�ł��B$
$
������̗\��$
�E���݂�rq2beta�ł͓���I�u�W�F�N�g�ɕ����̃}�e���A�������蓖�Ă邱�Ƃ��ł��܂��񂪁A����ɂ��Ă͗v�]���o���Ă��܂��̂ŋ߂�������rq2���őΉ������Ǝv���܂��B���̏ꍇ�AMarbleCLAY���ł̓��ʂȏ����͕K�v����܂���̂ŁA���̂܂ܑΉ��ł��܂��B$
$
�E���݂�RQ2�ł�png�t�@�C���𐳂����}�b�s���O�ł��Ȃ����߁A�摜��ppm�ŏo�͂��Ă��܂����Appm�t�@�C�����Ɖ摜�̊m�F���ʓ|�Ȃ̂ŏ����I��png�ɕύX���܂��B(���̖������|�[�g���o���Ă��܂��̂ŋ߂������ɑΉ������Ǝv���܂��B)$
$
�E�ǉ����̕ҏW���_�C�A���O�ōs���͎̂�Ԃ�������̂Ń��[�_���X�����l���Ă��܂��B$
$
�E�}�e���A���`���̕ϊ����@�����ǂ�����B(���̌��ʁA���݂�MarbleCLAY�Ń����_�����O�����摜�Ə�����MarbleCLAY�Ń����_�����O�����摜�̌��ʂ��ς��Ǝv���܂�)$
$
�E�}�e���A���̒ǉ������}�e���A���c���[�ɕ\������悤�ɂ������ƍl���Ă��܂�$
$


@Footer

[] ---------------------------------------------------------------------------------

@Header
:FileInOut �t�@�C�����o��
$
|ImportFormat �C���|�[�g

�ȉ��̃t�@�C���t�H�[�}�b�g�ɑΉ����Ă��܂��B$
�������A�Ή����Ă���̂͂��̃t�H�[�}�b�g�̓��̂����ꕔ�̋@�\�݂̂ł��̂ŁA�ǂ݂��߂Ȃ��ꍇ�����X����܂��B$
$

]ROK �Z�p�剤(�t���[)����
�R�ʗŐ����폜���Ă���C���|�[�g���Ă��������B(�R�ʗŐ������݂��Ă��A�ǂ݂��ݎ��͉̂\�ł����A
��̍�ƂɎx����������\�����傫��)$
$
]DXFimport DXF�t�H�[�}�b�g����
3DFACE�݂̂ɑΉ����Ă��܂��B �������A�ǂ݂��ݑ��x�����ɒx�����߂����߂��܂���B
�ʂ̃\�t�g�ŁAOBJ�ȂǂɃR���o�[�g���Ă���ǂ݂��񂾂ق����ǂ��ł��傤�B$
$
]OBJ Wavefront(obj)�t�H�[�}�b�g����
�|���S�����݂̂ɑΉ����Ă��܂��B�O���[�v�����܂߂ăC���|�[�g�ł��܂��B$
�ʂ̃}�e���A�����A�X�v���C�����̓T�|�[�g���Ă��܂���B$
$
]RDS RayDreamStudio5����
�o�[�e�b�N�X���f���`�������ɂ����Ή����Ă��܂��B$
$
]CarraraFile Carrara�t�H�[�}�b�g����
%RDS%�Ɠ��l�A�o�[�e�b�N�X���f���`�������ɂ����Ή����Ă��܂��B$
$
]3DS 3DS�t�H�[�}�b�g����
��5.1����3DS�t�H�[�}�b�g�ɑΉ����܂����B�e�X�g�͕s�\���ł����A�}�e���A�������C���|�[�g�ł��܂��B$
$
]LWOImport LWO�t�H�[�}�b�g����
LWO����сALWO2�`���œ��͂ł��܂��B$
$
]MQOImporter ���^�Z�R�C���t�H�[�}�b�g����
���^�Z�R�C���`���̃I�u�W�F�N�g����͂��܂��B�~���[(���^�Z�R�C�����XY���ʂɑ΂���~���[�̂�)�A����ыȖʏ�Ԃ����͂ł��܂��B$
�������A���S���̖����~���[�I�u�W�F�N�g�͍��E���ڑ����ꂽ��ԂɂȂ炸�A�Ȗʂ̔����Ȍ`�̍Č����ł��܂���$
$

|Export �G�N�X�|�[�g

�ȉ��̃t�@�C���t�H�[�}�b�g�ɑΉ����Ă��܂��B$
<!--
�������ARayDreamStudio,Poser3�ȊO�ł͎����Ă��܂���B����ɁA�����Q�̃\�t�g�ɂ����Ă�
�\���ȃe�X�g���o���Ă���Ƃ͌������������߁A �����������o���ł��Ȃ��\��������܂��B$
�s������������ꍇ�͂��̎|�A�A�����Ă���������ΗL�肪�����ł��B���̍ہA�\�ł����
�s����N����t�@�C��(�\�Ȃ��MCL�`����)�𑗂��Ă���������΁A�������������Ȃ�܂���
��؂ȃf�[�^�ł��傤���疳���͂����܂���B$
$
]RDS RayDreamStudio5
���d�G�b�W���������Ƃ��m�F���Ă��珑���o���Ă��������B$
���d�G�b�W�́AEdit�����d�G�b�W��I�� �����s������ŁAEdit���폜 ���s�����Ƃŏ���
�\�ł��B$
$
�Ȗʉ��I�u�W�F�N�g�������o�������ꍇ�́AMirror/Curve���Ȗʂ��|���S���� ���s���A�|���S����
�����I�u�W�F�N�g�������o���Ă��������B ���̏ꍇ�A���d�G�b�W�͑��݂��܂���̂ŏ�L������
�s�v�ł��B$
-->
$
]OBJ Wavefront(obj)�t�H�[�}�b�g�o��

�\���ȃe�X�g���o���Ă��܂���B$
$
]DXFexport DXF�t�H�[�}�b�g�o��

�RDFACE�`���ŏ����o���܂��B �ēxMarbleCLAY�ɓǂ݂��ޕK�v������ꍇ����DXF�t�H�[�}�b�g��
�g�p���邱�Ƃ͂����߂ł��܂���B$
$
]POV MegaPOV/POV-RAY3.5(*.pov)�t�H�[�}�b�g�o��
%TestRendering%�p�Ɏ��������G�N�X�|�[�^�[�ł��B$
POV-Ray������łł���MegaPOV����сAPOV-RAY3.5��mesh2�`���ŏ����o���܂��B$
MegaPOV��I�񂾂̂́Amesh2�`����MarbleCLAY�ň����₷���`�����������߂ł��B����ł�MegaPOV��
�����ł���A�D�ꂽ���C�g���[�X�����_�����O�𐶂������Ƃ͏o���܂���B$
$
<B>�����F�f�t�H���g�ł͂��̌`���ŏ����o�����Ƃ͂ł��܂���B���ݒ�̃e�X�g�����_�����O�^�u�ŁA�uMegaPOV�����o�������v�Ƀ`�F�b�N�����Ă��������B
</B>
$

$
]3DS 3DS�t�H�[�}�b�g�o��
��5.1����3DS�t�H�[�}�b�g�ɑΉ����܂����B�e�X�g�͕s�\���ł��B$

$
]LWOExport LWO�t�H�[�}�b�g�o��
LWO����сALWO2�`���ŏo�͂ł��܂��BUV�����o�͂���ꍇ�ALWO2�`����I��ł�������$
$
]RRT Redqueen�t�H�[�}�b�g�o��
�܂������S�ł����ARedqueen�`���ŃI�u�W�F�N�g���o�͂��܂��B$
�I�u�W�F�N�g�E�C���h�E�ɂĊe�I�u�W�F�N�g��Redqueen�p�̒ǉ�����ǉ����邱�Ƃ�MarbleCLAY���ȈՃV�[���r���_�Ƃ���
�������Ƃ��ł���悤�ɂ��Ă��܂����A�܂����܂����Ȃ̂Ńh�L�������g�͗p�ӂł��Ă��܂���B$
$
]MQOExporter ���^�Z�R�C���t�H�[�}�b�g�o��
���^�Z�R�C���`���ŃI�u�W�F�N�g���o�͂��܂��B�~���[�A����ыȖʏ�Ԃ������o����܂����A�Ȗʂ̃E�F�C�g�͏����o����܂���B$
$

|AutoBackup �����ۑ�

]AutoBackUpMode ��Ə�Ԃ̎����ۑ�
Option->���ݒ� �� �u�ۑ��v�^�u�Ŏ����ۑ��̐ݒ肪�\�ł��B$
�w�肵�����Ԗ��Ƀt�@�C���������I�ɕۑ����܂��B$
$
MarbleCLAY���ُ�I�������ꍇ�A ����̋N�����Ɏ����ۑ����ꂽ
�t�@�C�����J�����Ƃ��\�ł��B ���S�ȕ��A�͖]�߂܂���B$
$
�܂��A����ł͍�ƒ��̃h�L�������g�ɂ������ʂ�����܂���B�����̃I�u�W�F�N�g��
�J���č�Ƃ��Ă���ꍇ�͏\���ɒ��ӂ��Ă��������B$
$
$
]Generation �t�@�C���̐���Ǘ�
%OptionMenu%->���ݒ� �� �u�ۑ��v�^�u�Ńt�@�C������Ǘ��̐ݒ肪�\�ł��B$
�t�@�C�����㏑�������ꍇ���ɈȑO�̃t�@�C����ݒ肵�����㕪�����ʖ���
�ۑ����܂��B$
����ď㏑�����Ă��܂����ꍇ�A File->�h�L�������g���J�� �Ń_�C�A���O���J���A
���ɂ���R���{�{�b�N�X����uGeneration File�v��I������ƁA ����Ǘ��ɂ��
�o�b�N�A�b�v���ꂽ�t�@�C�����J�����Ƃ��o���܂��B$
$


@Footer

[] ---------------------------------------------------------------------------------
@Header

:Plugin �v���O�C��
MarbleCLAY�̋@�\�̓v���O�C�����L�q���邱�ƂŊg�����邱�Ƃ��\�ł��B$
$
�v���O�C����Delphi/C++�ŋL�q���邱�Ƃ��ł��܂��B�ڍׂ�MarbleSDK�̃h�L�������g���Q�Ƃ��Ă��������BMarbleSDK�͍�҂̃y�[�W�ɂĔz�z���Ă��܂��B$
$
$
:Script �X�N���v�g
�X�N���v�g�̓v���O�C���ɂĎ�������܂��B$
���̂Ƃ���v1beta�ł̓X�N���v�g���T�|�[�g���Ă��܂��񂪁Av2�ł�Lua�X�N���v�g���T�|�[�g���Ă��܂��B$
�X�N���v�g�d�l�̓v���O�C��API�̎d�l�ɍ��E����邽�ߌ����_�ł̓h�L�������g����������Ă��܂���B$


@Footer

[] ---------------------------------------------------------------------------------
@Header

:Tips Tips
�����ł́AMarbleCLAY��֗��Ɉ������߂́A������Ƃ����@�\��������܂��B$
$

|Wheel �z�C�[���}�E�X���g��
�z�C�[���}�E�X���g���Ƒ��쐫�����サ�܂��B$
�f�t�H���g�ł̓z�C�[���ɂ́A�z�C�[���R�}���h�Ƃ����@�\�����蓖�Ă��Ă���A
��v�ȕҏW�c�[��(%MoveTool%�A%FacetTool%��)���z�C�[�����񂷂����ŌĂяo������
���\�ł��B�}�E�X���ړ����邱�ƂȂ��A�c�[���ύX���s�����Ƃ��ł��A�����΍��
������UP���܂��B$
$
�z�C�[���ɂ́A�Y�[���@�\�����蓖�Ă邱�Ƃ��ł��܂����A���̎��ɂ͉E�{�^��(��������Ctrl�L�[)
�������Ȃ���z�C�[�����񂷂��ƂŁA�z�C�[���R�}���h�@�\���g�����Ƃ��ł��܂��B$
(��4.9�ȑO�́A�z�C�[���{�^���{�z�C�[���̑g�ݍ��킹�ł������A�g���ɂ������߉E�{�^���{�z�C�[���R�}���h�ɕύX���܂���)
$

|Bend �I�u�W�F�N�g���Ȃ���

$
]SmoothBend �X���[�X�x���h
%SelectMagnet%���A
���_�ړ����s�Ȃ��Ă���Œ��ɁACtrl�L�[�������ƃI�u�W�F�N�g���X���[�X�ɋȂ��邱�Ƃ��ł��܂��B$
$
%ToolMoveWindow%��[����]�`�F�b�NBOX�Ƀ`�F�b�N�����Ă���ƁACtrl�L�[�������Ȃ��Ă��A�����I�ɋȂ����J�n����܂����A�������Ńo�O�����邽�߁A�s�p�ӂɋȂ��邱�Ƃ�����܂��B���̏ꍇ�́ACtrl�L�[���������ƂŋȂ�����������܂��B$
$

@Footer

[] ---------------------------------------------------------------------------------

@Header

\Other 4.���̑�

:Q&A Q&A
$
!Def numrest dummy
!Def num dummy

@numrest@
<!-- @Num@ -->

$
@S2@Q@Num@@FE@
|QQ �Ώ̐}�`�������
$
A�@���݂̃o�[�W�����ł́A�Ώ̉��͊��S�ɓ��삵�܂���B���ɒ��_�ɃG�b�W��ǉ�����
�ꍇ���ɑΏ̉��ʂ������Ă��܂����Ƃ�����܂��B$
���̂悤�ȏꍇ�́A%AllMirror%�����s���Ȃ������A�V�����o�����ʂ�I������%MirrorMakeMirror%���ēx�s���Ă��������B$
$                                                                     
�܂��A���X�Ώ̉����ɂ������ȏ�ԂɂȂ�Ƃ������|�[�g�𒸂��Ă��܂��B$
�Č��������܂�Ȃ��o�O�̂��߁A�Ȃ��Ȃ��C�����邱�Ƃ��o���Ă��܂���̂ŁA���̎��
�o�O�ɑ������ꂽ���͂��Ѓ��|�[�g�����肢���܂��B$
$
$
@S2@Q@Num@@FE@
|QQ �ꕔ�̋Ȗʂ�������
$
A�@�������̑���ŋȖʂ������Ă��܂����Ƃ�����܂��B�A�������I�ɂ͋Ȗʂ�
�����Ă��Ȃ��ꍇ�������̂ŁA ���̕�����I�����ď����������Ă݂邩�A�ēx%ChangeSplineSurf%��
���s���Ă݂Ă��������B$
$
����ł��_���ȏꍇ�́A���|�[�g�����肢���܂��B$
$

@S2@Q@Num@@FE@
|QQ �Ԉ���ăt�@�C�����㏑�������ꍇ�A�ǂ�����΂悢���H
$
A�@%AutoBackUP%���Q�Ƃ��Ă�������$
$

@S2@Q@Num@@FE@
|QQ �V���[�g�J�b�g�L�[�������Ȃ���������
$
A�@
%Window%���h�b�L���O���Ă���Ƃ��ȂǁA�V���[�g�J�b�g�̈ꕔ�������Ȃ���������܂��B$
���ݕ������Ă���͈̂ȉ��̂Q�ʂ�ł��B$
1.�h�b�L���O���Ă���E�C���h�E��́A�G�f�B�b�g�R���g���[���Ƀt�H�[�J�X������ꍇ�ɁA
�X�y�[�X�L�[�Ɋ��蓖�Ă��Ă���%QuickTool%������ɓ��삵�Ȃ��B$
�@����̓X�y�[�X�L�[�̐��䂪CheckBox���ɒD���Ă���̂������ł��B$
�@�� TAB�L�[�����񂩉������A�}�ʃE�C���h�E����x�N���b�N���āA�G�f�B�b�g�R���g���[���Ƀt�H�[�J�X��������Ԃɂ��Ă��������B$
$
2.%ObjectWindow%�ŁA�I�u�W�F�N�g�̖��O�Ȃǂ�ҏW���Ă��鎞�ɁACtrl+C�ACtrl+V���������Ȃ��B$
�@�� �}�E�X�J�[�\���̈ʒu�ɂ���āA�V���[�g�J�b�g�L�[�̓��삪�قȂ�܂��B$
�@�� �e�L�X�g�ҏW����Ƃ��͂��̃R���g���[��������E�C���h�E�̏�Ƀ}�E�X�J�[�\�����ړ����Ă����Ă�������$
$

@S2@Q@Num@@FE@
|QQ ���[�N�X�y�[�X�̕ύX�����܂������Ȃ�
$
A�@<s>���[�N�X�y�[�X�̕ύX���A�c�[���o�[�̈ꕔ�Ȃǂ��\������Ȃ����Ƃ�����܂��B$
��x�h�b�L���O�������ăh�b�L���O���Ȃ������AMarbleCLAY���I�����āA�ēx�N�����Ă��������B$
�܂��A���݂̃o�[�W�����ł̓��[�N�X�y�[�X�ύX�����Ă�%Window%�̃h�b�L���O��Ԃ͕ύX����܂���B$</s>
$
<B>�F�X��肪�������̂ŁA��5.1�Ń��[�N�X�y�[�X�̕ύX�@�\���폜���܂����B���悢�`�̎������������ł�</B>
$$

@S2@Q@Num@@FE@
|QQ ��ʂɃS�~���c��
$
A�@���̃o�O�̏C���͌�񂵂ɂȂ��Ă��܂��B�K���u��ʂ̍X�V�v���s���ăS�~�������Ă��������B$
$

$
@S2@Q@Num@@FE@
|QQ Mac��Linux�Ή���MarbleCLAY�͍쐬�ł��Ȃ��H
$
A�@�J��������Kylix��p����Linux�ɈڐA�������ł������AWin32/Delphi��Linux/Kylix�Ƃ̊ԂŌ݊����������@�\�𑽂��g���Ă��邽�߁A��Ɨʂ��c��ɂȂ邽�ߎ���߂܂����B$
�܂�Mac�ɂ�Delphi���������߁A�ȒP�ɈڐA���邱�Ƃ͕s�\�ł��B$


@Footer

[] ---------------------------------------------------------------------------------

@Header
:VideoCard �r�f�I�J�[�h�Ƃ̑���
$
MarbleCLAY�ł�OpenGL�ł̕`����s���Ă��邽�߁A���g���̃r�f�I�J�[�h�ɂ���Ă͖�肪��������\��������܂��B$
$
�����̖��̓r�f�I�J�[�h�̃h���C�o���ŐV�̂��̂ɍX�V���邱�Ƃŉ������邱�Ƃ��ł��܂����A�ȉ��Ɏ�v�ȃr�f�I�J�[�h/�`�b�v�Ɋւ���
�����L�q���Ă����܂��̂ŁA�Q�l�ɂ��Ă��������B$
$


|ATI ATI-RADEON
Radeon9700Pro, Radeon X800pro�ŊJ��/����m�F���s���Ă��܂��B$
���̂��߁A�����Ƃ�MarbleCLAY�ɓK�����r�f�I�J�[�h�ł������X�ꕔ�̖ʂ̃}�e���A��������邱�Ƃ�����܂��B$
$

|NVIDIA NVIDIA-GeForce
$
�ŋ�(2005/2)�̃J�[�h�̏ꍇ�A�h���C�o�̃o�[�W�����ɂ���Ė�肪�������邱�Ƃ�����܂��B$
��肪���������ꍇ�A�Â��o�[�W�����̃h���C�o���������ANVZONE���ōŐV�̃��h���C�o����肵�Ď����Ă݂Ă��������B$
$
�Q�l�܂łɓ����œ���m�F�̂Ƃ�Ă�������ȉ��ɋL���܂��B(PCI Express�̃J�[�h��GeForce6600�n���̃��|�[�g�𒸂���Ƃ��肪�����ł�)$
$
GeForceFX5700Ultra/Windows2000/ForceWare61.77 : ���Ȃ�$
GeForce6800(����)AGP/WndowsXP/ForceWare67.66  : beta5.7�ȍ~�őΉ����܂�$

|PowerVR PowerVR
PowerVR(KYRO)�ɂāAOpenGL�̔j���\���Ⓒ�_�\���A�}�j�s�����[�^�̃n���h���\�����ł��Ȃ�
�Ƃ������|�[�g�����������Ă��܂��B$
�����KYRO���T�C�Y1�ȊO�̒��_�⃉�C����`��ł��Ȃ��Ƃ������������̂悤�ł��B�r�f�I�J�[�h�ŗL�̖��̂��߉����͓���ł��B$
$
���̑��A$
�ȈՑΏ̉��A�Ώ̐}�`�̍쐬�A�ȂǂőΏ̐}�`���쐬���Ȗʉ����s���Ă���I�u�W�F�N�g���A����Ƃ͕ʂ̃I�u�W�F�N�g��I��ΏۂƂ��铙���Ĕ�ҏW�ΏۂƂ�����Ԃ�OpenGL�A�B�ʏ���1or2�A�����\���Ńv���r���[����ƁAMarbleCLAY�̕\�������ɏd���Ȃ�B�Ƃ����񍐂����������Ă���܂��B$
�������PowerVR���������Ƃ͒f��ł��Ă��܂��񂪁A�ʂ̊�(GeForce2MX)�œ�����Ƃ��s���ƍČ��ł��Ȃ��Ƃ������ƂȂ̂�PowerVR�������ł���\�����������ł��B$
$
|Intel Intel
Intel�̃`�b�v�Z�b�g�����̃r�f�I(855M,830M��)�ɂ�OpenGL�`��̕s����|�[�g�����������Ă��܂����A
�ŐV�̃h���C�o�[�ɍX�V���邱�Ƃŉ������ꂽ�悤�ł��B$
$
�r�f�I�@�\������Intel�̃`�b�v�Z�b�g�����g���̏ꍇ�ŕs���������́A�ŐV�̃h���C�o�[�����������������B$
$

|Other ���̑�
���̑��̃r�f�I�J�[�h�ł̓���󋵂̃��|�[�g�����肢���܂��B$


@Footer

[] ---------------------------------------------------------------------------------

@Header
:�ӎ�
$
$
!mainend
$
���e�X�g�ɋ��͂��Ă������������X�Ɋ��ӂ��܂��B$
$
$
�o�O���|�[�g����<A HREF="mailto:esv@nifty.com">esv@nifty.com</A>�܂ł��肢���܂��B
���ׂȂ��̂ł����\�ł��̂ŁA��낵�����肢���܂��B$
$
<FONT SIZE="-2">
*�Ǘ��̓s����A�ʖ��̃A�h���X���g�p���Ă��܂����A���܂܂ł̂̃A�h���X���g�p�\�ł�*
</FONT>
@Footer

[AutoJump.html
:
#<HTML>
!autojump
#<FONT SIZE="+3" FACE="Lucida console" COLOR="#60A030"> MarbleCLAY</FONT>v0.2.15 (��5.1)<BR>
$
$
�g�s�b�N���������Ă��܂��B
$
$
#</BODY></HTML>
