!Index1 '<FONT SIZE="+0" ><B>%s</B></FONT>'
!Index2 '<FONT SIZE="+0" >%s</FONT>'
!ShortCut MarbleCLAY.ini SHORTCUT
!ActionString Japanese.str

!Def title '<FONT SIZE="4" COLOR="#0"> MarbleCLAY </FONT>v0.2.39 beta5.7'
!Def Footer '<BR><BR><CENTER><TABLE FRAME=BOX CELLSPACING=0 COLS=1 RULES=GROUPS BORDER=1><COLGROUP><COL WIDTH=500></COLGROUP><TBODY><TR><TD><FONT SIZE="2">@prev@|@next@</FONT><CENTER>@page@</CENTER></TD></TR></TBODY><TBODY><TR><TD BGCOLOR="#94BD5E"><FONT SIZE="1" COLOR="#FFFFFF">Copyright(C)1998-2003 TakeshiMaeda / ESCARGOT Visualwares</FONT></TBODY></TABLE></CENTER></FONT></FONT></BODY></HTML>'
!Def Header '<HTML><BODY BGCOLOR="white" TEXT="black" LINK="#606080" VLINK="#707090" ALINK="red"><FONT FACE="Arial" SIZE="2"><FONT FACE="MS UI ゴシック"><CENTER><TABLE FRAME=BOX CELLSPACING=0 COLS=2 RULES=GROUPS BORDER=1><COLGROUP><COL WIDTH=300><COL WIDTH=200></COLGROUP><TBODY><TR><TD BGCOLOR="#94BD5E"><FONT SIZE="2" COLOR="#FFFFFF">ESCARGOT Visualwares</FONT></TD><TD BGCOLOR="#94BD5E"><FONT SIZE="1" COLOR="#FFFFFF">3D Polygon Modeller</FONT></TD></TR></TBODY><TBODY><TR><TD>@title@</TD><TD><FONT SIZE="2">@prev@|@next@</FONT></TD></TR></TBODY></TABLE></CENTER>'

!Def S2 '<FONT SIZE="2"><B>'
!Def FE '</B></FONT>'
!Def no_sub '<IMG SRC="../HelpImg/no_sub.gif" BORDER=0>'
!Def sub_open '<IMG SRC="../HelpImg/sub_open.gif" BORDER=0>'
!Def sub_close '<IMG SRC="../HelpImg/sub_close.gif" BORDER=0>'
!Def sub_item '<IMG SRC="../HelpImg/sub_item.gif" BORDER=0>'
!Def page dummy
!Def prev 前へ
!Def next 次へ

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
##<FONT SIZE="1" FACE="MS UI ゴシック">
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
\Intro 1.イントロダクション
$
$
<CENTER>
@#overview.JPG@
</CENTER>
$
:Overview 特徴
・カーソル位置の頂点・エッジ・ポリゴンを%HighlightElement%することによる、確実な頂点の選択。$
・カーソル付近を拡大表示する%3DLoope%を使った、確実な頂点の選択。$
・UV情報に操作空間用のD(Dummy)成分を加え、3次元で操作できるUV編集。$
・任意のポリゴンに指定できる、対称図形編集。(%SelectiveMirror%機能)$
・%QuickArea%を用いた、簡単な視点操作$
・%QuickTool%:Shift+Ctrl+Altキーのコンビネーションショートカットのカスタマイズによる効率的な操作$
・ラインを引いていく形式のモデリング。%FacetTool%$
・４角、３角ポリゴンに対する%ChangeSplineSurf%。(%SplineSurf%同士の連続性がいまいちですが最終的に%FreezeSpline%するのであまり問題ないと考えています。)$
・%vertexColision% 頂点編集の際、 他のポリゴンと衝突検知を行います。$
・(株)WacomのSmartScrollデバイスに対応$
・<A HREF="http://www2.tomato.ne.jp/~leo/rok/rrk/" target="_top">逆光アルゴリズム</A>を採用し、少ないステップで思い通りの位置に頂点を移動することができるようになりました。[beta5.2e]$
・プラグイン機能、スクリプト機能の追加[5.4]$
・右クリック動作のカスタマイズ[5.5]$
・%SimpleBone%機能$
$
$
:Introduction 最初に
MarbleCLAYは、3Dポリゴンモデラーです。 $
$
MarbleCLAYはフリーウェアです。作者はモノグサな性格であり、シェア化するメリットが今のところ見出せないので、シェア化する可能性は低いです。$
(万一、シェア化することがあっても、現時点で登録してくださった方には、無料で使っていただけるようにする予定です。 )$
$
特に、アイデアの提供やバグのレポートをしてくださった方には必ず無料提供します。
但し、「何々のソフトと全く同じ機能がほしい」等々の要望は、あまり嬉しく
思わないということをお断りしておきます。できれば、「～をするために役立つような機能がほしい。」
「～するのが不便」等、具体的に何をするための機能が欲しいかを明記していただければ、こちらで
アイデアを盛り込む余地があるのでやりがいを感じることができます。$
$
MarbleCLAYの著作権はTakeshi Maedaが保有します。 MarbleCLAYを使用したことによって起きる、直接的、
間接的な損害について、著作者は一切の責任を負いません。 重要なファイルは必ずバックアップを
取った上で、ご使用ください。$
$
MarbleCLAYはウイルス感染していないことを保証しません。 必ずワクチンソフトを用いてスキャンした
後に実行してください。(ワクチンソフト、およびパターンファイルは最新のものを利用してください)$
$
MarbleCLAYの最新版は作者の<A HREF="http://homepage3.nifty.com/escargot">Webサイト</A>からダウンロードすることができます。$
#バグレポート等は、<A HREF="mailto:esv@nifty.com">作者</A>までメールでお願いします。
$
$
曲面化、対称図形編集など、今更と思われるかもしれません。しかし、頂点選択のやりやすさでは、他のどんな
ソフトにも負けていないと自負しています。だまされたと思ってぜひ使ってみてください。->%HowTo%$
$
$
:Registration 登録
本バージョンはフリーで公開していますが、βテストという性質上、MCL形式(MarbleCLAY専用形式)での保存に制限(1オブジェクト<FONT COLOR="#FF8080">10000</FONT>ポリゴンまで)がかかっていますが$
その他の形式でのエクスポートや、ファイルの入力には制限がありませんし、 その他の機能にも一切制限はかかっていませんので、事実上無制限に使用することが出来ます。$
$
β5.6以降は<FONT COLOR="#FF8080">安定版をめざすための公開</FONT>です、できればダウンロードしてすぐには登録せずに、ある程度のオブジェクトを作ってみてバグが見つかるかどうか試してみてください。$
もしバグが見つかったら、そのバグの症状を下の登録情報に書き加えて登録メールを出してください。バグの発生条件がわからなくてもかまいません、どのようなバグが発生するのかを
把握するために必要な情報ですので、些細なバグでもかまいませんのでよろしくお願いします。(バグが見つからない場合は、記入なしでもかまいません)$
$
v1最終安定版は登録不要にするつもりです。バグのあるソフトを使うことにためらいがある方はv1.0をお待ちください。$
$
$
登録方法：$

以下の情報を記したメールを<A HREF="mailto:esv@nifty.com">esv@nifty.com</A>までお送りください。$

折り返し、 制限解除のためのキーをお送りします。 制限解除することで作業途中のデータを簡単に保存することが
出来るようになります。$
(全て記入する必要はありません。わかる範囲だけで良いです)$
$
件名：MarbleCLAY登録 $
$
1.使用OS (例：WindowsXP home)$
2.使用CPU (例：AMD Athron 1.4GHz)$
3.メモリ容量 (例：512MB)$
4.ビデオカード (例：ATI RADEON 9700PRO)$
5.使用している3Dソフト (例：Carrara2)$
6.InternetExplorerのバージョン(IE6sp1)$
7.MarbleCLAYを知った場所$
8.MarbleCLAYが誤動作したなら、その症状と状況。(わかる範囲で出来るだけ詳しく)$
9.要望・コメント$
$
$
$
登録は無料です。 将来のVersionではシェア化するかもしれませんが(今の所予定無し)、登録して頂いた方には開発が
続く限り無料で提供します。$
$
:ModifyHistory 変更履歴
2004/11/29-2005/2/13: β5.7対応$
%Introduction%、%Registration%、%EdgeSel%、%ObjectSel%、%EditDelete%、 %EditDeleteEx%、%BeltSel%、
%ExtrudeTool%、%FacetFlowTool%、
%PartsMenu%、%SimpleBone%、%BoneDrawTool%、%Manipulator%、%Plugin%、
%StripMakePoly%、%HighlightObject%、%BevelExtrude%、%Script%、
%MQOImporter%、%MQOExporter%、%UVEdit%、
%TestRenderRedQueen2%$

$
TODO:$
%ChangeAttribute%、%Gyakkou%、%QuickToolR%、%ObjWinDragDrop%
$
@Footer

[] ---------------------------------------------------------------------------------

@Header
\Refer 2.リファレンス

:layout レイアウト
|whole_layout 全体レイアウト
@#layout.jpg@$

上図は、MarbleCLAYを起動し、適当なオブジェクトを読み出した後、4面図表示モードにした状態のスクリーンショットです。
以降に各部位について詳細を記します。$
$
]lay_PersWay (1)透視図面
参照.%Pers_layout%$
編集中のオブジェクトを透視投影します。%QuickArea%を用いて視点を変更しながらモデリングを行っていきます。$
$
]lay_XYWay (2)XY図面
参照.%3Way_layout%$
オブジェクトをZ方向から平行投影します。$
$
]lay_YZWay (3)YZ図面
参照.%3Way_layout%$
オブジェクトをX方向から平行投影します。$
$
]lay_XZWay (4)XZ図面
参照.%3Way_layout%$
オブジェクトをY方向から平行投影します。$
$
]lay_QuickArea (5)クイックエリア
参照.%QuickArea%$
各図面の表示エリアの周囲には%QuickArea%と呼ばれる部分が存在します。この部分は直接目では確認できませんが、
この部分にカーソルを持っていくと、カーソル形状が変化しますので、それによって存在が確認できます。$
標準では、視点変更ツール等がこのエリアに設定されており、視点の回転、ズームイン/ズームアウトが簡単にできるようになっています(設定は環境設定ダイアログにて変更可能です。)$
$
]lay_EditTools (6)編集ツールバー
参照.%EditTools%$
@#tooloption.gif@@#movetool.gif@@#facetool.gif@@#pointtool.gif@@#polytool.gif@@#freehandtool.gif@@#knifetool.gif@@#claytool.gif@@#extrudetool.gif@@#rolltool.gif@@#scaletool.gif@
$
画面左下よりに配置されているツールバーは%EditTools%バーと呼ばれます。$
このバーには面、エッジの作成、回転など、モデリングによく使用するツールが納められています。$
$
ツールバーにはプラグイン機能によって追加されたツールアイコンが表示されていることがあります。$
$
]lay_ViewTools (7)視点ツールバー
参照.%ViewTools% $
@#viewoption.gif@@#zoomin.gif@@#zoomout.gif@@#handtool.gif@@#zoomtool.gif@@#viewrolltool.gif@@#areazoom.gif@$
ツールのうち、視点変更に関するツールが納められています。$
$

]lay_QuickTool (8)クイックツールバー
参照.%QuickTool%$
@#quicktooloption.gif@@#quickalt.gif@@#quickaltshift.gif@@#quickaltctrl.gif@@#quickctrlshift.gif@@#quickspace.gif@$
Shift,Ctrl,Alt,Spaceキーなどのコンビネーションで一時的に呼び出されるツールを
設定するためのBarです。 頻繁に使用するツール類を設定しておくと作業効率が上がります。$
$
]lay_SelectTools (9)選択ツールバー
参照.%SelectTools%$
@#seloption.gif@@#pointmode.gif@@#areamode.gif@@#magnetmode.gif@@#lassomode.gif@@#paintselmode.gif@$
面、エッジ、頂点などを選択するための選択ツールを指定します。$
標準状態では、選択ツールを設定すると、モデリングツールが自動的に移動ツールに
設定されます。$
$
]lay_SelectFilter (10)選択フィルターバー
参照.%SelectFilter%$
@#filteroption.gif@@#pointsel.gif@@#edgesel.gif@@#facesel.gif@@#relsel.gif@$
選択ツールで選択される対象を設定します。 頂点のみを選択したい場合等は、頂点ボタン
だけが押されている状態にします。$
$
]lay_PreviewStyle (11)プレビュー設定バー
参照.%PreviewStyle%$
@#previewoption.gif@@#wire.gif@@#shadewire.gif@@#flatwire.gif@@#flat.gif@@#texture.gif@@#smooth.gif@@#shader.gif@@#opengl.gif@$
モデリング時の画面表示モードを設定します。$
$
]lay_Property (12)プロパティーバー
参照.%PropertyWindowBar%$
 @#property.gif@$
現在選択中のオブジェクトに関する情報が表示するウインドウを開きます。$
$
]lay_Undo (13)アンドゥバー
参照.%UndoBar%$
@#undo.gif@@#redo.gif@$
$
]lay_Image (14)イメージバー
参照.%ImageBar%$
@#imgoption.gif@@#openimg.gif@@#copyimg.gif@@#raunchpaint.gif@@#pasteimg.gif@@#pentool.gif@$
$
]lay_WaySplit (15)図面分割バー
参照.%WaySplitBar%$
@#splitoption.gif@@#personly.gif@@#4way.gif@@#2way1.gif@@#2way2.gif@@#2way1uv.gif@@#2way2uv.gif@@#4wayuv1.gif@@#4wayuv2.gif@@#customway.gif@$
$

]lay_Status (16)ステータスバー
参照.%StatusBar%$
 @#statusbar.gif@$
ステータスを表示します。$
$
]lay_PanelTray (17)パネルトレイ
参照.%PanelTray%$
$
]lay_MainMenu (18)メインメニュー
参照.%MainMenu%$
@#mainmenu.gif@$
$
$
|Pers_layout 透視図レイアウト
@#pers.gif@$
透視図ではオブジェクトを様々な方向から眺めながら、編集作業を行うことが出来ます。$
オブジェクトが3次元情報を持つのに対して、スクリーンは2次元の空間であり、マウスカーソルは2次元の操作しかできないため、
足りない情報を補うために、編集作業を行う際に基準となる面を選択する必要があります。(4)～(10)のボタンは、その基準面(作業面とも呼ぶ)を選択する際に使用します。$
$
]lay_PersWorkArea (1)作業エリア 
この部分で、オブジェクトのポリゴンを編集します。$
$
]lay_PersQuickArea (2)クイックエリア 
参照.%QuickArea%$
$
]lay_PersMaximize (3)最大化/分割切り替え 
作業エリアの最大化、分割化の切り替えを行います。$
$
]lay_WorkPlanXY (4)XY平面を作業面
参照.%WorkPlaneIsXY%、%AboutWorkPlane%$
$
]lay_WorkPlanYZ (5)YZ平面を作業面
参照.%WorkPlaneIsYZ%、%AboutWorkPlane%$
$
]lay_WorkPlanXZ (6)XZ平面を作業面
参照.%WorkPlaneIsXZ%、%AboutWorkPlane%$
$
]lay_WorkPlanPoly (7)選択ポリゴンを作業面
参照.%WorkPlaneIsPoly%、%AboutWorkPlane%$
$
]lay_WorkPlanPoly (8)スクリーンを作業面
参照.%WorkPlaneIsScreen%、%AboutWorkPlane%$
$
]lay_WorkPlanAuto (9)作業面を自動選択
参照.%AutoWorkPlane% 、%AboutWorkPlane%$
$
]lay_WorkPlanGyakkou (10)補正付き頂点移動(逆光アルゴリズム)
参照.%GyakkouWorkPlane% 、%AboutWorkPlane%$
$

|3Way_layout 3面図レイアウト
@#xyview.jpg@$
三面図では、オブジェクトをX軸、Y軸、Z軸の方向から平行に眺めた視点で、編集作業を行います。$
透視図では、オブジェクト同士の位置関係が把握しにくい場合等に用います。三面図ではスクリーンに平行な面が作業面となるため、作業面を設定するボタンは存在しませんが、作業面をプラス方向から眺めるか、マイナス方向から眺めるかを選択するためのボタン(4)が存在します。$
$
]lay_3wayWorkArea (1)作業エリア 
%WorkArea%$
$
]lay_3wayQuickArea (2)クイックエリア 
%QuickArea%$
$
]lay_3wayMaximize (3)最大化/分割切り替え 
作業エリアの最大化、分割化の切り替えを行います。$

@Footer

[] ---------------------------------------------------------------------------------

@Header
$
:MainMenu メインメニュー
%FileMenu% %EditMenu% %PartMenu% %MeshMenu% %MirrorMenu%$
 %ImageMenu% %ViewMenu% %OptionMenu% %WindowMenu% %HelpMenu%$
$
|FileMenu Fileメニュー

]FileNew 新規 &actNew
新しいドキュメントを作成します。$
$
]FileOpen 新規 &actFileOpen
ドキュメントファイルを開きます。$
$
]FileSave 新規 &actFileSave
作業中のドキュメントファイルを上書き保存します。$
$
]FileSaveAs 新規 &actFileSaveAs
作業中のドキュメントファイルに別のファイル名をつけて保存します。$
$
]FileImport 新規 &actImport
3D形式のファイルからオブジェクトを読み込み、ドキュメントに追加します。$
$
]FileExport 新規 &actExport
選択中のオブジェクトを様々な種類の3D形式でファイルに書き出します。$
$
]FileExit A &actExit
MarbleCLAYを終了します。$
$
$
|EditMenu Editメニュー

]EditUndo A &actUndo
一つ前の操作を取り消します。$
$
]EditRedo A &actRedo
取り消した操作をもう一度やり直します。$
$
]EditBreak A &actBreak
現在選択中のツールを一つ前の状態に戻します。$
例えば、%FacetTool%モードの時、線を引いている途中で%EditBreak% をすると、
線を引くのを中止します。 その状態で、もう一度%EditBreak% すると、%MoveTool%
モードに戻ります。$
%EditBreak%キーを適当に数回たたくと、必ず%MoveTool%に戻るようになっています。$
$
]EditCut A &actCut
選択した要素をクリップボードにコピーした後で、削除します。$
$
]EditCopy A &actCopy
選択した要素をクリップボードにコピーします。$
$
]EditPaste A &actPaste
データをクリップボードから作業中のオブジェクト内へペーストします$
$
]EditDelete A &actDelete
選択した要素を削除します。$
・面を選択している場合は、その面のみを削除。$
・エッジを選択している場合は、エッジとそのエッジで構成している面も削除します。$
・頂点を選択したいる場合は、頂点と、その頂点で構成しているエッジ、面も削除します。$
$
%SelectRect%を行った面郡を削除する場合、意図しない面が削除されることがある(エッジや頂点の削除につられて面も削除される)ため、
%EditDeleteEx%を使ったほうが安全に削除作業が行えます。$
$
]EditDeleteEx A &actDeleteEx
選択した要素を特殊削除します。$
・１つもしくは、２つのエッジを持つ頂点を特殊削除すると、頂点を削除して、その２つのエッジを一つの
エッジに合成します。 エッジ上に打った頂点を削除したい場合に使用します。$
・エッジを選択している場合は、そのエッジを半確定エッジにします。$
$
・半確定エッジを選択している場合、そのエッジで構成される２つの面が両方とも３（４）角形の場合、２つの面を
一つの四角形に合成します。２つのポリゴンを一つの４角形に変換したい場合に使用します$
$
・面と複数の頂点、エッジを同時に特殊削除した場合、選択されていない面が含まれているエッジや頂点を削除しません。$
普通に%EditDelete%を行うよりも、安全にエッジや頂点を削除できます。$
$
上記の条件に合致しない場合、何もしません。$
]EditDeleteObject オブジェクト削除 &actDeleteObject
%ObjectWindow%で選択中のオブジェクトを削除します。$
$
]EditSubTool ツール→ &actTool
%EditTools%を参照してください。$
$
]EditSubSelTool 選択ツール→ &actSelTool
%SelectTools%を参照してください。$
$

]EditSubWorkplane 作業面→ &actWorkplane
]]WorkPlaneIsXY XY平面を作業面にする &actWorkXY
XY平面を%AboutWorkPlane%に設定します。$
]]WorkPlaneIsYZ YZ平面を作業面にする &actWorkYZ
YZ平面を%AboutWorkPlane%に設定します。$
]]WorkPlaneIsXZ XZ平面を作業面にする &actWorkXZ
XZ平面を%AboutWorkPlane%に設定します。$

]]WorkPlaneIsScreen スクリーン平面を作業面にする &actWorkScreen
現在のスクリーンと平行した面を%AboutWorkPlane%に設定します。$

]]WorkPlaneIsPoly 選択ポリゴンを作業面にする &actWorkPoly
選択ポリゴンと平行した面を%AboutWorkPlane%にする。$

]]AutoWorkPlane 作業面を自動設定 &actWorkAuto
視点から見て、もっとも適した面を%AboutWorkPlane%に設定します。$
バグがあるため、正しい作業面が設定されない場合がありますが、その時には
視点を少し変更してやればうまく行く可能性があります。$

]]GyakkouWorkPlane 位置補正付き頂点移動 &actWorkGyakkou
過去の視点を利用して、頂点等を移動します。$
このモードした上で、視点を変更しながら頂点を移動させることで、今までよりも少ないステップ(最小二回)で頂点を目的の位置付近に移動させることが可能になります。$

(※この機能には<A HREF="http://www2.tomato.ne.jp/~leo/rok/rrk/" target="_top">Gyakkouアルゴリズム</A>を採用しています)$


]EditSelAll A &actSelectAll
カレントのオブジェクトを全て選択することが出来ます。

]EditUnSel A &actUnSelect
選択を解除します。

]EditSelInv A &actSelectInverse
選択を反転します。

]EditSelDopel A &actSelectDopelEdge
同じ頂点セットをもつ複数のエッジがある場合、 どちらか一方のエッジを選択します。$
RDS出力時など、 多重エッジを認めないファイルフォーマットに出力する場合、最初に
このコマンドで多重エッジを選択したあと、%EditDelete%を行って多重エッジを除去してください。$
(多くの場合、形状が少し変化してしまいますので手作業で修正が必要です)$
$
]SelectSameMaterial 同じカラーを選択 &actSelectSameMaterial
現在選択している面と同じカラー属性で、且つ、連続している面を選択します。$

]EditSelSingle A &actSelectSingleEdge
面を持たない単独のエッジを選択します。$
$
]EditSel2Tri A &actSelect2TrigonEdge
２つの三角面を共有しているエッジを選択します。ただし、ここで選択されるのは２つの三角面を
結合した形が四角形に近い形状になる物だけです。$
このコマンドを実行したあと、%EditDeleteEx%を行うと、多数の三角面で構成されるオブジェクトを
四角面で構成されるオブジェクトにすることができます。$
ただし、簡単なアルゴリズムを使用しているため、見た目には四角面になりそうな物を選択できない
ことが多々あります。$
$
]EditSelToTemp A &actSelectToTemp
選択されている要素を、仮選択と呼ばれる状態にします。$
仮選択状態は、%MeshArrayCopy%機能等で使われます。$
$
]EditTempToSel A &actTempToSelect
仮選択状態の要素を選択状態に戻します。$

$
|PartMenu Partメニュー
$
]ImportParts パーツを追加 &actImportParts
保存している別の.mclファイルをパーツとしてドキュメントに読み込みます。$
$
]FreezePart パーツを固定 &actFreezeParts
選択しているパーツをポリゴンメッシュとして実体化します。$
$
$
|MeshMenu MeshModelingメニュー

]MeshPrimitive プリミティブ作成→ &actPrimitive

]]MeshPrimSphere A &actPrimSphere
分割数の設定をし、球を作成します。$
$
]]MeshPrimSquare A &actPrimSquare
分割数の設定、頂点やエッジを鋭くする設定を行い、立方体を作成します。$
$
]]MeshPrimCylinder A &actPrimCylinder
未実装
$
]]MeshPrimCorn 三角錐 &actPrimCorn
未実装
$
]]MeshPrimDonut ドーナッツ &actDonut
未実装
$
]]MeshPrimPlane 平面 &actPlane
未実装
$
]MeshLathe A &actLathe
任意の線形をアウトラインとした回転体を生成します。$
$
%FacetTool%、%PolyLineTool%、%FreehandLineTool%等で外形線を描き、その線形を選択後、
%MeshMenu%->%MeshLathe%を実行し、分割数を入力すると、Z軸を中心として指定した
線形状を外形とした回転体が生成されます。$
$
本来は、後から外形線を変更した場合に回転体の形状がインタラクティブに変形する
ようなものを考えていましたが、とりあえずそれは後回しにして、このような形での実装と
しました。$
よって、この先ユーザーインターフェイスが変更になる可能性があります。$
$
]MeshColision 衝突検知→ &actColision
]]MeshVertexColisionDeform 頂点衝突検知-変形 &actVertexColision
各頂点毎に衝突検知を行います。 この操作の結果、 対象のオブジェクトが、他のオブジェクトに
押しつけられたような変形をすることになります。$
$
]]MeshVertexColisionMove 頂点衝突検知-移動 &actVertexColisionMove
各頂点毎に衝突検知を行いますが、 計算結果のうち、もっとも移動距離が少ない頂点に
あわせて「選択オブジェクト全体」を移動します。$
オブジェクト同士をぴったりと沿わせたい場合に使用します。$
$
]MeshEffectFilter エフェクトフィルター→ &actEffectFilter
]]MeshRelaxFilter リラックス &actEffectRelax
選択した頂点の位置を平均化します。$
オブジェクト表面に望まない凹凸が出来た場合に、その凹凸部分を選択して%@MeshRelaxFilter%を
実行すると、若干滑らかになります。 望みの滑らかさになるまで数回実行してください。$
$
鋭い頂点、鋭いエッジの設定が反映されるようになりました。(β4.6)$
$

]]MeshBumpyFilter バンピー &actEffectBumpy
選択した頂点の位置を乱れさせます。$
マグネット選択した頂点群に対して実行した場合、選択の強さに応じて乱れ具合が変化します。$

]MeshMakePolyAll 全てに面張り &actMakePolyAll
全てのエッジに対して、可能な限り面を張ります。$
$
]MeshMakePolySel 選択部分に面張り &actMakePolySel
選択したエッジで囲まれている部分だけに面を張ります。$
$
]MeshPolySeparate 面の分離 &actPolySeparate
選択した面を、ポリメッシュから分離します。$
$

]MeshPolySeparateByEdge エッジで分離 &actEdgeSeparate
]MeshTriangratePoly 三角分割 &actPolyTriangle

]MeshSubDivide 再分割 &actPolySubdivide
選択した面を、再分割します。$
$
@#subdivide.jpg@
$
アルゴリズムがあまり良くないため、細かく分割していくと形状にうねりが生じます。$
<B>*β4.6にてアルゴリズム改良。多少はましになったと思います</B>$
<B>鋭い頂点、鋭いエッジの設定が反映されるようになりました。(β4.6)</B>$
$
]MeshFlipPolygon ポリゴン反転 &actPolyFlip
選択ポリゴンを反転します。$

]MeshAdjustPolygon ポリゴンの向きを揃える &actPolyAdjust
選択ポリゴンに繋がっている全ての面の向きを揃えます。$

]MeshBooleanCut ブーリアンカット &actBooleanCut
二つのメッシュ間の交線を求め、そこでメッシュをカットします。$
参照.%BooleanCut%$

]MeshPush 押し出し &actPolyPushByFig
選択面を、押し出します$
<B>平行押し出し</B> では、面の法線ベクトル方向に、垂直に押し出しが行われます。$
<B>頂点の法線ベクトルにしたがって押し出し</B> では、各頂点を法線ベクトルの向きに押し出します。$
その他の押し出し方法は、まだ実装していません。$

]MeshDuplicate 複製 &actDuplicate
選択要素を、複製します。$
指定面に対して対称に複製する場合、 <B>溶接</B>にチェックを入れておくと、接合部分を
溶接します。(現在は不安定です)$

]MeshArrayCopy 配列コピー &actArrayDuplicate
選択要素を連続して複製します。$
β5.1では、選択要素を、仮選択ラインに沿って複製する機能のみが実装されています。$
$

]MeshWeld 溶接 &actWeld
選択頂点を溶接します。$
<B>UVビューで実行した場合にUV頂点が溶接できるようになりました beta5.3</B>$
$
<B>溶接する頂点の距離</B> に設定した距離よりも接近している頂点が溶接されます。$
<B>選択した頂点を全て溶接</B> にチェックを入れると、距離に関係なく選択した頂点が一点にまとめられます。$
$

]MeshMoveToWorkPlane 選択面を作業面に移動 &actMoveToWorkPlane
選択要素を、作業面に移動します。$
%MeshDuplicate%で、対称に複製する前に、接合面になる部分の頂点を作業面に移動しておくと、確実に
%MeshWeld%することができます。$

]MeshFlatPolygon 面を平面化する &actPolyFlat
選択面を平面化します。$
まだ、不完全です。$
$
]HideSelected 選択部を隠す &actPolyHide
選択している要素を隠します(非表示にする)$
$

]HideUnSelected 非選択部を隠す &actPolyUnSelectHide
選択している部分以外の要素を隠します(非表示にする)$
$

]UnHide 隠した部分を表示 &actPolyUnHide
%HideSelected%や%HideUnSelected%de隠した部分を再度表示します。$
$

]Naming 名前をつける &actPolyNaming
選択した要素に名前をつけます。$
$

]ColorChange 選択部の色を変える &actPolyChangeColor
選択されている面のマテリアルを選択中のマテリアルで置き換えます。$
$

]PickMaterial マテリアルを拾う &actPickMaterial
選択面のマテリアルを拾うことができます。$
$


$
|MirrorMenu Mirror/Curveメニュー

]AllMirror 簡易対称 &actAllMirror

現在のオブジェクトを簡易対象モードにします。$
このモードでは、オブジェクト内の全ての要素を対称化します。単純な対象図形を生成する場合はこの機能を使ってください。$
$
対称部分と非対称部分が混在するような形状を生成したい場合は、%AllMirror%を解除して、%MirrorMakeMirror%を使用してください。$
$
cf.%SelectiveMirror%
$
]MirrorMakeMirror 対称図形生成 &actMirror

選択されている面を、XZ平面に対称に対称編集します。$
(現在はXZ平面が選ばれていますが、将来的に変更可能にします。RDS的な操作を
踏襲するならYZ平面のほうが良いかもしれませんね)$
一度、対称図形を生成すると、以降その面につなげて生成した面は、自動的に対象編集されます。$
対称図形生成時にXZ平面に存在していた頂点は、元の面と対称面の間で共有され、XZ平面上
から離すことが出来なくなります。$
$
現時点では、不完全な機能であるため、対象編集中の面に対して、移動、回転、拡大縮小以外の
編集を行うと、対称図形が削除されます。$
この場合、面を再度選択して%MirrorMakeMirror%することで、対称図形を再生成することができます。$
対称図形を再生成した場合に、正しい対称図形にならないことがありますが、その場合は
一度%MirrorUnMirror%を行って対象編集を解除した後で、もう一度%MirrorMakeMirror%して対処してください。$
$
cf.%SelectiveMirror%
$
]MirrorSelectUnMirror 選択面の対称解除 &actSelectUnMirror
選択部分が対称図形を持っている場合、対称化を解除します。$
$

]MirrorSelectFreezMirror 選択面の対称固定 &actSelectFreezMirror
選択部分が対称図形を持っている場合、対称を固定します。$
対称を固定された図形は、それぞれ別個に編集可能ですが、もういちど%MirrorMakeMirror%を行うと
対称編集状態に戻ります。$
$

]MirrorUnMirror 対称解除 &actUnMirror

対称編集を解除します。$
$
%AllMirror%の場合、モードが解除されます。$
$
]MirrorFreezMirror 対称図形を固定 &actFreezMirror

対称図形を固定して対称編集を解除します。$
一度固定した対象図形は、以降通常の面と同じように選択・編集が可能になります。$
$
%AllMirror%の場合、モードが解除されます。$
$

]ChangeSplineSurf 曲面化 &actSplineMesh

３角形、もしくは４角形ポリゴンで構成されるオブジェクトをBezierパッチ曲面化します。$
既に曲面化されているオブジェクトに対して実行すると、曲面が解除されます。$
$
若干強引な方法でパッチ同士を接続しているため、曲面としての連続性は保証されません。$
$
β版では、まれに曲面が異常生成されることがあります。その場合はもう一度
%ChangeSplineSurf%を行って曲面を解除してから、もう一度曲面化を行ってください。$
$
@#spline.jpg@$
左が%ChangeSplineSurf%で生成された曲面。右が%ChangeSplinePatch%で生成された曲面。$
$
cf.%SplineSurf%
$
]ChangeSplinePatch 曲面化 &actSplinePatch
従来型の%ChangeSplineSurf%とは異なり、制御点を通る曲面が生成されます。$
$
cf.%SplineSurf%
$
]FreezeSpline 曲面のポリゴン化 &actFreezSpline

Bezierパッチ曲面化したオブジェクトを指定の分割数でポリゴン化することで、レンダリングソフトウェア(RDS等)へ
持ちこむ準備をします。 曲面化したオブジェクトをポリゴン化しないでレンダリングソフトに持ちこんだ場合、
曲面化前の形状でレンダリングされてしまいます。$
$
但し、MegaPOVやRedqueen形式等、一部の形式では自動的にポリゴンに分割されるため、この操作は不要の場合があります。(分割数は環境設定ダイアログで設定できます)$

@#freezeSpline.jpg@

]SharpEdge エッジを鋭くする &actEdgeSharp

このエッジをまたがる部分で折れ曲がるような曲面を得ることが出来ます。$
RayDreamStudio形式で出力した場合には、メッシュモデラーのエッジを鋭くする機能を使用したのと同等の
効果がえられます。$
$
<B>β4.7から頂点のウェイトに対応しましたが、この機能では頂点へのウェイトとは違う結果が得られます$
状況によって使い分けてください</B>

$
$

]UnSharpEdge エッジを滑らかにする &actEdgeSmooth
%SharpEdge%と逆の動作をします。$


]SharpVertex 頂点を鋭くする &actVertexSharp

曲面化時に尖らす頂点を指定します。 $

<B>β4.7から頂点のウェイトに対応したため、この機能の動作が変更されました。$
β4.7以降でこのコマンドを実行すると、ウエイトを最大にした場合と同じ効果がえられます</B>
$
$
鋭い頂点は%MeshRelaxFilter%、%MeshSubdivide%を行っても移動しません。
$
$


]UnSharpVertex 頂点を滑らかにする &actVertexSmooth
%SharpVertex%と逆の動作をします。$
$
<B>β4.7以降でこのコマンドを実行すると、ウエイトを0にした場合と同じ効果が得られます</B>
$
$
@#sharpedge.jpg@
$
左から、 通常の曲面化オブジェクト、 上面の２つのエッジを鋭くしたオブジェクト、 さらに上面の２頂点を尖らせたオブジェクトの順です。$
$
$
*SplineWeight 曲面化時のウェイト
<B>β4.7</B>
]SplineWeightUp 頂点ウェイト増加 &actSplineWeightP
生成される曲面を、頂点に近づけます。$



]SplineWeightDown 頂点ウェイト減少 &actSplineWeightM
生成される曲面を、頂点から遠ざけます。$
ウェイトを下げすぎると、少しいびつな形状になります。$
$
$
<B>メニューによる操作の他にマウス操作によるウェイト変更も可能です。$
%MoveTool%使い、ウェイトを変更したい部分を選択し、その部分を右方向に右ドラッグすると、ウェイトが増加し、
左方向に右ドラッグするとウェイトが減少します。$
この操作方法はテスト段階であるため将来的に別の操作方法に変更される可能性があります</B>
$
$
@#weight.gif@
$
上段左から、 通常の曲面化オブジェクト、各頂点のウェイトを少なくしたオブジェクト$
下段左から、各頂点のウェイトを大きくしたオブジェクト、複数の頂点のウェイトを最大にしたオブジェクトです。$
$
|PartsMenu Parts/Boneメニュー
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

|ImageMenu UV/Imageメニュー
]UVGenerate UV &actUVMapMake

選択した面に対してUV値を割り当てます。$
$
]UVBurn 焼付け &actImgUV
UVテンプレートを作成し、UVメッシュを焼付けます。外部ペイントソフトでテクスチャを描く際にテンプレートとして用います。$
$
]ImageCopyToClipborad クリップボードにコピー &actImgCopy
%ObjectWindow%で選択中の画像をクリップボードにコピーする$
$ 
]ImagePasteFromClipborad クリップボードにコピー &actImgPaste
%ObjectWindow%で選択中のテンプレートへクリップボードから画像をペーストする$

$
]ImageTempSize テンプレートサイズ変更 &actImgSizeAndPos
%ObjectWindow%で選択されているテンプレートの
位置とサイズを変更するダイアログが表示されます。 $

]ImageTempHalfTone テンプレート淡色表示 &actImghalftone
%ObjectWindow%で選択されているテンプレート画像のコントラストを下げます。
テンプレートの色が濃すぎてオブジェクトが確認しずらい時に使用してください。$

]ImageTempOpen テンプレートに画像読みこみ &actImgOpen
テンプレートを選択し、Image->画像を読みこむを実行すると、テンプレート画像をロードすることができます。$
$
]ImageModelingTemplate モデリングテンプレート &actModelingTemplate
]]ImageImportToXY XY平面に読み込み &actImageXY
]]ImageImportToYZ YZ平面に読み込み &actImageYZ
]]ImageImportToZX ZX平面に読み込み &actImageZX
$
|ViewMenu Viewメニュー

]ViewRefresh 画面更新 &actRefresh
現在のVersionでは、操作をしていくうちに画面にゴミが残ってしまいます。
適当なところで、%ViewRefresh%を行って、画面を更新してください。$

]Grid グリッド設定 &actGridSet
]GridSnap グリッドスナップ &actGridOnOff
作業面をXY,YZ,XZのいずれかに設定している場合、カーソル移動をグリッド単位に限定します。$
$
|OptionMenu Optionメニュー
$
|WindowMenu Windowメニュー
$
|HelpMenu Helpメニュー
@Footer

[] ---------------------------------------------------------------------------------
@Header

:ContextMenu コンテクストメニュー 
パースペクティブビュー、もしくは３面図上で、マウスの右ボタンをクリックし、そのままボタンを離すとコンテクストメニューが表示
されます。$
コンテクストメニューには、色々な項目が含まれており、将来的にはカスタマイズ可能にする予定ですが、
いくつか重要な項目が存在しますので、以下に説明します。$

]BreakPop 中止 &actBreak
  メインメニューの%EditBreak%と同じです。 ライン描画を中止したり、 標準の移動モードに戻したりします。$
  
]Enter 続行
  何も操作をせずに、メニューから抜けます。$
$
]CursorAt カーソル位置を現在の点に移動 &actCursorChange
通常、モデリング時には、%AboutWorkPlaneから一定距離離れた平面に平行して操作が
行われます。$
例えば、作業面から適当な距離だけ離れたところに平面を作成したい場合、
その距離の位置に存在する頂点の上にカーソルを持って行き、%CursorAt%を実行すると、
以降、カーソルは作業面からその距離分だけ離れます。 その状態で面を作成すると、
作業面から一定距離離れた面を作成することができます。$
逆に、カーソル位置が作業面から離れてしまっている状態で、作業面上に面を作りたい場合
には、頂点が存在しない場所で、%CursorAt%を実行すると、カーソルは作業面上を移動するようになります。$
言葉で説明するとややこしいですが、やってみれば、すぐに理解できると思います。$
$

]ViewAt ここを表示の中心にする &actViewCenter
カーソル位置を、表示の中心となる点(注視点)にします。$
$
]SelectRelated 接続点を選択 &actObjectSelect
カーソルの下にある要素に連続して接続されている要素を全て選択します。$
オブジェクト内の独立したパーツを選択するために使用します。 マウスの左ダブルクリックにも
割り当てられているため、通常はそちらを使用することが多いと思います。$

$
]ContextNaming1 選択部に名前をつける>
]]ContextNaming2 新規名称 &actNaming
選択している要素に新しく名前(ポリメッシュ名)をつけます。$
新しくつけた名称は%ObjectWindow%に表示されます。$
$
参照.%ObjectHandling%$

@Footer

[] ---------------------------------------------------------------------------------

@Header
:ToolBars ツールバー

|EditTools 編集ツール
@#tooloption.gif@@#movetool.gif@@#facetool.gif@@#pointtool.gif@@#polytool.gif@@#freehandtool.gif@@#knifetool.gif@@#claytool.gif@@#extrudetool.gif@@#rolltool.gif@@#scaletool.gif@@#longbonetool.gif@@#facetflowtool.gif@
$
$
]ToolOption ツールオプション
@#tooloption.gif@
各ツール固有の設定を行う%ToolOptionWindow%を表示します。%ToolOptionWindow%は標準では左の%PanelTray%内に表示されます。$
%ToolOptionWindow%は、各ツールのボタンを右クリックしても表示されます。$
$
]MoveTool 移動ツール &actEditMove movetool.gif
@#movetool.gif@
選択した頂点、エッジ、面の移動を行います。このツールを選択している状態で
%SelectTools%を用いて選択ツールを変更すると、%SelectRect%、
%SelectMagnet%、%SelectLasso%を行うことができます。$
%SelectMagnet%を選択している場合、 [%Smoothbend%]オプションが有効になります。
このスムースベンド「自動」にチェックを入れるか、ドラッグ中にCTRLキーを押すと、
頂点を平行移動ではなく、曲げ移動します。細長いオブジェクトの頂点編集時に効果的に働きます。$
$
]FacetTool 面生成ツール &actEditPolygn facetool.gif
@#facetool.gif@
線を引いていくことで面を生成します。ツールウインドウ%ToolOptionWindow%で面生成を「完全に自動」にしている
場合、４角形、もしくは３角形が構成された時点で自動的に面が生成されます。$
この場合、意図している場所とは違う面が生成されてしまう事があるため、「ユーザーが明示する」モードを
用意しています。このモードでは、ユーザーが４点、もしくは３点を連続してクリックした場合のみ、面が生成
されます。$
$
また、「ドラッグ＆ウェルド」にチェックがついている場合、頂点をドラッグして他の頂点の上に
もっていくと 頂点同士を溶接することができます(同一オブジェクト内の場合)。 異なるオブジェクト
間や、チェックをつけていない場合等は、頂点が同じ位置に移動するだけで溶接はされません。$
$
]AddPointTool 頂点追加ツール &ActEditAddPoint pointtool.gif
@#pointtool.gif@
既にあるエッジ上に、頂点を追加します。$
Ctrl+左クリック、もしくは右クリック(ツールウインドウ%ToolOptionWindow%で選択可能)で既にある頂点を
削除します。(右クリックには%ContextMenu%が割り当てられているため、混乱を
防ぐために、標準ではCtrl+左クリックに割り当てられています)$
$
]PolylineTool 折れ線ツール &actEditPolyline polytool.gif
@#polytool.gif@
面が生成されない事以外は%FacetTool%と同じです。$
$
]FreehandlineTool フリーハンド折れ線ツール &actEditFree freehandtool.gif
@#freehandtool.gif@
フリーハンドでラインを描画します。 モデリングの最初に、おおまかな外形を描く時に
使用します。 頂点が多くなりがちなので、%AddPointTool%を使って適当に頂点を削除
してください。$
$

]CutTool カットツール &actEditKnife knifetool.gif
@#knifetool.gif@
面、線をカットします。$
切断対象のオブジェクト上をドラッグすることで、オブジェクトをドラッグした直線で切断します。
オブジェクト上でマウスドラッグを終了した(マウスボタンを離した)場合、マウスボタンを離した
場所の面から連続している部分だけが切断されます。(オブジェクトの裏側には影響が無い)$
$
]ClayTool クレイツール &actEditClay claytool.gif
@#claytool.gif@
オブジェクトの表面を粘土のように変形させるツールです。$
滑らかに変形させるために、必要ならばオブジェクト表面を再分割します。変形する範囲は
%SelectMagnet%で指定されます。$
このツールで思い通りの形を作るのは、ほぼ不可能だと思いますが、 思いがけない形状を
作ることが出来るので、モデリング初期時のアイデア作りに役立つかもしれません。$
%MoveTool%と同様に、[%Smoothbend%]オプションが有効です。$
(このツールは実験中の機能です。 ボツになる可能性もあります)$
$
]ExtrudeTool 押し出しツール &actEditPush extrudetool.gif
選択ポリゴンを様々な形式で押し出します。$
押し出し形式はサブツールで決定され、サブツールは%ToolOptionWindow%もしくは、%ExtrudeTool%をクリックするか、ドラッグすることで表示されるメニューを用いて選択できます。$
$
@#extrudetool.gif@ 平行押し出し$
ポリゴンを選択した後、右方向にマウスを左ドラッグすると、ポリゴンの表側の方向に面が押し出されます。$
$
@#extrudetool_back.gif@ 裏面を残して押し出し$
ポリゴンを選択した後、右方向にマウスを左ドラッグすると、ポリゴンの表側の方向に面が押し出されます。更に、元々選択されていた面が残り、反転します。$
ポリゴンから箱状の形状を作成する際に利用します。$
$
@#extrudetool_bevel.gif@ べベル押し出し$
ポリゴンを選択した後、右方向にマウスを左ドラッグすると、ポリゴンの表側の方向に面が押し出されます。この時、新しい面は押し出されるにつれて小さくなります。$
$
@#extrudetool_move.gif@ 移動押し出し$
マウスの左ドラッグに応じてポリゴンの向きとは無関係に押し出されます。$
$
@#extrudetool_snap.gif@ スナップ押し出し$
新しい面は、元々選択していた面に張り付いた状態で作成されます。$
$
*BevelExtrude エッジべベル
@#extrudetool_beveledge.gif@ エッジべベル$
このサブツールは他のサブツールとは異なり、面ではなくエッジに作用します。エッジを選択し右方向にマウスを左ドラッグすると、エッジにベベルがかかります。$
$

$
*EdgeExtrude エッジ、頂点の押しだし
エッジの押し出し:$
β4.8から、エッジを押しだして面を作る機能に対応しました。また、エッジの押しだしを補佐するために
限定的ですが、頂点を押し出して面を作る機能もあります。詳しくは１－Step Tutorialを
参照してください。$
$
この機能はエッジベベル以外のツールが選ばれているときに有効です。$
$

]Roll2D 2D回転ツール &actEditRoll2D rolltool.gif
@#rolltool.gif@
選択部分を作業面に対して並行に回転させます。$
回転の中心を変更する場合、 回転の中心となる頂点をShift+クリックで選択してください。
回転の中心を選択の中心(デフォルト)に戻したい場合は、適当な面をShift+クリックで選択してください。$
$
]ScaleTool 拡大縮小ツール &actEditScale scaletool.gif
@#scaletool.gif@
選択部分を拡大縮小します。$
拡縮の中心を変更する場合、拡縮の中心となる頂点をShift+クリックで選択してください。
ドラッグ中にShiftキーを押すと、XYZ方向に等倍で拡大縮小を行います。$
$
]BoneDrawTool ボーン作成ツール &actToolPluginBoneDrawTool longbonetool.gif
ボーンを作成します。$
ボーンの種類はサブツールで決定され、サブツールは%ToolOptionWindow%もしくは、%BoneDrawTool%をクリックするか、ドラッグすることで表示されるメニューを用いて選択できます。$
$
@#longbonetool.gif@ ロングボーン$
直方体ボーンを作成します。マウスの左ドラッグでボーンの長さを変更し、左ボタンを押しながら右ボタンをドラッグすることで太さを変更します。$
$
@#shortbonetool.gif@ ショートボーン$
立方体ボーンを作成します。マウスの左ドラッグでボーンの大きさを変更します。$
$

]FacetFlowTool ファセットフローツール &actToolPluginFacetFlowTool facetflowtool.gif
@#facetflowtool.gif@ 面の流れを整える際に使用します。$
・四角面をクリックすると、面を二つの三角面に分割します$
・二つの三角面で共有されたエッジ(四角面の対角線とみなす)をクリックすると、対角線を反転します$
・反転した対角線をもう一度クリックすると、二つの三角面が一つの四角面に合成されます$
$
対角線の反転、面の合成、面の分割は%ToolOptionWindow%でON/OFFを設定できます。$

@Footer

[] ---------------------------------------------------------------------------------

@Header
|SelectTools 選択ツール
@#seloption.gif@@#pointmode.gif@@#areamode.gif@@#magnetmode.gif@@#lassomode.gif@@#paintselmode.gif@$

]SelectOption 選択オプション
@#seloption.gif@
各選択ツール固有の設定を行うウインドウ%SelectOptionWindow%を表示する$

]SelectPoint 一点選択 &actSelPoint pointmode.gif
@#pointmode.gif@
頂点、エッジ、面のうち、%SelectFilter%で指定された要素を選択します。$
Shift+左クリックで現在の選択へ追加、Ctrl+左クリックで既に選択されている要素を選択解除。$

]SelectRect 矩形選択 &actSelRect areamode.gif
@#areamode.gif@
マウスドラッグで指定した矩形の内部にある要素を選択します。$
Shiftを押しながらドラッグすると、現在の選択へ追加、Ctrlを押しながらドラッグすると、矩形内の
要素を選択解除します。$

]SelectMagnet マグネット選択 &actSelRel magnetmode.gif
@#magnetmode.gif@
左クリックした要素から、一定の距離以内にある要素を段階的に選択します。$
右ドラッグすることで、選択範囲を指定することができます。$

]SelectLasso 投げ縄選択 &actSelFreeHand lassomode.gif
@#lassomode.gif@
マウスドラッグで描画した任意形状範囲の内部にある要素を選択します。$
Shiftを押しながらドラッグすると、現在の選択へ追加、Ctrlを押しながらドラッグすると、範囲内の
要素を選択解除します。$
$ 

]SelectPaint 連続選択 &actSelPaint paintselmode.gif
@#paintselmode.gif@
マウスドラッグを開始した要素と同じ種類で、かつ連続した要素を選択します。$
$
$


|SelectFilter 選択フィルター
@#filteroption.gif@@#pointsel.gif@@#edgesel.gif@@#facesel.gif@@#revfacesel.gif@@#relsel.gif@$
$
選択フィルターを設定します。このフィルターで指定された要素(頂点等)のみが、
マウス操作によって%HighlightElement%されたり、選択することができます。$

]VertexFilter 頂点フィルター &actFilterPoint
@#filteroption.gif@
頂点の選択可・不可を設定します。$

]EdgeFilter エッジフィルター &actFilterEdge
@#pointsel.gif@
エッジの選択可・不可を設定します。$

]PolyFilter 面フィルター &actFilterPoly
@#facesel.gif@
面の選択可・不可を設定します。$

]RevPolyFilter 裏面フィルター &actFilterRevPoly
@#revfacesel.gif@
裏面および、裏面に属する要素の選択可・不可を設定します。$

]PolyRel 連続フィルター &actFilterRel
@#relsel.gif@
連続要素の限定選択可・不可を設定します。$
このフィルターの動作は特殊で、以下のような動作を行います。:$
1.何も選択されていない場合$
　他の選択フィルターの設定にしたがって自由に選択が可能。$
$
2.頂点が選択されている場合$
　その頂点に接続されている、面、エッジだけが選択できます。$
$
3.エッジが選択されている場合$
　そのエッジに接続されている、面、頂点だけが選択できます。$
$
4.面が選択されている場合$
　その面に接続されている、エッジ、頂点だけが選択できます。$
$
5.何もない場所をクリックした場合$
　選択が解除され、1の条件になります。$
$
細かく入り組んだ場所の頂点等を選択したい場合等、一発でマウス選択の操作が難しい時に、このフィルターをONにすれば、選択しやすい要素をまず最初に選び順々に目的の要素までたどっていく事が出来ます。$
$
$
$

@Footer

[] ---------------------------------------------------------------------------------

@Header

|PreviewStyle プレビュースタイル
@#previewoption.gif@@#wire.gif@@#shadewire.gif@@#flatwire.gif@@#flat.gif@@#texture.gif@@#smooth.gif@@#shader.gif@@#opengl.gif@$

]WirePreview1 ワイヤ1 &actPreview1
@#wire.gif@
オブジェクトをワイヤーフレーム表示します。$

]WirePreview2 ワイヤ2 &actPreview2
@#shadewire.gif@
オブジェクトをワイヤーフレーム表示します。$

]FlatPreview1 フラット &actPreview3
@#flatwire.gif@
オブジェクトをフラットシェーディング＋ワイヤーで表示します。$
$
]FlatPreview2 フラット &actPreview4
@#flat.gif@
オブジェクトをフラットシェーディングで表示します。$
表示速度に関しては、%FlatPreview1%と同じですが、ワイヤー表示をしない分、若干速くなっています。$
$


]TexturePreview テクスチャ &actPreview5
@#texture.gif@
%FlatPreview1%,%FlatPreview2%時に、テクスチャを表示します。$
ペイント等を行う場合に使用します。 現時点ではUVマップが施されたRDSファイルを読みこんだ場合かつ
テクスチャを張りこんだときだけ意味がありますが、全く汎用性がないため、ペイント機能を復活させる
までは、意味がないと思っておいてください。$
$
]SmootnPreview スムースシェーディング &actPreviewSmooth
@#smooth.gif@ %FlatPreview1%と%FlatPreview2%時に、スムースシェーディング表示を行います。(%OpenGLPreview%表示時のみ有効)$

]ShaderPreview ARBシェーダー &actPreviewAdvancedShader
@#shader.gif@ %FlatPreview1%と%FlatPreview2%時に、フォンシェーディング・バンプマップ表示を行います。(RADEON9500以降、GeForceFX以降のビデオカードで%OpenGLPreview%表示を行う時のみ有効)$
$
<B>*GL_ARB_fragment_program,GL_ARB_vertex_program,GL_ARB_multitextureをサポートしたビデオカードが必要です</B>$
$

]OpenGLPreview OpenGL &actOpenGL
@#opengl.gif@ OpenGLによるプレビュー表示を行います。$

@Footer
[] ---------------------------------------------------------------------------------

@Header

|ViewTools 視点ツール
@#viewoption.gif@@#zoomin.gif@@#zoomout.gif@@#handtool.gif@@#zoomtool.gif@@#viewrolltool.gif@@#areazoom.gif@@#lighttool.gif@$
]ViewOption 視点変更ウインドウ表示
@#viewoption.gif@
%ViewOptionWindow%を表示します。$

]Zoomin ズームイン &actZoomIn zoomin.gif
@#zoomin.gif@
現在のビューを拡大表示します。$
$
]Zoomout ズームアウト actZoomOut zoomout.gif
@#zoomout.gif@
現在のビューを縮小表示します。$
$
]HandTool ハンドツール &actViewHand handtool.gif
@#handtool.gif@
注視点の移動を行います。$
$
]ZoomTool ズームツール actViewZoom zoomtool.gif
@#zoomtool.gif@
マウスドラッグによるズームイン・ズームアウトを行います。$
$
]ViewRollTool ドリーツール actViewMove viewrolltool.gif
@#viewrolltool.gif@
マウスドラッグによる視点の移動を行います。$
$
]RegionZoomTool 領域ズームツール actViewZoomRect areazoom.gif
@#areazoom.gif@$
指定範囲をビューにフィットさせます。(うまく動いていません)$
$

]LightTool ライトツール actLightMove lighttool.gif
@#lighttool.gif@$
$
マウスドラッグによるライトの移動を行います$

|QuickTool クイックツール
@#quicktooloption.gif@@#quickalt.gif@@#quickaltshift.gif@@#quickaltctrl.gif@@#quickctrlshift.gif@@#quickspace.gif@$

Alt, Shift+Alt, Ctrl+Alt, Shift+Ctrl, Spaceキーとマウスの左クリックのコンビネーションで一時的に選択されるツールを設定します。$
各キーに対応したボタンを押すと、%EditTools%,%ViewTools%に含まれるツールのメニューが表示されますので、設定したいツールを選んでください。$

]QuickAlt Altキー
@#quickalt.gif@
Altキーを押したときに呼び出される機能を設定します。
標準では%ViewRollTool%が割り当てられています。$
$
]QuickAltShift Alt+Shiftキー
@#quickaltshift.gif@
Alt+Shiftキーを押したときに呼び出される機能を設定します。
標準では%FacetTool%が割り当てられています。$
$
]QuickAltCtrl Alt+Ctrlキー
@#quickaltctrl.gif@
Alt+Ctrlキーを押したときに呼び出される機能を設定します。
標準では%CutTool%が割り当てられています。$
$
]QuickCtrlShift Ctrl+Shiftキー
@#quickctrlshift.gif@
Ctrl+Shiftキーを押したときに呼び出される機能を設定します。
標準では%ScaleTool%が割り当てられています。$
$
]QuickSpace Spaceキー
@#quickspace.gif@
Spaceキーを押したときに呼び出される機能を設定します。
標準では%HandTool%が割り当てられています。$
$

|ImageBar イメージバー
@#imgoption.gif@@#openimg.gif@@#copyimg.gif@@#raunchpaint.gif@@#pasteimg.gif@@#pentool.gif@$
$
|PropertyWindowBar プロパティバー
 @#property.gif@$
$
|UndoBar アンドゥバー
@#undo.gif@@#redo.gif@$
]UndoButton アンドゥ &actUndo
@#undo.gif@
]RedoButton リドゥ &actRedo
@#redo.gif@
$
|WaySplitBar 図面分割バー
@#splitoption.gif@@#personly.gif@@#4way.gif@@#2way1.gif@@#2way2.gif@@#2way1uv.gif@@#2way2uv.gif@@#4wayuv1.gif@@#4wayuv2.gif@@#customway.gif@$
$
%WorkArea%の分割形式を変更することができます。$
$
|StatusBar ステータスバー
 @#statusbar.gif@$
$
$
@Footer

[] ---------------------------------------------------------------------------------
@Header
:Window ウインドウ類

各ツールのオプション設定や、オブジェクト操作をするためのウインドウ類$
ウインドウ右上のピンのアイコンが、$
@#pin_float.gif@の時は、マウスカーソルがウインドウ外に出ると自動的にクローズされます。$
@#pin_lock.gif@の時は、自動的にクローズされません。$
$
また、このアイコンをドラッグすることでメインウインドウの右もしくは左端に%Dock%することが可能です。$

|ObjectWindow オブジェクトウインドウ
オブジェクト管理をするためのウインドウ$
@#objectwin.gif@$

$
1)曲面化されたメッシュオブジェクト$
2)メッシュオブジェクト$
3)曲面化メッシュオブジェクトの名称$
4)メッシュオブジェクトの名称変更を行うEDITBOX$
5)サブメッシュ(ポリゴングループ)の名称$
6)表示/非表示切り替えアイコン$
7)UVテンプレート$
8)メッシュ操作ボタン。左からメッシュのフィット、全選択、ロック$
9)オブジェクトインポート$
10)新規メッシュオブジェクト作成$
11)新規サブメッシュの作成$
12)メッシュオブジェクト/サブメッシュの削除$
$
|ToolOptionWindow ツールオプション
編集ツールのオプションを設定するウインドウです。$
%EditTools%で選択されているツールによって、設定項目が変化します$

]ToolMoveWindow 移動ツールオプション
@#op_move.gif@$
%SelectMagnet%状態の時、頂点移動の際に%SmoothBend%機能を使うか否かの設定を行います。$
自動：頂点を一定量移動した場合に自動的に%SmoothBend%をONにします。$
スケール変換：%SmoothBend%時に、移動距離にあわせてオブジェクトのスケールを変更します。$
$
]ToolFacetWindow 面ツールオプション
@#op_facet.gif@
$
]ToolPolylineWindow 折れ線ツールオプション
@#op_polyline.gif@
$
]ToolAddPointWindow 頂点追加ツールオプション
@#op_addpoint.gif@
$
]ToolClayWindow クレイツールオプション
@#op_clay.gif@
$
]ToolExtrueWindow 押し出しツールオプション
@#op_extrude.gif@
$
]Tool2DRotateWindow
@#op_2drotate.gif@
$
]ToolScalingWindow
@#op_scaling.gif@
$

$
|SelectOptionWindow 選択オプション
%SelectTools%で選択されている選択ツールのオプションを設定します。$
@#op_selpoint.gif@$
$
@#op_selectrect.gif@$
$
@#op_selectmagnet.gif@$
$
$
$
|ViewOptionWindow 視点変更ウインドウ
視点方向を規定の位置に設定したり、記憶させた位置に変更します。$
@#ViewWindow.gif@$
(1)XZ平面を-Y方向から見ます$
(2)XY平面を+Z方向から見ます$
(3)ZY平面を-X方向から見ます$
(4)ZY平面を+X方向から見ます$
(5)XY平面を-Z方向から見ます$
(6)XZ平面を+Y方向から見ます$
(7)視点変更のアンドゥ、リドゥを行います。$
(8)現在の視点を記憶します。$
$

|3DLoope 3Dルーペ &actLoope
カーソル周辺を拡大して、ワイヤーフレーム表示します。$
複雑な部分にある頂点を選択する場合に使用します。 ポリゴン数が多くなると処理が重くなるため、適時ON/OFFを切り替えてください。
$
@#3dLoupe.gif@
$
$
|PropertyWindow プロパティウインドウ
オブジェクトの頂点数、エッジ数、面数を表示します。$
$
また、現在選択している要素の位置、サイズを%Numeric%することが可能です。$

$
@#op_property.gif@
$
$

|VecCalc ベクトル電卓
数値入力を補助するための機能です。(Window/ウインドウ表示/ベクトル電卓)$
$
現在の所、キーボード入力には完全対応できていないため、
マウス操作で入力を行う必要があります。$
$
ベクトル値(座標値)を入力する場合、$
1･カンマで３つの値(X,Y,Z値)を区切って入力$
2･図面の任意の場所でマウスの左ボタンを押す$
$
の２通りの方法があります。$
$
この機能と、%Numeric%を併用することで、例えば２つのオブジェクトを任意の頂点同士で接する
用に配置可能です。$
$
1･接したい先の頂点等をクリックする。$
2･%VecCalc%の[-]をクリック$
3･接したい元の頂点をクリックする$
4･%VecCalc%の[=]をクリックすると、２つの頂点の距離が計算される$
5･%VecCalc%の[Copy]をクリックし、クリップボードにコピーする$
6･接したい元のオブジェクトを全選択する$
7･%PropertyWindow%を開き、位置指定を「Rel」にする$
8･位置入力欄の右側のボタンを押すと、計算した座標がペーストされる$
9･「適用」を押すと、選択オブジェクトが移動する。$
$
続けて数値入力したい場合は、一度オブジェクトをクリックして、オブジェクトの
現在位置を再度取得しなおしてください。$
$

必要があるなら、ベクトルの内積、外積などの演算も実装可能です。要望がありましたら連絡ください。$
$
|Dock ドッキング
$
]DockToolBar ツールバーのドッキング
$
beta5.1から、ツールバーがフローティング状態にならなくなりました。$
$
ただし、ツールバーの右クリックメニューから上下左右いずれかの好みの場所にツールバーを移動することができます。$
また、ツールバーをドラックすることで、バーの順番を入れ替えることも可能です。$

$
]DockWindow ウインドウ類のドッキング
ウインドウ右上のピンのアイコン@#pin_float.gif@、@#pin_lock.gif@を
ドラッグして、メインウインドウの右もしくは左端にドロップすることで%PanelTray%に%Dock%することが可能です。$
%Dock%を解除する場合、@#pin_dockrelease.gif@をドラッグしてください。$
$
|PanelTray パネルトレイ
名ウインドウの右と左端の計二つのパネルトレイがあり、トレイには各種ウインドウをドッキングすることが出来ます。
$
トレイに複数のウインドウが%Dock%されて、トレイ内に収まりきらない場合、トレイにスクロールバーが表示されスクロール表示されるようになります。
但し、目的のウインドウを表示領域まで持ってくるためにスクロールバーを使う必要はありません。$
トレイの左端に配置されている各ウインドウ用の呼び出しボタンを押すことで、目的のウインドウが即座にスクロールインしてきます。$
$
@Footer

[] ---------------------------------------------------------------------------------
@Header

|OptionConfig 環境設定


@Footer

[] ---------------------------------------------------------------------------------
@Header

:AboutWorkPlane 作業エリア/作業面

|WorkArea 作業エリア


|WhatIsWorkPlane 作業面とは

 オブジェクトが3次元情報を持つのに対して、スクリーンは2次元の空間であり、マウスカーソルは2次元の操作しかできないため、
足りない情報を補うために、編集作業を行う際に基準となる面を選択する必要があります。この面を作業面と呼びます。$
$
]SetWorkPlaneXY XY平面を作業面にした図
作業面選択ボタン(%lay_WorkPlanXY%ボタン－ 「%Pers_layout%」を参照)もしくは、　%EditMenu%->%WorkPlaneIsXY%を実行してXY平面を作業面に設定した状態が下の図です。$
$
@#work_xy.gif@$
$

]DrawPolyOnWorkPlane 作業面に面を作成
この状態で%FacetTool%を使って面を生成する(「%UseFacetTool%」を参照)と、下の図のように、作業面上に面が生成されます。$
$
@#work_polydraw.gif@
$

]MoveOnWorkPlane 作業面上でオブジェクトを移動
ツールを%MoveTool%に変更し、オブジェクトをドラッグすると、作業面に平行してオブジェクトを移動させることができます。$
言い方を変えると、基本的にはオブジェクトは作業面に平行な方向にしか移動できません。$
$
@#work_movepoly.gif@
$
]MoveVerticalWorkPlane 作業面から垂直方向にオブジェクトを移動
%MoveTool%ツールの時に、Altキーを押しながらオブジェクトを左右にドラッグすると、作業面から垂直方向にオブジェクトを移動させることができます。$

$
@#work_moveaway.gif@
$
]MoveOnWorkPlane2 作業面から離れたオブジェクトを移動
下図のように、作業面から離れているオブジェクトも、作業面から一定の距離を保ったまま平行移動します。$
$
@#work_movepoly2.gif@
$
]DrawPolyOnPoly 作業面から離れたオブジェクトを利用して、面を生成
$
作業面から離れたオブジェクトの頂点を利用して、「%UseExist%」の方法で面を作ると、利用した頂点と同じ距離だけ作業面から離れた位置に新しい面が作られます。$
以降、他の位置に面やラインを作る際にも、同じ距離だけ作業面から離れた位置に生成されるようになります。$
$
また、作業面からの距離は、適当な頂点上で%ContextMenu%->%CursorAt%を実行することによって、変更することもできます。(頂点等が無い場所で%CursorAt%を実行すると作業面からの距離を0にリセットすることができます。)$
$
@#work_polydraw2.gif@
$
$
@Footer

[] ---------------------------------------------------------------------------------
@Header
\HowTo 3.使い方


:PolygonOperation ポリゴン操作

|MakePrimitive 基本形状作成
$
MarbleCLAYはポリゴンモデラーです。最初から一枚一枚ポリゴンを作っていくこともできますが、最初は次のステップを実行し、プリミティブを作成して
MarbleCLAYの特徴である、簡単な頂点選択機能を体験してみてください。$
$
]HowToSetPrimitive プリミティブ配置
例として球体を作る場合について説明します。$
$
1.まず最初に、%FileMenu%->%FileNew%や%FileMenu%->%FileOpen%で適当なドキュメントを開いておいてください。$
$
2.%FileMenu%->%FileNew%で新規ドキュメントを開いた場合は、そのまま%MeshMenu%->%MeshPrimitive%を開き、%MeshPrimSphere%を実行してください。$
$
3.%FileMenu%->%FileOpen%で既存ドキュメントを開いた場合は、プリミティブをどのオブジェクトに追加するかを選択します。$
$
3-1.%ObjectWindow%を開き、親となるオブジェクト(もしくはサブメッシュ)を選ぶ。$
3-2.別オブジェクトとしてプリミティブを生成したい場合は、Rootを選択する。$
3-3.%MeshMenu%->%MeshPrimitive%を開き、%MeshPrimSphere%を実行してください。$
$
|HowToSelect 選択方法
オブジェクトを選択する方法を説明します。%HowToSetPrimitive%で作成したオブジェクトの一部、もしくは全体を以下の方法のいずれかで選択した後、「%MoveObjectVertex%」にすすんでください。$
$
]SingleClickSel 通常の選択方法
%SelectPoint%を選び、%SelectFilter%で選択したい要素の種類を選びます。$
次にマウスカーソルを選択したい要素の上に移動すると、要素が%HighlightElement%されるので、そこでマウスクリックすると、その要素が選択されます。$
$
形状を微調整して整える際に頻繁に利用します。$
$
]AreaSel 矩形範囲で選択
1.%SelectRect%を選び、%SelectFilter%で選択したい要素の種類を選びます。$
次にマウスカーソルをドラッグして矩形を描き、マウスボタンを離すとメニューが表示され、
矩形内の全ての要素の選択、もしくはフィルター設定に従った選択を選ぶことができます。$
$
2.%SelectPoint%モードのまま、要素が存在しない場所からマウスドラッグを開始すると、1と同じように選択することができます。$
$
また、%SelectOptionWindow%によって、「メニューによる選択」、「常に全てを選択」、「常にフィルターを使った選択」を選ぶことができます。$
$

]DoubleClickSel ダブルクリック選択
%MoveTool%や%ScaleTool%、%Roll2D%等のモードで可能な、オブジェクトを選択する方法としては最も手軽な手段です。$
$
1.オブジェクトの頂点もしくは、面をダブルクリックすると接続部分が全て選択されます。$
$
2.エッジをダブルクリックした場合、そのエッジに連続したエッジが選択されます$
(*%EditDeleteEx%参照)
$

]EdgeSel 連続エッジ選択
%DoubleClickSel%を参照$

]ObjectSel 連結ポリゴン選択
%DoubleClickSel%を参照$

]BeltSel ベルト選択
1.選択したいポリゴンのエッジ上で左ボタンをプレスします。$
$
2.左ボタンをプレスした状態で右ボタンをクリックしてください、ポリゴンがベルト状に選択されます。$
$

]PaintSel マウスで連続選択
1.%SelectPaint%を選び、%SelectFilter%で選択したい要素の種類を選びます。$
$
2.選択されていない、適当な要素の上でマウスドラッグを開始すると、その要素に接続されている要素を連続して選択することができます。$
$
]AllSel 全て選択 &actSelectAll
%EditMenu%->%EditSelAll%メニュー$
を使う事でカレントのオブジェクトを全て選択することが出来ます。$

$
]DopelEdgeSel 多重エッジ選択
%EditMenu%->%EditSelDopel%メニュー$

同じ頂点セットをもつ複数のエッジがある場合、 どちらか一方のエッジを選択します。$
RDS出力時など、 多重エッジを認めないファイルフォーマットに出力する場合、最初に
このコマンドで多重エッジを選択したあと、%EditDelete%を行って多重エッジを除去してください。$
(多くの場合、形状が少し変化してしまいますので手作業で修正が必要です)$
$
]SingleEdge 単独エッジ選択
%EditMenu%->%EditSelSingle%メニュー$
面を持たない単独のエッジを選択します。$
$
]TriEdgeSel ２つの３角面の共有エッジを選択
%EditMenu%->%EditSel2Tri%メニュー$
２つの三角面を共有しているエッジを選択します。ただし、ここで選択されるのは２つの三角面を
結合した形が四角形に近い形状になる物だけです。$
このコマンドを実行したあと、%EditDeleteEx%を行うと、多数の三角面で構成されるオブジェクトを
四角面で構成されるオブジェクトにすることができます。$
ただし、簡単なアルゴリズムを使用しているため、見た目には四角面になりそうな物を選択できない
ことが多々あります。$
$
]SelectSameMaterial 同じカラーを選択 &actSelectSameMaterial
%EditMenu%->%SelectSameMaterial%メニュー$
現在選択している面と同じカラー属性で、且つ、連続している面を選択します。$
$
]SelectByObjectWindow オブジェクトウインドウで選択
オブジェクトウインドウ内のポリメッシュ名の右横のアイコン(赤い枠で囲まれた円錐)をクリックすると、そのポリメッシュを構成する面が全て選択されます。$
$
|MoveObjectVertex 移動・回転・拡大縮小
]SelectObject オブジェクトの選択
オブジェクトや頂点を移動するためには、まず最初に移動した部分を選択しなければなりません。$
「%HowToSelect%」を参照して、移動したいオブジェクトを選択してください。$
$
]MoveMove 移動
%MoveTool%を選択して、選択したオブジェクトや頂点をドラッグすると、作業面に平行した方向に移動させることができます。(「%WhatIsWorkPlane%」を参照)$
$
%MoveTool%を選択したままでも、別の頂点等を選択して移動することができます。$
$
]ManiMove マニピュレータを使った移動
$
%MoveTool%を選択し、%ViewMenu%->%ViewMani%を実行すると、選択部分に%Manipulator%が表示されます。$
$
この%Manipulator%の各軸方向の矢印部分をドラッグすることで、(作業面の状態とは無関係に)選択部分を各軸にそって移動することができます。$
$
]RollRoll 回転
%Roll2D%を選択すると、選択した要素の周りに回転用コントロールポイントが表示されます。このコントロールポイントをドラッグすると、作業面に平行した方向に選択要素を回転させることができます。$
また、適当な頂点をShift+クリックすることで、その頂点を回転の中心点として設定することができます。$
$
%Roll2D%を選択したままでも、別の頂点等を選択して回転することができます。さらに、選択要素をドラッグすることで選択要素を移動させることもできます。$
$
$
]ManiRoll マニピュレータを使った回転
$
%Roll2D%を選択し、%ViewMenu%->%ViewMani%を実行すると、選択部分に%Manipulator%が表示されます。$
$
この%Manipulator%の各軸方向の矢印部分をドラッグすることで、(作業面の状態とは無関係に)各軸を中心に選択部分を回転することができます。$
$
]ScaleScale 拡大縮小
%ScaleTool%を選択すると、選択した要素の周りに拡大縮小用コントロールポイントが表示されます。このコントロールポイントのうち立方体の頂点部分のポイントをドラッグすると、作業面に平行した方向に選択要素を拡大縮小させることができます。$
立方体の面の中心部分のコントロールポイントをドラッグすると、立方体の面と垂直な方向に選択要素を拡大縮小することができます(作業面の設定とは無関係)、さらにCtrlキーを押しながらドラッグすると反対側の面のコントロールポイントを中心として拡大縮小をすることができます。$
また、適当な頂点をShift+クリックすることで、その頂点を拡大縮小の中心点として設定することができます。$

$
%ScaleTool%を選択したままでも、別の頂点等を選択して拡大縮小することができます。さらに、選択要素をドラッグすることで選択要素を移動させることもできます。$
$

$
|MakeFacet マウスによるポリゴン生成

基本的には%FacetTool%を使って面を作成していきます。$
%FacetTool%を選んだ状態で、%UseFacetTool%から、%Split%までの
作業をモード切り替えを意識することなく、スムーズに行うことが
可能です。$
$
自動的に行われる要素が多々あるため、ユーザーによっては
余計なお世話になっている部分がありますが、
ツールオプションの設定により機能制限を行うことで、手間がかかる
代わりに、ユーザーが意図した通りの動作しかしないように設定する
ことも可能です。$
$

]UseFacetTool 一つの面を作る
単独の面を作る場合は次の手順です$
1.%FacetTool%を選択$
2.任意の場所で、左ボタンをクリック$
3.続けて2点をクリック$
4.一番最初にクリックした点を再度クリック$
$
]UseExist 連続して面を作る1
既に存在している面、エッジを利用して面を作る場合は、$
1.%FacetTool%を選択$
2.任意の頂点を選んで、クリック$
3.続けて別の場所をクリック$
4.四角形や三角形になった部分に自動的に面がはられます。$
$
ただし、ツールオプションで面生成を「ユーザーが明示」する
モードにしている場合、自動的に面は張られません。常に
%UseFacetTool%の方法を使うことになります。$
$
]StripMakePoly 連続して面を作る2
v2バージョンのみですが、ストリップ入力で連続して面を作成できます。$
$
1.%FacetTool%を選択$
2.コの字を描くようにShiftキーを押しながらクリック。$
3.コの字部分に四角面がはられます。$
4.Λ字を描くようにCtrlキーを押しながらクリック。$
5.Λ字部分に三角面がはられます。$
$
v2alpha4では、意図した面をうまく作るには慣れが必要です。$
$
]Triangurate 四角面を２つの三角面にする
%FacetTool%使用時、四角面を三角面にすることが可能です。$
1.分割したい面の任意の頂点を選んでクリック$
2.その面の対角線上のもう一方の頂点を選んでクリック$
クリックした２点を結ぶエッジが新しく作成され、元の面は２枚の
三角面に分割されます。$
$
%MeshTriangratePoly%も参照してください。$
$
]Split 既存の面を分割する
%FacetTool%や%PolyLineTool%を使って四角面を分断することが可能です。$
1.分割したい面の任意のエッジ上でクリック$
2.クリックした位置の頂点が作られ、自動的に面が２つに分割されます。$
3.このとき、新たに作成されたエッジを半確定エッジと呼びます。$
$
このままでは、１つの四角形と１つの三角形に分割された状態になりますが、
続けて以下の操作を行うことで２つの四角形に分割することができます。$
4.先ほど分割したエッジの向かい側のエッジ上でクリック$
5.するとクリックした２点を結ぶエッジが新しく作成され、元々の四角形が
２つの四角形に分割された形になります。$
6.このとき半確定エッジは削除されています。$
7.さらに続けて隣の面を分割していくことで、連続した面の分割が可能です。$

$
%CutTool%、%AddPointTool%も参照してください。$
$

]FacetWarning1 面作成時の注意点1
面の作成は、四角形や三角形が構成される部分に自動的に行われるため、ユーザーが
意図しない場所に面が張られてしまうことがあります。$
$
たとえば、新たに作成されたエッジによって、三角形と四角形が同時に構成可能に
なる場合があります。このとき、MarbleCLAYはユーザーがどちらに対して面を張りたいのかが判断できない
ため、適当な方を選んで面を貼ってしまいます。$
$
これを回避するためには以下の方法を使います：$
$
1.三角面、もしくは四角面のどちらかだけを生成するように指定する。$
ツールオプションのチェックボックスで作成したくない方のチェックを外すか、
%FacetTool%での頂点指定時にCtrl(三角限定)もしくはShift(四角限定)を押しながらクリックをする。$
2.面の生成を「ユーザーが指定する」モードにする$
ツールオプションのラジオグループで選択してください。$
$
]FacetWarning2 面作成時の注意点2
MarbleCLAYでは、一つのエッジで構成される面は２つまでに限定されます。３つ以上の面を構成するような場所に面を張ることは出来ません。$
$
しかし、バグ、もしくはインポートした形状の中にそのような形状が含まれている
ような場合に、見かけ上、３つ以上の面を構成するエッジが作成されてしまうことが
あります。実際には３つ以上の面を構成するエッジが存在しているわけではなく、
同じ位置に複数のエッジが存在しているのですが、このままの状態だと不都合(RDS形式での
エクスポートが正常に行えない、曲面化時に予期せぬ形状になる等)があるため、以下の
手順でこのようなエッジ(多重エッジと呼びます)を除去する必要があります。$
$
1.Edit/多重エッジ選択を実行$
2.Edit/削除を実行$
3.削除を行ったため、必要な面等も失われることがあります。その場合は手作業で修正する
必要があります。$

]UseGuide ガイドラインを用いる
%PolyLineTool%や、%DrawGuide%によって作った線に沿って面を貼る方法$
ガイドラインと言っても、通常のエッジと変わらないため、%UseExist%等の方法で
面を作っていくことが可能ですが、ガイドラインの頂点数が、作成したい形状の
頂点数よりも多すぎたり少なすぎたりする場合に、作業が行い難くなることがある
ため、以下の操作を行います。$
$
%DrawGuide%での説明と一部重なっています$
1.ガイドラインを全て選択して、新しく名前をつける。(オブジェクトの中にガイドラインしか
存在していない場合は、そのままで良い)$
2.オブジェクトウインドウで、ガイドラインにつけた名前の横の鍵アイコンをクリックして
ロックする$
$
これで、ガイドラインに対して、移動、分割等の操作が行われないようになり、更に頂点が
表示されなくなるため、面作成操作が行いやすくなります。具体的には、$
$

|DrawGuide ガイドラインを描く
ポリゴンをいきなり作成するのではなく、まず最初にガイドとなるラインを作成してから、そのガイドに沿ってポリゴンを
作成する方法もあります。
$
]UsePolyline 折れ線ツールを使う
作りたいポリゴンの形状がある程度把握できている場合は、%PolyLineTool%を使って最終的に作りたいポリゴンと同程度の荒さのガイドラインを
書くと良いでしょう。$

]UseFreeHand フリーハンドツールを使う
タブレットがある場合や、最終的に作りたいポリゴンと同程度の荒さのガイドラインが不必要な場合は、%FreehandlineTool%を使えば、手早く
ガイドラインを書くことが出来ます。$
$
]GuideLock ガイドラインをロックする
%FreehandlineTool%で作成したガイドの場合、ポリゴン作成過程でガイドラインがポリゴンの一部になってしまい、非常に面倒なことになることが
多いため、ガイドラインが出来た時点でロックすることをお勧めします。$
$
%ObjectWindow%でガイドラインの右側の鍵マークをクリックするとガイドラインがロックされます。$
%UseGuide%にも、ロックについての説明書きがあります。$
$
$
<B>TODO:ここに図を挿入</B>

$

|UseExtrude 押し出しツールを使う

]MakeFacetExtrude 押し出しによる面生成
%FacetTool%と同様に、面を作成するための機能ですが、こちらは既存の面を利用して面を作成します。$
面の色等は、既存面と同じものが引き継がれます。$

1.%ExtrudeTool%を選択$
2.ツールオプションウインドウで、「平行押し出し」「ベベル押し出し」「移動押し出し」
のいずれかを選ぶ$
3.押し出したい面を選択(%AnotherSel%参照)$
4.選択した部分の上にカーソルをおき、そこからマウスの左ボタンを押しながら $
　4-1.右にドラッグすると面の表面方向に面が押し出されます(平行押し出し、ベベル押し出し)$
　4-2.左にドラッグすると面の裏面方向に面が押し出されます(平行押し出し、ベベル押し出し)$
　4-2.ドラッグすると、その方向に面が押し出されます(移動押し出し)$
$

]MakeFacetFromEdge エッジからの面生成
エッジを任意の方向に押し出します。$
ただし、押し出し形式の指定は無視され「移動押し出し」されます。$
$
1.%ExtrudeTool%を選択$
2.ツールオプションウインドウで「エッジ、頂点の押し出し」にチェックがついていることを確認$
3.押し出したいエッジを選択(%AnotherSel%参照)$
4.選択した部分の上にカーソルをおき、そこからマウスの左ボタンを押しながら
ドラッグすると、その方向に面が押し出されます$
$ 
@#edgeextrude.gif@
$
]MakeFacetFromEdge 頂点を押し出す
%MakeFacetFromEdge%と共に使います。下図のような形の場所に面を作りたい場合、%MakeFacetFromEdge%では
期待通りの面を張ることは出来ません、しかし、このような形状は%MakeFacetFromEdge%を使って面を作っていく場合に非常によく発生してしまいます。$
$
このような場合は以下の操作を行い、面を張ることが可能です。$
1.%ExtrudeTool%を選択(既に選択されている場合は省略可能)$
2.ツールオプションウインドウで「エッジ、頂点の押し出し」にチェックがついていることを確認$
3.図のように面を張りたい部分の頂点を対角線上にドラッグして任意の場所もしくは、もう一方の頂点上でマウスボタンを離す$
(複数の頂点を同時に押し出すことはできません)$
$
@#vertexextrude.gif@
$


|Fusion 合成
]FusionPointByMouse マウス操作による頂点の合成(ドラッグ&ウェルド)
%FacetTool%モードにて、任意の頂点を別の頂点の上までドラッグし、ドロップすると、その二つの頂点が溶接されます。$
$
]FusionPoint 頂点の合成
複数の頂点を選び、%MeshMenu%->%MeshWeld%を実行することで、頂点の溶接ができます。$
この時、ダイアログにて、全ての頂点を強制的に一つの頂点に溶接する(%ForceWeld%)か、指定した距離よりも
近い頂点同士だけを溶接するかを選択することができます。
$
]FusionPoly 面の合成
合成したい面と面を共有するエッジを選択し、%EditDeleteEx%を２回実行することで、面を１つの四角面に
変換することができます。$
合成可能な条件は、$
・三角面＋三角面$
・四角面＋四角面$
の場合です。$
$

|Numeric 数値入力

%PropertyWindow%の位置欄に数値を入力することで
現在選択している要素を移動することが可能です。$
入力方式には絶対値指定と、相対値指定が可能です。$
$
%PropertyWindow%のサイズ欄に数値を入力することで
現在選択している要素を拡大・縮小することが可能です。$
入力方式には絶対値指定と、倍率指定が可能です。$
$
$
＊注意＊数値入力で移動等を行ったオブジェクトに続けて数値入力を
行いたい場合は、一度オブジェクトをクリックして、オブジェクトの新しい
位置、サイズを取得しなおしてください。$

数値入力を補助するために%VecCalc%を使用可能です。$
$
|Nudge ナッジ

Alt+カーソルキーを押すことで、選択要素を微動させることが可能です。$
$
３面図がアクティブな状態でカーソルを押すと、カーソルを押した方向に微動します。$
$
パースビューがアクティブな状態ではAlt+左向きカーソルが-Y方向、Alt+右向きカーソルが
Y方向。$
ALt+上向きカーソルが-X方向、Alt+下向きカーソルがX方向。Alt+Ctrlキーを押しながら上向きカーソルでZ方向、下向きカーソルで-Z方向に移動します。$
$
移動距離は環境設定で変更が可能で、スペースキーを押しながらAlt+カーソルキーを押すことで設定移動距離がｘ10倍になります。$
$ 
<B>Beta5.1から、Altキーを同時に押す仕様に変更されました。但し、環境設定を変更すればで従来どおり、カーソルキーのみでのナッジ操作が行えます。</B>
$
@Footer
[] ---------------------------------------------------------------------------------

@Header
:Manipulator マニピュレータ
マニピュレータを使うと、頂点等をワールド座標の各軸方向のみに制限して動かしたり、任意の面の法線方向やパーツ/ボーンのローカル座標軸に制限して動かしたりすることができます。$
$
|WorldManipulator 通常のマニピュレータON &actViewManipulator
起動初期はこの状態です。$
$
選択部分をワールド座標軸方向に移動したり(%MoveTool%時)、回転(%Roll2D%時)させたりすることができます。$

|LocalManipulator ローカルマニピュレータON &actViewLocalManipulator
最後にクリックした面・頂点の法線方向や、エッジの方向、パーツ/ボーンのローカル座標軸にそって移動/回転をすることができます。$
$
|ManipulatorOff マニピュレータOFF
通常のマニピュレータが表示されている時は%WorldManipulator%を、ローカルマニピュレータが表示されている時は%LocalManipulator%を再度実行することでマニピュレータを消すことができます。$
入り組んだ場所を編集するとき等、マニピュレータが邪魔な場合にはOFFにしてください。$

@Footer
[] ---------------------------------------------------------------------------------

@Header
:ObjectHandling グループ操作

MarbleCLAYには、%ObjectWindow%という、オブジェクト管理のためのウインドウがあり、このウインドウにてオブジェクトの名称変更や、グループ分けなどを行うことができます。$
$

|MakeObject オブジェクト生成

]ob_Startup 起動直後の状態
MarbleCLAY起動直後や、%FileMenu%->%FileNew%でドキュメントを作成した直後では、オブジェクトは一つもない状態です。$
この時、%ObjectWindow%内は、下図のような表示になっています。("Root"は、全てのオブジェクトを示す項目。ここではオブジェクトが一つも存在しないのでRootの下には項目がありません。)$
$
@#obj_null.gif@$
$
$
]ob_firstmake 最初のオブジェクトを作成
この状態で、%MakePrimitive%や、%MakeFacet%等の方法で何らかのポリゴンを作ると、%ObjectWindow%内に自動的に一つのオブジェクトが作成されます。$
$
新しいオブジェクトには、"NewObject"という名前がつけられ、オブジェクト内のポリゴン群(ポリメッシュ)には"Mesh-0"という名前が付けられています。$
(%MakePrimitive%でオブジェクトを作った場合は、ポリメッシュの名称が"Sphere"等になっていますが、適宜読み替えてください.)$
$
@#obj_firstmake.gif@ @#obj_work_firstmesh.gif@$
$
一つのオブジェクトには、複数のポリメッシュを含むことができます。上図の状態では、新しく作成されたオブジェクト-
"NewObject"が選択された状態(濃い色で、反転表示)になっており、オブジェクトを選択すると、オブジェクト内の全てのポリメッシュ(ここでは"Mesh-0")も選択されている
状態になります。$
$
$
]obj_addpoly ポリゴン追加
"NewObject"を選択した状態で、さらにポリゴンを追加していくと、追加されたポリゴンは"NewObject"内の適当なポリメッシュに属することになります。ここではポリメッシュは"Mesh-0"のみ
なので、無条件で"Mesh-0"になります。$
 @#obj_work_secondmesh.gif@$
 $
参照.%RuleAddMesh%$
$
$
]obj_newpolymesh ポリメッシュ名追加①
ポリメッシュ名の追加には二通りの方法がありますが、最初に%ObjectWindow%の操作で追加する方法を述べます。$
$
@#obj_newmesh.gif@$
%ObjectWindow%の下部に並んでいるアイコンのうち、上図の矢印で示すアイコンをクリックすると、$
"NewObject"の下に新しく"Mesh-1"という名称のポリメッシュが作成されます。$
@#obj_newmesh2.gif@$
$
$
]obj_addpoly2 "Mesh-1"にポリゴン追加
このままの状態で"NewObject"にポリゴンを追加すると、多くの場合、ポリゴンは"Mesh-0"に属してしまいます。$
"Mesh-1"に確実にポリゴンを追加したい場合は、%ObjectWindow%の"Mesh-1"をクリックして、"Mesh-1"のみが選択されている状態にする必要があります。$
$
@#obj_selmesh1.gif@ @#obj_work_mesh1.gif@$
上図のように、"Mesh-1"が選択された状態でポリゴンを追加すると、ポリゴンは"Mesh-1"に属すようになります。$
(上図では見やすいように、ポリゴンの色を変更してあります)$
また、この状態では、"Mesh-1"に属するポリゴン以外は半透明になり編集できなくなります。$
$
$
]obj_newpolymesh2 ポリメッシュ名追加②
ポリメッシュ名を追加する二番目の方法を説明します。$
%ObjectWindow%で、"NewObject"を選択して、オブジェクト全体を編集可能状態にしてください。$
$
@#obj_newmesh2.gif@　@#obj_work_naming.gif@$
$
次に任意のポリゴンを選択し(ここでは二番目のポリゴンを選択します)、マウスの右ボタンをクリックして%ContextMenu%を表示し、%ContextNaming1%->%ContextNaming2%を実行すると、
ポリメッシュ名を入力するダイアログが表示されます。$
$
@#obj_dlg_naming.gif@$
$
ダイアログに、追加したい名称を入力(ここでは"new-mesh"とします)して、OKボタンを押すと、選択していたポリゴンが"new-mesh"となり、ポリメッシュ名が%ObjectWindow%に表示されます。$
$
@#obj_3mesh.gif@ @#obj_work_3mesh.gif@
$
$
]RuleAddMesh ポリゴン追加とポリメッシュ名
ポリゴンを追加した場合に、そのポリゴンがどのポリメッシュに属すことになるかを予測するためには、以下の規則を知る必要があります。$
$
規則1：%ObjectWindow%で、一つのポリメッシュ名だけを選択している場合。(参照.%obj_addpoly2%)$
・新しく作成したポリゴンは、全てそのポリメッシュに属する。$
$
規則2：%ObjectWindow%でオブジェクト全体を選択している場合。(ここの例では"NewObject"部分を選択している場合)$
・既に存在するポリゴンの頂点やエッジを利用して作成したポリゴンは、利用した部分と同じポリメッシュに属する。$
・複数のポリメッシュに属する、頂点やエッジを利用して作成したポリゴンは、利用したポリメッシュのいずれかに属するが、
どのポリメッシュに属するかは不定なので、作成した後に%obj_newpolymesh2%の方法で、手動でポリメッシュの割り当てを行う。$
・既にある頂点やエッジなどを全く利用せずに作成したポリゴンは、多くの場合、%ObjectWindow%内で一番上に表示されているポリメッシュ
に属する。$
$
$
]Grouping ポリメッシュのグループ化  
複数のポリメッシュを、グループ化することができます。$
グループ化することで、複数のポリメッシュを同時に表示/非表示したり、選択したりすることが出来るようになります。$
$
@#obj_group.gif@$
グループ化したいポリメッシュを選び(ここでは"Mesh-0"と、"Mesh-1"を選択)、右クリックメニューを表示して「グループ化」を実行する。$
(複数のポリメッシュを選択する場合、Ctrlキーを押しながらポリメッシュ名をクリックするか、ポリメッシュ名部分をマウスで左ドラッグする。)$
$
@#obj_group2.gif@$
新しいグループが作成され(上図では"GroupMesh-0"という名称)、そのグループの下に元々のポリメッシュが属するようになります。$
$
$
]UnGrouping グループ解除
作成したグループは、右クリックメニューの「グループ解除」で解除することができます。$
$
$
]GroupRename 名称変更
オブジェクト名、ポリメッシュ名、グループ名は%ObjectWindow%の上部にあるエディットボックスを用いて変更することができます。$
$
@#obj_rename1.gif@$
名称を変更したい部分をクリック(ここでは"GroupMesh-0")して、エディットボックスに新しい名前"Group"を入力してエンターキーを押す。$
$
@#obj_rename2.gif@$
名称が"Group"に変更されます。$
$
@Footer
[] ---------------------------------------------------------------------------------

@Header
:ViewChange 視点を変える

|UseWheel マウスの中ボタン
ホイールマウス等、３ボタンマウスの中ボタンを押しながらドラッグすると注視点を移動することができます。$
$
β5より、中ボタンを押しながら、マウスの右ボタンをドラッグすると視点が注視点を中心に回転します。$
$
また、環境設定で上記動作を入れ替えたり、他の機能を割り当てることが可能です。$
$

|QuickArea クイックエリア
各図面の表示エリアの周囲に存在する特殊機能領域を使った視点変更方法。%lay_QuickArea%を参照。$
標準では、視点変更ツール等がこのエリアに設定されており、視点の回転、ズームイン/ズームアウトが簡単にできるようになっています$
%PerspectiveView%と、%3WayView%では異なる機能が割り当てられており、%OptionConfig%ダイアログで、クイックエリアに別の機能を割り当てることができます。$

]PerspectiveView 透視図
透視図面の側面にカーソルを近づけると、カーソル形状が@#curdolly.gif@になります。
この状態で、マウスの左ボタンを押しながらドラッグすると、視点が注視点を中心に回転します。$
同様に、右ボタンを押しながら上下方向にドラッグすると、視点が前後に移動します。$
$
]3WayView 3面図 
３面図の側面にカーソルを近づけると、カーソル形状が@#curhand.gif@になります。
この状態で、マウスの左ボタンを押しながらドラッグすると、注視点が移動します。$
同様に、右ボタンを押しながら上下方向にドラッグすると、図面が拡大縮小します。$

$
|UseQuickTool クイックツールを使う
初期の状態では、ALTキーに視点変更ツール、SPACEキーに注視点変更ツールが割り当てられています。$
$
透視図面でALTキーを押しながらマウスボタンをドラッグすると、視点が注視点を中心に回転します。$
同様に、ALT+右ボタンを押しながら上下方向にドラッグすると、視点が前後に移動します。$
$
３面図、透視図面でSPACEキーを押しながらマウスボタンをドラッグすると、注視点が移動します。$
同様に、ALT+右ボタンを押しながら上下方向にドラッグすると、図面が拡大縮小します。$
$
QuickToolBarを使って、キーの割り当てを変更することが可能です。$
$
$
|UseNormal ツールバーで選択する

%ViewTools%で、視点変更ツールや注視点変更ツールを選択しても、視点操作は可能です。$
$
$
|SmartScroll スマートスクロールを使う
(株)WACOMから販売されているSmartScrollというデバイスを使うと、左手による視点変更が出来るようになります。$
$
※使用前に、添付されているMarbleCLAY.sspファイルをSmartScrollウインドウにドラッグ&ドロップしておいてください。
$
|ArvelMouse トラックボール付きマウスを使う
Arvelから販売されているトラックボール付きのマウスを使うと、トラックボールによる視点変更が出来るようになります。$
※環境設定にて、ホイールの機能に｢ビューロール｣を割り当ててください。$
@Footer

[] ---------------------------------------------------------------------------------
@Header

:SplineSurf 曲面
MarbleCLAYはポリゴンモデラーですが、%ChangeSplineSurf%と%ChangeSplinePatch%の二種類の形式を使った曲面モデリングが可能です。$
これら曲面モデルで使われる曲面はポリゴンモデルから常に自動的に生成されるため、ポリゴンモデリングの特徴である自由度の高いモデリング
操作感を維持することができます。$
$
ただし、モデリング操作は常にポリゴンに対して行われるため以下のような欠点があります：$
1.曲面の外形を崩さずに面上に頂点を追加したり、面に穴を開けることができない。(%ChangeSplinePatch%に関しては将来のバージョンである程度解消される可能性があります)$
2.曲面をポリゴンを介して間接的に扱うため、編集結果を直感的に把握し難い。モデルに直接触れる感覚に乏しい。(但し、これに関しては慣れることは可能だと考えます)
$
]MakeSplineSurf 曲面の生成
曲面の生成方法は非常に簡単です。$
1.まず最初に%PolygonOperation%を参照して適当なオブジェクトを作成してください。$
2.曲面化したいオブジェクトを%ObjectWindow%で選択してください。$
3.%MirrorMenu%->%ChangeSplineSurf%もしくは%MirrorMenu%->%ChangeSplinePatch%を実行すると選択したオブジェクトが曲面化されます。$

]FreezeSplineObject 曲面のポリゴン化
MarbleCLAYで作成した曲面モデルを他のアプリケーションで使用するために%Export%する場合、そのままでは曲面化前のポリゴンだけが出力されてしまいます。$
そのアプリケーションがポリゴンから曲面を生成する機能を持っている場合はこのような利用方法も可能ですが、そうではない場合、以下の手順で%Export%前に曲面をポリゴン化する必要があります。$
$
1.ポリゴン化したいオブジェクトを%ObjectWindow%で選択。$
2.%MirrorMenu%->%FreezeSpline%を実行$
3.ポリゴン化のレベルを入力します。(例：4と入力すると一つの面を4x4=16個のポリゴンに分割します。)$
4.ポリゴン化されたオブジェクトが<元の名前>+"(Freeze)"という名前で生成されるので、これを選択して%Export%を行ってください。$

]TuneSplineStyle 曲面の微調整

・%SharpEdge%をすると、曲面のエッジを立てる事が出来ます。(元の状態に戻す場合は%UnSharpEdge%を実行する)$
・%SharpVertex%、%UnSharpVertex%等を実行することで選択した頂点を尖らせたり、滑らかにすることが可能です。$
・%MoveTool%モード時には、ウェイトを変更したい頂点を右方向に右ドラッグすると、ウェイトが増加し、左方向に右ドラッグするとウェイトが減少します。$



@Footer

[] ---------------------------------------------------------------------------------
@Header

:SelectiveMirror 対称図形編集


@Footer


[] ---------------------------------------------------------------------------------
@Header

:Template 下絵表示
$
パースビュー以外のビューには、モデリングの下絵としてテンプレート画像を表示することができます。$
テンプレートは各オブジェクト毎に指定することができます。
$
%ImageMenu%->%ImageModelingTemplate%->%ImageImportToXY%,$
%ImageMenu%->%ImageModelingTemplate%->%ImageImportToYZ%,$
%ImageMenu%->%ImageModelingTemplate%->%ImageImportToZX%,$
を実行すると、画像選択用のダイアログが表示されるので、テンプレートとして貼りたい画像を選んでください。$
$
すると、指定したビューに画像が表示されます。このとき、表示される画像の解像度は、環境設定で
設定したサイズに自動的に変換され(デフォルト320x240)、テンプレートの表示位置は、各座標が-10の位置からサイズ20の幅で表示されます。$
$
テンプレートの位置、サイズは将来的にはGUI操作で変更できるようにするつもりですが、今回は簡易的実装
であるため、 暫定ダイアログで数値での指定のみが可能です。$
$

$
<B>
  
  ＊注意： テンプレート画像を拡大しすぎると、 ポリゴンと画像のずれが大きくなります。気をつけてください.$
  
</B>
@Footer




[] ---------------------------------------------------------------------------------
@Header
:ChangeAttribute カラー・属性操作


@Footer

[] ---------------------------------------------------------------------------------
@Header
:UVEdit UV編集
β5.1からUV編集機能が復活しました。現時点ではまだ未完成であるため、一部の操作時にUV値が失われたり誤動作したりする可能性がありますが、
以下のような特徴があります：$
$
1.MarbleCLAYではUV編集を特別な物として扱わず、ポリゴン編集の延長線上にあるものとして扱います。$そのためUV値(MarbleCLAYではUV頂点と呼びます)の選択や移動・回転・拡大縮小
が通常のポリゴン編集とほぼ同じ感覚で行うことができます。$
他のアプリケーションでよくある、UV編集専用のウインドウでの操作や、専用メニュー等を使った操作が使いにくいと感じたことがある方はぜひ試してみてください。$
$
@#uvroll.jpg@$
UV頂点を選択して、%Roll2D%ツールで回転$
$
$
2.UV値の操作をポリゴン操作と同等にするために、UV値の他に第三の要素としてD値を追加して三次元オブジェクトとして扱います。$
UVDを透視図で表示して操作することで、入り組んだ複雑なオブジェクトのUV頂点が把握しやすく、選択しやすくなります。$
(UVWとせずにUVDとしたのは、今のところ作者の手元にUVW値を持つオブジェクトを扱えるアプリケーションがないので試せない=W値をエクスポートする事がない事と、
第三の要素はあくまでもダミー=dummyであることを明示したかった為です。将来的にUVWという表現に変更するかもしれません。)$
$
@#uvpers.jpg@
$
$
UV編集をポリゴン編集と同等に扱うようにしたため、現時点では以下のような欠点があります:$
1.UVを編集しているのか、ポリゴンを編集しているのかがわかりにくく混乱する可能性がある。$
2.UV編集とポリゴン編集を同等にしようとこだわるあまり、UIの設計に迷いがあり、次の機能が未実装：$
2-1．<S>UV頂点を、別のUV頂点に溶接できない</S> <B>面生成ツールを使うことでドラッグ&ウェルドが出来るようになりました。 beta5.3</B>$
2-2. 面のUV値を別の面にコピー&ペーストできない$
$
$
|AttachUVValue UV値割り当て

UVを割り当てて、テクスチャ用のテンプレートを作る手順をサンプルファイルを用いて説明していきます。$
まず最初に%FileMenu%->%FileOpen%を実行して、samplesフォルダ内の"Ceratophrys.mcl"ファイル(ベルツノガエル)を開いておいてください。$
$
]UVSelectMesh UVを割り当てたい部分を選択する
サブメッシュ"top"の横の赤い枠で囲まれたアイコンをクリックするとベルツノガエルの顔・背面・腹面のメッシュが選択されます。$
この部分にUV値を割り当てます。$
$
@#uvstep1.jpg@$
$
]UVAttach UV割り当て
%ImageMenu%->%UVGenerate%を実行するとダイアログが表示されます。$
マッピング形状には"カスタム"を選択し、中心軸に"Z軸"を選択して"OK"ボタンを押してください。$
$
@#uvstep2j.jpg@$
]UVCheck1 UV確認
%WaySplitBar%の右から5番目のアイコンをクリックしてUVビューを表示します。$
U値、V値がそれぞれ0～1.0の範囲で割り当てられている事が確認できます。(UVビュー内に薄い点線で囲まれた部分が0から1.0の範囲)$
$
@#uvstep3.jpg@$
]UVCheck2 UVD確認
%WaySplitBar%の右から8番目のアイコンをクリックしてUVDビューを表示します。(下図では更に各ビューを%FlatPreview1%表示にしています)$
UVDビューで確認すると、ベルツノガエルの背面と腹面がUVビューでは重なっていることがわかります。$
$
そこで、腹面を切り離して移動させることにします。$
$
@#uvstep4.jpg@$
]AbdomenSplit 腹面を切り離す
1.UVDビューで腹面部分のメッシュを選択します。(通常の透視図面で選択してもかまいませんが、その場合、次のコマンドを実行する前にUVDビューに切り替えておいてください)$
2.%MeshMenu%->%MeshPolySeparate%を実行する。$
$
これで腹面のUVメッシュが背面から切り離されます。$
$
@#uvstep5.jpg@$
]AbdomenRoll 腹面を回転させる準備をする
1.%Roll2D%ツールを選択$
2.下図の頂点をShift+クリックする$
$
@#uvstep6.jpg@$
]AbdomenRoll2 腹面を回転させる
ハンドルの一点をShiftキーを押しながらドラッグして180度回転させます。$
$
@#uvstep7.jpg@$
]AllUVSet 全ての面にUV割り当て
上記要領で、口腔内、目、手足のUVを割り当てていくと、UV値が0～1.0内に収まらなくなっている事が多いので、
%ScaleTool%ツールを選び、全てを選択して0～1.0に収まるように縮小します。$
$
@#uvstep8.jpg@$
$
|MekeUVtemplate UVテンプレート作成
UV割り当てが終わったら、UVテンプレートを作成します。$$
%ImageMenu%->%UVBurn%を実行するとダイアログが表示されるので、「一旦消去してから作成」にチェックを入れ、適当な解像度を入力します。$
$
@#uvstep9j.jpg@$
]UVTemplate UVテンプレート確認
上記ダイアログのOKボタンを押すとUVテンプレートが作成されます。$
$
UVビューを表示するとUVメッシュが焼き付けられたテンプレート画像が背景に表示されていることが確認できます。$
$
このテンプレートを外部ソフトで開いてテクスチャを作る場合、%ObjectWindow%で"UV Template"を選択し、%ImageMenu%->%ImageCopyToClipborad%
を実行して、テンプレート画像をクリップボードにコピーして外部ソフトで編集してください(外部ソフトで画像の解像度を変更することも可)。$
$
@#uvstep10.jpg@$
$
|UVMapping テクスチャ貼り付け

1.外部ソフトで編集したテクスチャ画像をいったんbmpやjpg等で保存$
2.適当なマテリアルの拡散光マップに保存した画像ファイル名を設定$
3.マテリアルをオブジェクトに適用$
$
(外部で作った画像を再度UVテンプレートにペーストし、UVテンプレートをテクスチャとして利用する方法もありますが、説明は割愛します)$


|UVFinish 完成
上記手順で作成した画像をテクスチャとして設定して、とりあえず完成するとこのようになります。(%ShaderPreview%を使ってバンプマップをプレビューしています)$
$
@#uv_finish.jpg@

@Footer


[] ---------------------------------------------------------------------------------
@Header
:HighlevelEdit 高度な編集

|VertexColision 頂点衝突検知

頂点移動(押しだし、拡大縮小を含む)を行った直後に、コマンドを実行することで、
各頂点がその操作によって移動した軌跡の間に面があった場合に、以下の動作を行います。$
$
$
<B>
　＊注意：、エッジ同士、ポリゴン同士の衝突検知が備わっていないため、 頂点がすり抜ける等限界があります。$
　 また非常に処理が重いです。$
</B>

|EffectFilter エフェクトフィルター

$

|BooleanCut ブーリアンカット
<FONT COLOR="#FF8080">v2のみの機能</FONT>$

MarbleCLAYでは二つのメッシュ間の交線を求め、その線でメッシュをカットする機能を%@BooleanCut%と呼んでいます。
通常のブーリアンのように、二つのオブジェクトの差や和を求めることができるわけではないので、この名は不適当の
ような気もしますが、メッシュ間の交線で分割することさえできれば、その後、手作業で差や和の形状に加工することが
できるので、このようなネーミングにしています。$
$
<B>この機能は開発中であるため、ほぼ使用できないと思っておいてください。v2以降で改善する予定です</B>
$
$
%@BooleanCut%の手順：$
1.%@BooleanCut%の対象となる二つのメッシュを同じオブジェクトの中に作成してください。$
2.二つのメッシュを構成する面を全て選択してください。(この時、%DoubleClickSel%機能等を使うと簡単に選択が可能です)$
3.%MeshMenu%->%MeshBooleanCut%を実行してください。$
4.二つのメッシュ間の交線で、メッシュが分割されます。$
$



@Footer

[] ---------------------------------------------------------------------------------

@Header
:SimpleBone 簡易ボーン
MarbleCLAYのボーンは、アニメーションや他のアプリケーションへの書き出しを前提にしたものではありません。ボーンの仕様は
各アプリケーションによりまちまちであるため、書き出しを前提に設計を行うと最大公約数的なものになり、制限が大きくなるためです。$
(ただし、MCLファイルには頂点毎のボーンウェイト情報が書き出されているので、他のアプリへのコンバータソフトを作ることは可能だと思っています)$
$
MarbleCLAYのボーンは、単純なポーズのオブジェクトをモデリング中に、時々最終イメージに近いポーズをさせた
モデルの形状を確認することで、イメージからのずれの修正やモデリング作業に向けるモチベーションを維持することを主な用途として想定しています。$
$
この用途のためには、$
$
1.ボーンは簡単に組み込める$
2.変形状態と通常状態を簡単に行き来できる。$
3.変形状態のままモデリングできる。(現時点では未達成)$
$
の条件が考えられます。1,2の条件で示しているように"簡単"さを追求したかったため"簡易"ボーンと名づけています。$
$


|BonePrepare ボーン組み込み準備

1.適当なメッシュモデルを用意し開く。(適当なモデルが無い場合Bone_Tut.mclを開いてください)$
$
もしくは$
$
2.%PolygonOperation%を参照して、メッシュモデルを作成してください。$
$
@#bone1.jpg@$

|BoneDraw ボーン作成
1.作業面をXZ面に設定して %BoneDrawTool%を選びオブジェクトの中心部を左ドラッグしてボーンを描く。$
左ドラッグ中に右ドラッグするとボーンの太さを変更できます。$
@#bone2.jpg@$
$
2.この時、ボーンがオブジェクトにスナップしてしまい、下図のように正しく中心部にボーンを作れないことがあります。$
(%SelectFilter%で%VertexFilter%等をOFFにして、ボーン描画時にオブジェクトにスナップしないように作成できますが、ここでは中心からずれてしまったと
想定します)$
@#bone3.jpg@$
$
3.キャラクタが対称モデルの場合、最初のボーンは対称の中心面に位置しているほうが良いので、
%PartsMenu%->%PartsToWorkplane% を実行してください。$
@#bone4.jpg@$
(ボーンが対称面に移動しました。)$
$

4.新しい場所(この例ではとかげの首の付け根)をドラッグしてボーンを描くと、前回作成したボーンの子として新しいボーンが作成されます。$
@#bone5.jpg@$
$
5.この要領で続けてボーンを描いていきます。$
@#bone6.jpg@$
$

6.続いて腕のボーンを作成します。XY平面を作業面にしておいてください。$
次に、(下の例では胴体の)ボーンをクリックすると、そのボーンが選択されます。$
@#bone7.jpg@$
$
7.続いて新しくボーンを作成すると、そのボーンは選択されていたボーンの子になります。$
同じ要領で腕のボーンを作成します。$
@#bone8.jpg@$
$
8.正面から見て腕のボーンの位置がずれている場合は、%MoveTool%ツールを選び、腕の付け根のボーンを選んで適当な位置に移動させます。$
@#bone9.jpg@$
$
9.オブジェクトが見難い場合は%ObjectWindow%で"Root"を選択してオブジェクトとボーンを同時にアクティブにしてください。$
更に、必要に応じて%Roll2D%等でボーンを回転させて微調整をします$
@#bone10.jpg@$
$
10.右腕のボーンを作ります。$
腕の付け根のボーンを選び、%PartsMenu%->%ParsMirror%を実行すると、左腕のボーン構成がミラーコピーされ、右腕のボーンが作成されます。$
@#bone11.jpg@$
$
11.これまでの作業と同じ要領で、全てのボーンを作成します。$
@#bone12.jpg@$
$
12.再度%ObjectWindow%で"Root"を選択してオブジェクトとボーンを同時にアクティブにして、メッシュがボーンからはみでている部分が無いかチェックします。$
この例では顎のボーンが細く、メッシュがはみでていたので%MoveTool%を選んで顎のボーンをクリックし、Y軸方向の拡大ハンドルをドラッグしてボーンを大きくしています。$
@#bone13.jpg@$
掌のボーン等も同様にサイズを変更しておきます。$
(ハンドルが見難い場合は%Manipulator%をOFFにし、ハンドルがつかみ難い場合は視点を適当に変更してください)$
$

|AttachBone ボーンを適用
1.ボーンを作成し終わったら、一番上位の階層のボーンとメッシュモデルを選択して$
@#bone14.jpg@$
$
2.%PartsMenu%->%AttachBoneSimple%を実行してください。$
@#bone15.jpg@$
ボーンがシンプルに表示され、変形準備が整いました。$
$

|DeformBone ボーン変形
1.%MoveTool%ツール選択して、動かしたいボーンを選択し、ハンドル上の各ポイントをドラッグすることで
オブジェクトが変形します。
@#bone16.jpg@$
$
|DetachBone ボーンを解除
変形を解除して、メッシュ編集を行いたい場合は$
%PartsMenu%->%DetachBoneSimple%を実行してください。$
$
|AdvancedBone 高度なボーン操作
v2では頂点毎にボーンを割り当てたり、ボーン割り当てを解除せずに変形状態だけを非アクティブにしたりアクティブにする事ができます。$
ただし、こちらはまだ仕様が変わる可能性があるのでドキュメント化できていません。$
$

@Footer

[] ---------------------------------------------------------------------------------

@Header
:HighlightElement ハイライト表示
%SelectFilter%で設定されている要素の上に、マウスカーソルを持って行くと、その要素が%@HighlightElement%されます。$
$
|HilightAtVertex 頂点のハイライト表示
頂点の上にカーソルがある場合、 頂点の色がハイライトカラーで強調表示され、その頂点に接続されているエッジが
ハイライトカラーで通常表示されます。$
もしエッジに接続されているもう片方の頂点が選択されている頂点だった場合、そのエッジは選択カラーで通常表示されます。
この機能を使って、頂点が複雑な個所でも、ある程度任意に頂点を選択することができます。$
$

|HightlightEdge エッジのハイライト表示
エッジの上にカーソルがある場合、エッジがハイライトカラーで強調表示されます。$
ただし、エッジの両端の頂点が選択されている頂点だった場合、カラーは変化せず、強調表示されます。$
$

|HightlightPolygon 面のハイライト表示
面の上にカーソルがある場合、面がハイライトカラーで強調表示されます。$
ただし、面に含まれるエッジの両端の頂点が選択されている頂点だった場合、カラーは変化せず、強調表示されます。$
$

|HighlightObject オブジェクトのハイライト表示
%ObjectWindow%のメッシュ名の上にカーソルがある場合、そのメッシュ(もしくはサブメッシュ)がハイライト表示されます。$
この機能を使うとマシン負荷が大きくなる可能性があるため、機能をOFFにすることができます。$
機能OFFボタンは%ObjectWindow%の下部にある@#obj_highlight.gif@ボタンです。$


@Footer


[] ---------------------------------------------------------------------------------

@Header
:TestRendering テストレンダリング &actTestRender

スムースシェーディング状態の確認用に実装した機能。$
鋭いエッジには未対応であるため、エッジが立っている部分などが意図した通りに表現できません。$
現時点では、有機的なものの形状を確認するためだけに使用可能と考えておいてください。$
$
現時点ではテクスチャ情報を編集しにくい等、汎用性にかけています。この先、ある程度のテクスチャ情報を指定できるような機能をつけるつもりですが、シーン編集できるレベル
までの機能追加予定はありません。(断言は出来ませんが)$
<B>β5.1からマテリアル属性をポリゴンに割り当てることができるようになり、テクスチャ情報の編集が可能になりました。</B>

$
MegaPOVについては、POV-Ray関連のサイトなどで調べてください。作者自身この機能を
つけるにあたって真剣に調べ始めたばかりですので、詳しい説明はできません。$
$
POV-Ray3.1と、MegaPOV0.7以降が正常にインストールされていれば、%TestRendering%を実行すると
自動的にMegaPOVが起動し、レンダリングが開始されます。$
MarbleCLAYからはレンダリングサイズなどの指定を行っていませんので、注意してください。$
既にMegaPOVが起動されている場合は、MegaPOV側で手動でレンダリングを実行する必要があります。$
<B>β5.1からMegaPOV0.7および、POV-Ray3.5をサポートしました</B>
$
:TestRenderRedQueen2 テストレンダリング &actTestRenderRRT
$
2005/2/13現在、Redqueenのフリー版は公開されていません。$
$
この機能/ヘルプ内容の扱いはRedqueenの次期バージョンの公開形態が判明してから再度検討します。$
$

参考：(以下の情報はRQ2Betaを元に書いたもの。) $
$
$
Redqueen2との連携       2003/12/29 T.Maeda$
$
β5.3eからテストレンダリングに国産レンダリングソフト"Redqueen2"が追加されました。$
redqueen2については
http://www.teamredqueen.com
を参照してください。$
$
●導入$
・最初にRedqueenのバイナリの位置を Option->環境設定->テストレンダリングにて指定してください。$
$
・次にSampleフォルダにある"rq2_sample2.mcl"ファイルを開いてください。$
$
・オブジェクトウインドウでRootを選択してください$
$
・Option->テストレンダリング(RRT2)を実行してください。$
$
・Redqueen2が呼び出され、レンダリング終了後、画像が表示されます。$
$
・直接レンダリングする必要がない場合、エクスポートにてrrtファイルを書き出してください。(RRT2にチェックを入れる事)$
$
●設定あれこれ$
$
まだRedqueenのフォーマットが完全に確定していないと思いますので、今回のMarbleCLAYでは各種設定のGUIが非常に貧弱になっていますが、その分自由度を高くしています。この先、マテリアルパラメータ等が増えても簡単に対応できます。$
$
・レンダリング設定$
オブジェクトウインドウでRootを選び、右クリックメニューから"追加情報"を選択してください。$
ダイアログが開きますので、その中のエディタに$
$
<!----> [rq_render]tracedepth 3$
$
等と記入してください。(レンダリング設定を行わない場合、適当なデフォルト値が設定されます)$
$
・カメラ設定$
これもRootの追加情報で$
$
<!----> [rq_camera]oversampling 10$
$
等と記入してください。カメラ位置等は現在の視点になります。$
$
・バックグラウンド$
同じく$
$
<!----> [rq_background]～$
$
です。$
$
・オブジェクトアトリビュート$
アトリビュートはマテリアルと同じような扱いにしようかと思ったんですが、とりあえずオブジェクトに持たしています。各オブジェクトの追加情報を開いて、$
$
<!----> [rq2attr]primaryunvisible$
$
等としてください。$
スムージング等、アトリビュートとして扱われないものは$
$
<!----> [rq]smoothing 30$
$
等と入力してください。$
$
・ライト$
MarbleCLAYはモデラなのでライトオブジェクトは持っていないため、オブジェクトをライトとして変換します。オブジェクトの追加情報に$
$
<!----> [rq_light]pointlight$
$
続いて$
$
<!----> [rq]color 1 1 1$
<!----> [rq]photon 5000$
$
等と記入してください。$
位置情報はオブジェクトの中心位置が利用されます。(arealightではポリゴンの各面を面ライトとして設定しますが、完全ではありません。その他のライトは中心位置のみの利用なのでどんな形状でもかまいません)$
$
$
・マテリアル$
マテリアルを選び、追加情報を開いて以下のように記入してください。$
$
<!----> [rq]frostness 1$
$
等。(color, reflection, transparency,specular等はマテリアル設定が反映されますが、各項目の関係がよくわかっていないため、現状はかなり適当です。MarbleCLAYによる自動設定が不安な場合は追加情報にて明示的に指定してください)$
$                                                                                                                                                                                                                         
・マップ画像$
ppmファイルで出力されます。(将来のバージョンではpngに変更します。)$
$
使い方は以上です。$
$
●今後の予定$
・現在のrq2betaでは同一オブジェクトに複数のマテリアルを割り当てることができませんが、これについては要望を出していますので近いうちにrq2側で対応されると思います。この場合、MarbleCLAY側での特別な処理は必要ありませんので、そのまま対応できます。$
$
・現在のRQ2ではpngファイルを正しくマッピングできないため、画像をppmで出力していますが、ppmファイルだと画像の確認が面倒なので将来的にpngに変更します。(この問題もレポートを出していますので近いうちに対応されると思います。)$
$
・追加情報の編集をダイアログで行うのは手間がかかるのでモーダレス化を考えています。$
$
・マテリアル形式の変換方法をより良くする。(この結果、現在のMarbleCLAYでレンダリングした画像と将来のMarbleCLAYでレンダリングした画像の結果が変わると思います)$
$
・マテリアルの追加情報をマテリアルツリーに表示するようにしたいと考えています$
$


@Footer

[] ---------------------------------------------------------------------------------

@Header
:FileInOut ファイル入出力
$
|ImportFormat インポート

以下のファイルフォーマットに対応しています。$
ただし、対応しているのはそのフォーマットの内のごく一部の機能のみですので、読みこめない場合が多々あります。$
$

]ROK 六角大王(フリー)入力
３面稜線を削除してからインポートしてください。(３面稜線が存在しても、読みこみ自体は可能ですが、
後の作業に支障をきたす可能性が大きい)$
$
]DXFimport DXFフォーマット入力
3DFACEのみに対応しています。 ただし、読みこみ速度が非常に遅いためお勧めしません。
別のソフトで、OBJなどにコンバートしてから読みこんだほうが良いでしょう。$
$
]OBJ Wavefront(obj)フォーマット入力
ポリゴン情報のみに対応しています。グループ情報も含めてインポートできます。$
面のマテリアル情報、スプライン等はサポートしていません。$
$
]RDS RayDreamStudio5入力
バーテックスモデル形式部分にだけ対応しています。$
$
]CarraraFile Carraraフォーマット入力
%RDS%と同様、バーテックスモデル形式部分にだけ対応しています。$
$
]3DS 3DSフォーマット入力
β5.1から3DSフォーマットに対応しました。テストは不十分ですが、マテリアル情報もインポートできます。$
$
]LWOImport LWOフォーマット入力
LWOおよび、LWO2形式で入力できます。$
$
]MQOImporter メタセコイヤフォーマット入力
メタセコイヤ形式のオブジェクトを入力します。ミラー(メタセコイヤ上でXY平面に対するミラーのみ)、および曲面状態も入力できます。$
ただし、中心線の無いミラーオブジェクトは左右が接続された状態にならず、曲面の微妙な形の再現もできません$
$

|Export エクスポート

以下のファイルフォーマットに対応しています。$
<!--
ただし、RayDreamStudio,Poser3以外では試していません。さらに、これら２つのソフトにおいても
十分なテストが出来ているとは言いがたいため、 正しく書き出しできない可能性があります。$
不具合が見つかった場合はその旨、連絡していただければ有りがたいです。その際、可能であれば
不具合が起こるファイル(可能ならばMCL形式で)を送っていただければ、問題解決が早くなりますが
大切なデータでしょうから無理はいいません。$
$
]RDS RayDreamStudio5
多重エッジが無いことを確認してから書き出してください。$
多重エッジは、Edit→多重エッジを選択 を実行した後で、Edit→削除 を行うことで除去
可能です。$
$
曲面化オブジェクトを書き出したい場合は、Mirror/Curve→曲面をポリゴン化 を行い、ポリゴン化
したオブジェクトを書き出してください。 この場合、多重エッジは存在しませんので上記処理は
不要です。$
-->
$
]OBJ Wavefront(obj)フォーマット出力

十分なテストが出来ていません。$
$
]DXFexport DXFフォーマット出力

３DFACE形式で書き出します。 再度MarbleCLAYに読みこむ必要がある場合等はDXFフォーマットを
使用することはお奨めできません。$
$
]POV MegaPOV/POV-RAY3.5(*.pov)フォーマット出力
%TestRendering%用に実装したエクスポーターです。$
POV-Ray非公式版であるMegaPOVおよび、POV-RAY3.5のmesh2形式で書き出します。$
MegaPOVを選んだのは、mesh2形式がMarbleCLAYで扱いやすい形式だったためです。現状ではMegaPOVの
特徴である、優れたレイトレースレンダリングを生かすことは出来ません。$
$
<B>＊注：デフォルトではこの形式で書き出すことはできません。環境設定のテストレンダリングタブで、「MegaPOV書き出しを許可」にチェックを入れてください。
</B>
$

$
]3DS 3DSフォーマット出力
β5.1から3DSフォーマットに対応しました。テストは不十分です。$

$
]LWOExport LWOフォーマット出力
LWOおよび、LWO2形式で出力できます。UV情報を出力する場合、LWO2形式を選んでください$
$
]RRT Redqueenフォーマット出力
まだ未完全ですが、Redqueen形式でオブジェクトを出力します。$
オブジェクトウインドウにて各オブジェクトにRedqueen用の追加情報を追加することでMarbleCLAYを簡易シーンビルダとして
扱うことができるようにしていますが、まだいまいちなのでドキュメントは用意できていません。$
$
]MQOExporter メタセコイヤフォーマット出力
メタセコイヤ形式でオブジェクトを出力します。ミラー、および曲面状態も書き出されますが、曲面のウェイトは書き出されません。$
$

|AutoBackup 自動保存

]AutoBackUpMode 作業状態の自動保存
Option->環境設定 の 「保存」タブで自動保存の設定が可能です。$
指定した時間毎にファイルを自動的に保存します。$
$
MarbleCLAYが異常終了した場合、 次回の起動時に自動保存された
ファイルを開くことが可能です。 完全な復帰は望めません。$
$
また、現状では作業中のドキュメントにしか効果がありません。複数のオブジェクトを
開いて作業している場合は十分に注意してください。$
$
$
]Generation ファイルの世代管理
%OptionMenu%->環境設定 の 「保存」タブでファイル世代管理の設定が可能です。$
ファイルを上書きした場合等に以前のファイルを設定した世代分だけ別名で
保存します。$
誤って上書きしてしまった場合、 File->ドキュメントを開く でダイアログを開き、
下にあるコンボボックスから「Generation File」を選択すると、 世代管理により
バックアップされたファイルを開くことが出来ます。$
$


@Footer

[] ---------------------------------------------------------------------------------
@Header

:Plugin プラグイン
MarbleCLAYの機能はプラグインを記述することで拡張することが可能です。$
$
プラグインはDelphi/C++で記述することができます。詳細はMarbleSDKのドキュメントを参照してください。MarbleSDKは作者のページにて配布しています。$
$
$
:Script スクリプト
スクリプトはプラグインにて実装されます。$
今のところv1betaではスクリプトをサポートしていませんが、v2ではLuaスクリプトをサポートしています。$
スクリプト仕様はプラグインAPIの仕様に左右されるため現時点ではドキュメントが整備されていません。$


@Footer

[] ---------------------------------------------------------------------------------
@Header

:Tips Tips
ここでは、MarbleCLAYを便利に扱うための、ちょっとした機能を説明します。$
$

|Wheel ホイールマウスを使う
ホイールマウスを使うと操作性が向上します。$
デフォルトではホイールには、ホイールコマンドという機能が割り当てられており、
主要な編集ツール(%MoveTool%、%FacetTool%等)をホイールを回すだけで呼び出すこと
が可能です。マウスを移動することなく、ツール変更を行うことができ、慣れれば作業
効率がUPします。$
$
ホイールには、ズーム機能を割り当てることもできますが、この時には右ボタン(もしくはCtrlキー)
を押しながらホイールを回すことで、ホイールコマンド機能を使うことができます。$
(β4.9以前は、ホイールボタン＋ホイールの組み合わせでしたが、使いにくいため右ボタン＋ホイールコマンドに変更しました)
$

|Bend オブジェクトを曲げる

$
]SmoothBend スムースベンド
%SelectMagnet%時、
頂点移動を行なっている最中に、Ctrlキーを押すとオブジェクトをスムースに曲げることができます。$
$
%ToolMoveWindow%の[自動]チェックBOXにチェックを入れていると、Ctrlキーを押さなくても、自動的に曲げが開始されますが、実験中でバグがあるため、不用意に曲がることがあります。その場合は、Ctrlキーを押すことで曲げが解除されます。$
$

@Footer

[] ---------------------------------------------------------------------------------

@Header

\Other 4.その他

:Q&A Q&A
$
!Def numrest dummy
!Def num dummy

@numrest@
<!-- @Num@ -->

$
@S2@Q@Num@@FE@
|QQ 対称図形が乱れる
$
A　現在のバージョンでは、対称化は完全に動作しません。特に頂点にエッジを追加した
場合等に対称化面が消えてしまうことがあります。$
このような場合は、%AllMirror%を実行しなおすか、新しく出来た面を選択して%MirrorMakeMirror%を再度行ってください。$
$                                                                     
また、時々対称化時におかしな状態になるというレポートを頂いています。$
再現性があまりないバグのため、なかなか修正することが出来ていませんので、この手の
バグに遭遇された方はぜひレポートをお願いします。$
$
$
@S2@Q@Num@@FE@
|QQ 一部の曲面が消える
$
A　いくつかの操作で曲面が消えてしまうことがあります。但し内部的には曲面が
消えていない場合が多いので、 その部分を選択して少し動かしてみるか、再度%ChangeSplineSurf%を
実行してみてください。$
$
それでもダメな場合は、レポートをお願いします。$
$

@S2@Q@Num@@FE@
|QQ 間違ってファイルを上書きした場合、どうすればよいか？
$
A　%AutoBackUP%を参照してください$
$

@S2@Q@Num@@FE@
|QQ ショートカットキーが効かない時がある
$
A　
%Window%をドッキングしているときなど、ショートカットの一部が効かない時があります。$
現在分かっているのは以下の２通りです。$
1.ドッキングしているウインドウ上の、エディットコントロールにフォーカスがある場合に、
スペースキーに割り当てられている%QuickTool%が正常に動作しない。$
　これはスペースキーの制御がCheckBox等に奪われているのが原因です。$
　→ TABキーを何回か押すか、図面ウインドウを一度クリックして、エディットコントロールにフォーカスが無い状態にしてください。$
$
2.%ObjectWindow%で、オブジェクトの名前などを編集している時に、Ctrl+C、Ctrl+V等が効かない。$
　→ マウスカーソルの位置によって、ショートカットキーの動作が異なります。$
　→ テキスト編集するときはそのコントロールがあるウインドウの上にマウスカーソルを移動しておいてください$
$

@S2@Q@Num@@FE@
|QQ ワークスペースの変更がうまくいかない
$
A　<s>ワークスペースの変更時、ツールバーの一部などが表示されないことがあります。$
一度ドッキング解除してドッキングしなおすか、MarbleCLAYを終了して、再度起動してください。$
また、現在のバージョンではワークスペース変更をしても%Window%のドッキング状態は変更されません。$</s>
$
<B>色々問題があったので、β5.1でワークスペースの変更機能を削除しました。よりよい形の実装を検討中です</B>
$$

@S2@Q@Num@@FE@
|QQ 画面にゴミが残る
$
A　このバグの修正は後回しになっています。適時「画面の更新」を行ってゴミを消してください。$
$

$
@S2@Q@Num@@FE@
|QQ MacやLinux対応のMarbleCLAYは作成できない？
$
A　開発当初はKylixを用いてLinuxに移植するつもりでしたが、Win32/DelphiとLinux/Kylixとの間で互換性が無い機能を多く使っているため、作業量が膨大になるため取りやめました。$
またMacにはDelphiが無いため、簡単に移植することは不可能です。$


@Footer

[] ---------------------------------------------------------------------------------

@Header
:VideoCard ビデオカードとの相性
$
MarbleCLAYではOpenGLでの描画を行っているため、お使いのビデオカードによっては問題が発生する可能性があります。$
$
多くの問題はビデオカードのドライバを最新のものに更新することで解消することができますが、以下に主要なビデオカード/チップに関する
情報を記述しておきますので、参考にしてください。$
$


|ATI ATI-RADEON
Radeon9700Pro, Radeon X800proで開発/動作確認を行っています。$
そのため、もっともMarbleCLAYに適したビデオカードですが時々一部の面のマテリアルが崩れることがあります。$
$

|NVIDIA NVIDIA-GeForce
$
最近(2005/2)のカードの場合、ドライバのバージョンによって問題が発生することがあります。$
問題が発生した場合、古いバージョンのドライバを試すか、NVZONE等で最新のβドライバを入手して試してみてください。$
$
参考までに当方で動作確認のとれている環境を以下に記します。(PCI ExpressのカードやGeForce6600系等のレポートを頂けるとありがたいです)$
$
GeForceFX5700Ultra/Windows2000/ForceWare61.77 : 問題なし$
GeForce6800(無印)AGP/WndowsXP/ForceWare67.66  : beta5.7以降で対応します$

|PowerVR PowerVR
PowerVR(KYRO)にて、OpenGLの破線表示や頂点表示、マニピュレータのハンドル表示ができない
というレポートをいただいています。$
これはKYROがサイズ1以外の頂点やラインを描画できないという事が原因のようです。ビデオカード固有の問題のため解決は難しいです。$
$
その他、$
簡易対称化、対称図形の作成、などで対称図形を作成し曲面化を行っているオブジェクトを、それとは別のオブジェクトを選択対象とする等して非編集対象とした状態でOpenGL、隠面消去1or2、強調表示でプレビューすると、MarbleCLAYの表示が非常に重くなる。という報告もいただいております。$
こちらはPowerVRが原因だとは断定できていませんが、別の環境(GeForce2MX)で同じ作業を行うと再現できないということなのでPowerVRが原因である可能性が高そうです。$
$
|Intel Intel
Intelのチップセット内蔵のビデオ(855M,830M等)にてOpenGL描画の不具合レポートをいただいていますが、
最新のドライバーに更新することで解決されたようです。$
$
ビデオ機能内蔵のIntelのチップセットをお使いの場合で不具合がある方は、最新のドライバーをお試しください。$
$

|Other その他
その他のビデオカードでの動作状況のレポートをお願いします。$


@Footer

[] ---------------------------------------------------------------------------------

@Header
:謝辞
$
$
!mainend
$
βテストに協力していただいた方々に感謝します。$
$
$
バグレポート等は<A HREF="mailto:esv@nifty.com">esv@nifty.com</A>までお願いします。
些細なものでも結構ですので、よろしくお願いします。$
$
<FONT SIZE="-2">
*管理の都合上、別名のアドレスを使用していますが、いままでののアドレスも使用可能です*
</FONT>
@Footer

[AutoJump.html
:
#<HTML>
!autojump
#<FONT SIZE="+3" FACE="Lucida console" COLOR="#60A030"> MarbleCLAY</FONT>v0.2.15 (β5.1)<BR>
$
$
トピックを検索しています。
$
$
#</BODY></HTML>
