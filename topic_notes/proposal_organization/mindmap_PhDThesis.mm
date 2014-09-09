<map version="docear 1.0" dcr_id="1376331296353_9rdestku24brcdnpm7zkplz5q">
<!--To view this file, download Docear - The Academic Literature Suite from http://www.docear.org -->
<node TEXT="Thesis" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1377191269896" COLOR="#ffffff" BACKGROUND_COLOR="#0099ff">
<font NAME="Segoe UI" SIZE="12" BOLD="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="11"/>
<node TEXT="what am I trying to address?" POSITION="right" ID="ID_871940626" CREATED="1376331419825" MODIFIED="1377193152113">
<edge COLOR="#ff0000" WIDTH="3"/>
<node TEXT="challenges &amp; requirements" ID="ID_292870803" CREATED="1376331443291" MODIFIED="1376331451973">
<node TEXT="resolution" FOLDED="true" ID="ID_907846249" CREATED="1376331475490" MODIFIED="1377166068907"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Standard: &quot;Information Technology, Biometric Data Interchange Format,&quot; ISO/IEC 19794-6:2005
    </p>
  </body>
</html>
</richcontent>
<node TEXT="pixel resolution" FOLDED="true" ID="ID_1873684392" CREATED="1376331556652" MODIFIED="1382466254856"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Quote from &quot;Optics of Iris Imaging Systems&quot;, Ackerman 2013. Chapter from M.J. Burge and K.W. Bowyer (eds.), Handbook of Iris Recognition, Advances
    </p>
    <p>
      in Computer Vision and Pattern Recognition, DOI 10.1007/978-1-4471-4402-1__19,
    </p>
    <p>
      &#169; Springer-Verlag London 2013
    </p>
    <p>
      
    </p>
    <p>
      &quot;...at the time of this writing ISO/IEC standard body has yet to &#64257;nalize what resolution is adequate for iris recognition with proposals ranging from 7 to 20 samples per mm in
    </p>
    <p>
      the object plane.&quot;
    </p>
  </body>
</html>
</richcontent>
<node TEXT="min res (std): 100 pixels across" FOLDED="true" ID="ID_1050825597" CREATED="1378174893042" MODIFIED="1378174906730">
<node TEXT="implies 2.5 - 5 lp/mm on object plane (without aliasing)" ID="ID_1885462260" CREATED="1378174938806" MODIFIED="1378175448664"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      If iris diameter = 10 mm, and we project 100 pixels on the iris, then
    </p>
    <p>
      
    </p>
    <p>
      100 pixels in 10 mm
    </p>
    <p>
      
    </p>
    <p>
      or 10 pixels/mm
    </p>
    <p>
      
    </p>
    <p>
      10 pixels/mm can support a maximum of <b><font color="#ff0033">5 cycles/mm</font></b>&#160;of the object spatial frequency without aliasing. {just satisfy Nyquist criterion, i.e. 2 pixels/cycle with &quot;proper&quot; sampling phase}
    </p>
    <p>
      &#160;
    </p>
    <p>
      =&gt; minimum feature size (in cycles) on the iris (without aliasing) = 0.2 mm.
    </p>
    <p>
      
    </p>
    <p>
      i.e. if we have a &quot;perfect lens&quot; and the minimum feature size on the iris is &gt;= 0.2 mm, then we will not have aliasing.
    </p>
    <p>
      
    </p>
    <p>
      In a conservative case, to faithfully recover object frequencies (irrespective of sampling phase), we should have 4 samples (pixels) per cycle. In this scenario, 10 pixels/mm can support <font color="#ff3333">2.</font><font color="#ff0033">5 cycles/mm</font>&#160;of object spatial frequency =&gt; minimum feature size (in cycles) on the iris = 0.4 mm
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="min res (some systems): 120 pixels across" FOLDED="true" ID="ID_1277799950" CREATED="1376331581658" MODIFIED="1378174919256">
<node TEXT="implies 3 - 6 lp/mm on object plane (without aliasing)" ID="ID_542494001" CREATED="1378173819678" MODIFIED="1378175044865"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      If iris diameter = 10 mm, and we project 120 pixels on the iris, then
    </p>
    <p>
      
    </p>
    <p>
      120 pixels in 10 mm
    </p>
    <p>
      
    </p>
    <p>
      or 12 pixels/mm
    </p>
    <p>
      
    </p>
    <p>
      12 pixels/mm can support a maximum of <font color="#ff0033"><b>&#160;6 cycles/mm</b></font>&#160;of the object spatial frequency without aliasing. {just satisfy Nyquist criterion, i.e. 2 pixels/cycle with &quot;proper&quot; sampling phase}
    </p>
    <p>
      &#160;
    </p>
    <p>
      =&gt; minimum feature size (in cycles) on the iris (without aliasing) = 0.16667 mm.
    </p>
    <p>
      
    </p>
    <p>
      i.e. if we have a &quot;perfect lens&quot; and the minimum feature size on the iris is &gt;= 0.16667 mm, then we will not have aliasing.
    </p>
    <p>
      
    </p>
    <p>
      In a conservative case, to faithfully recover object frequencies (irrespective of sampling phase), we should have 4 samples (pixels) per cycle. In this scenario, 12 pixels/mm can support<font color="#ff0033">&#160;3 cycles/mm</font>&#160;of object spatial frequency =&gt; minimum feature size (in cycles) on the iris = 0.3333 mm
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="min res (current problem): 200 pixels across" FOLDED="true" ID="ID_1266574358" CREATED="1376331607410" MODIFIED="1376331621170">
<node TEXT="implies 5 - 10 lp/mm on the object plane (without aliasing)" ID="ID_1087871030" CREATED="1378173841993" MODIFIED="1384326708171"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      If iris diameter = 10 mm, and we project 200 pixels on the iris, then
    </p>
    <p>
      
    </p>
    <p>
      200 pixels in 10 mm
    </p>
    <p>
      
    </p>
    <p>
      or 20 pixels/mm
    </p>
    <p>
      
    </p>
    <p>
      20 pixels/mm can support a maximum of <font color="#ff0033"><b>10 cycles/mm</b></font>&#160;of the object spatial frequency without aliasing. {just satisfy Nyquist criterion, i.e. 2 pixels/cycle with &quot;proper&quot; sampling phase}
    </p>
    <p>
      &#160;
    </p>
    <p>
      =&gt; minimum feature size (in cycles) on the iris (without aliasing) = 0.1 mm = 100 um
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      i.e. if we have a &quot;perfect lens&quot; and the minimum feature size on the iris is &gt;= 0.1 mm, then we will not have aliasing.
    </p>
    <p>
      
    </p>
    <p>
      In a conservative case, to faithfully recover object frequencies (irrespective of sampling phase), we should have 4 samples (pixels) per cycle. In this scenario, 20 pixels/mm can support <font color="#ff0033">5 cycles/mm</font>&#160;of object spatial frequency =&gt; minimum feature size (in cycles) on the iris = 0.2 mm
    </p>
    <p>
      
    </p>
    <p>
      ..... ON SECOND THOUGHTS IT SEEMS TO ME THAT THE OBJECT'S MINIMUM FEATURE SIZE SHOULD BE 50 MICRONS ....
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="This also implies that the minimum feature size on the iris is about 0.1 mm or 100 um" ID="ID_844037479" CREATED="1378366731000" MODIFIED="1378366786612">
<icon BUILTIN="ksmiletris"/>
</node>
</node>
<node TEXT="Tidbits @ Ref" FOLDED="true" ID="ID_754680460" CREATED="1382495011740" MODIFIED="1382496022028">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT="At the time of writing this Chapter, the ISO/IEC standard body has yet to &#xfb01;nalize what resolution is&#xa;adequate for iris recognition with proposals ranging from 7 to 20 samples per mm in the object plane." ID="ID_132393849" CREATED="1382470815113" MODIFIED="1382494919400" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf" MOVED="1382495019726">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="22" object_number="594" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The standards (ISE/IEC 2004) recommend a resolution of 200 pixels across the eye and demand at least 100 pixels." ID="ID_735958572" CREATED="1378183690236" MODIFIED="1378183690236" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf" MOVED="1382496008289">
<pdf_annotation type="BOOKMARK" page="9" object_number="274" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="spatial resolution" FOLDED="true" ID="ID_1282815457" CREATED="1376331562654" MODIFIED="1376331566275">
<node TEXT="min res (standard): 2 lpmm @ 60% contrast or higher" ID="ID_1811347097" CREATED="1376331624687" MODIFIED="1376331650385"/>
<node TEXT="Tidbits @ refs" FOLDED="true" ID="ID_917142348" CREATED="1378398586725" MODIFIED="1378398613503">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT="The resolution we require, as speci&#xfb01;ed in the ISO standard for iris images [18] is of the order of 100 &#x3bc; m = 0.01 cm [Ref# 18 is ISO/IEC JTC 1/SC 37 N 504, &#x201c;Biometric Data Interchange Formats &#x2013; Part 6: Iris Image Data&#x201d;.]" ID="ID_1452440641" CREATED="1378397410205" MODIFIED="1378397410205" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398597260">
<pdf_annotation type="BOOKMARK" page="14" object_number="282" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[Spatial resolution (optical) specification] A current ISO/IEC proposal for MTF of an iris imaging system suggests a minimum of 2 line pairs/mm on an object with at least 60% contrast. " ID="ID_653260929" CREATED="1382470815235" MODIFIED="1382470815235" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf" MOVED="1382494956137">
<pdf_annotation type="BOOKMARK" page="22" object_number="604" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Tidbits @ refs" FOLDED="true" ID="ID_606450916" CREATED="1378104832262" MODIFIED="1378104857752">
<edge COLOR="#666666" WIDTH="thin"/>
<node TEXT=" The  average diameter of the iris is 12 mm, and the pupil size can vary from 10% to 80% of the iris diameter [2]. " ID="ID_479093536" CREATED="1377753275248" MODIFIED="1377753275248" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378104861560">
<pdf_annotation type="BOOKMARK" page="6" object_number="8372" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="To capture the rich details of iris patterns, an imaging system should resolve a minimum of 70 pixels in iris radius." ID="ID_1546006903" CREATED="1378104624164" MODIFIED="1378104624165" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107038428">
<pdf_annotation type="BOOKMARK" page="2" object_number="122" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The Pupil radius can range from 0.1 to 0.8 of the iris radius." ID="ID_1705410730" CREATED="1378104624228" MODIFIED="1378104624229" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107114055">
<pdf_annotation type="BOOKMARK" page="1" object_number="124" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="IRIS SIZE is de&#xfb01;ned as the number of pixels across the iris radius, when the iris boundary is modeled by a circle. Irises too small or too large increase the likelihood of FNMR and FMR." ID="ID_732435965" CREATED="1377588779889" MODIFIED="1377588779889" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf" MOVED="1378108453961">
<pdf_annotation type="BOOKMARK" page="15" object_number="2188" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="IRIS SIZE is determined by the spatial sampling rate (e.g. line-pairs/radian) of the image acquisition device and the distance between the subject and the acquisition device." ID="ID_389653081" CREATED="1377588779889" MODIFIED="1377588779889" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf" MOVED="1378108522117">
<pdf_annotation type="BOOKMARK" page="15" object_number="2189" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Down sampling ICE2006 images by a factor of two did not affect FNMR or FMR, suggesting that an iris radius of [58-62] pixels is suf&#xfb01;cient for recognition (iris radius of the ICE2006 images has a mean of 120 and an inter-quartile range of [116-124])." ID="ID_1189870698" CREATED="1377588779889" MODIFIED="1377588779889" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf" MOVED="1378108544098">
<pdf_annotation type="BOOKMARK" page="15" object_number="2190" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Thus, we conclude that irises suitable for recognition shall have at least 120 pixels across diameter (60 across radius)." ID="ID_415941539" CREATED="1377588779873" MODIFIED="1377588779873" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf" MOVED="1378108589064">
<pdf_annotation type="BOOKMARK" page="84" object_number="2193" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Given that median iris diameter of our test data is 240 pixels with interquartile range of 234-248, images down-sampled by n = 2 have a median of 120 pixel across iris diameter and interquartile range of 116-124. This, over the range of&#xd;average human irises (radius of 10.2 mm-13mm per [5]), corresponds to 10-12 pixels per millimeter." ID="ID_1886580542" CREATED="1377588779857" MODIFIED="1377588779857" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf" MOVED="1378108663627">
<pdf_annotation type="BOOKMARK" page="84" object_number="2194" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="For most &#x201c;good&#x201d; iris images, the diameter of the iris in the image&#xd;exceeds 200 pixels." ID="ID_694451024" CREATED="1378147853853" MODIFIED="1378147853854" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2008_The%20iris%20challenge%20evaluation%202005_Phillips%20et%20al..pdf" MOVED="1378147955703">
<pdf_annotation type="BOOKMARK" page="2" object_number="226" generation_number="0" document_hash="F4396E459693A2D4B9F35667BF4C2ADAC6E34B3452163DACF4CD2164637B0">
    <pdf_title>The Iris Challenge Evaluation 2005</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="DOF" ID="ID_883955396" CREATED="1376331485270" MODIFIED="1382494671420">
<node TEXT="General notes" ID="ID_1865568503" CREATED="1382494673402" MODIFIED="1382494676861">
<node TEXT="To quantify depth of &#xfb01;eld requires specifying the dimension of a blur spot in the image plane beyond which a point image is judged out of focus circle of confusion" ID="ID_1172970200" CREATED="1382470815073" MODIFIED="1382494705837" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf" MOVED="1382494699706">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="6" object_number="584" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="COC: To quantify depth of &#xfb01;eld requires specifying the dimension of a blur spot in the image plane beyond which a point image is judged out of focus. The size of such a blur spot is referred to as the &#x201c;circle of confusion&#x201d; in the context of depth of &#xfb01;eld." ID="ID_307834003" CREATED="1382470815222" MODIFIED="1382470815222" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf" MOVED="1382494841283">
<pdf_annotation type="BOOKMARK" page="6" object_number="603" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="De&#xfb01;ning the task-speci&#xfb01;c depth-of-&#xfb01;eld: Based on our characterization of the algorithm used in the task-based system, we can de&#xfb01;ne the depth of &#xfb01;eld of the system as a range of object distances where a select band of spatial frequencies used by the algorithm are maintained above a predetermined threshold SNR. " ID="ID_63881441" CREATED="1382944036065" MODIFIED="1382944036065" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20recognition%20at%20a%20distance%20with%20expanded%20imagi_Narayanswamy%20and%20Silveira.pdf" MOVED="1382944194563">
<pdf_annotation type="BOOKMARK" page="4" object_number="96" generation_number="0" document_hash="EA548EBBAADB5E1491DBBD723F19CB3187F0EAD2822A2287FF4F2ACF549EA1">
    <pdf_title>Iris Recognition at a Distance with Expanded Imaging Volume</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The depth of &#xfb01;eld of an imaging system increases linearly with increasing F/#" ID="ID_1510125186" CREATED="1382944036049" MODIFIED="1382944036050" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20recognition%20at%20a%20distance%20with%20expanded%20imagi_Narayanswamy%20and%20Silveira.pdf" MOVED="1382944318614">
<pdf_annotation type="BOOKMARK" page="3" object_number="94" generation_number="0" document_hash="EA548EBBAADB5E1491DBBD723F19CB3187F0EAD2822A2287FF4F2ACF549EA1">
    <pdf_title>Iris Recognition at a Distance with Expanded Imaging Volume</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Capture volume" ID="ID_353211908" CREATED="1382494677349" MODIFIED="1382494680812"/>
</node>
<node TEXT="Questions" FOLDED="true" ID="ID_159828860" CREATED="1377653520802" MODIFIED="1377653526381">
<node TEXT="What is the maximum distance over which one do iris acquisition" FOLDED="true" ID="ID_264057818" CREATED="1377653527511" MODIFIED="1383001534628" COLOR="#000000" BACKGROUND_COLOR="#66ff00">
<node TEXT="due to diffraction effects" ID="ID_252859976" CREATED="1377653578597" MODIFIED="1377653584603"/>
<node TEXT="due to IFOV of detector pixel" ID="ID_902540779" CREATED="1377653584942" MODIFIED="1377669309592"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The size of the pixel and the minimum pixel resolution also determines the bounds... the maximum distance over which iris image may be acquired by an imaging system.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      Lets say that the system's lateral magnification in `M` at the maximum distance `u_max`.
    </p>
    <p>
      
    </p>
    <p>
      then,<font color="#3300ff">&#160;<i>M =&#160;&#160;f/(u_max - f)</i></font>
    </p>
    <p>
      
    </p>
    <p>
      where, `f` is the focal length of the lens.
    </p>
    <p>
      
    </p>
    <p>
      Let the [square] pixel&#160;&#160;be `p` mm on each side, then the instantaneous FOV of the pixel (pixel area project on to the object space) <font color="#3300ff"><i>p^2/M</i>&#160; mm^2</font>
    </p>
    <p>
      
    </p>
    <p>
      Or the projected pixel side on the object space is <font color="#0000cc"><i>p/M</i></font>&#160;mm&#160;
    </p>
    <p>
      
    </p>
    <p>
      Let the minimum number of pixels on the iris be N_min (like 200 pixels)
    </p>
    <p>
      And let the diameter of the iris be `d_iris`
    </p>
    <p>
      
    </p>
    <p>
      Then,&#160;&#160;
    </p>
    <p>
      
    </p>
    <p>
      (d_iris/p)*M &gt;= N_min
    </p>
    <p>
      
    </p>
    <p>
      or
    </p>
    <p>
      
    </p>
    <p>
      f/(u_max - f) &gt;= (N_min*p)/d_iris
    </p>
    <p>
      
    </p>
    <p>
      u &lt;=&#160;(1 + d_iris/(N_min*p))*f
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      ====================================
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      <font color="#000080">In [<b>4</b>]:</font>&#160;def u_max(f, p):
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      <font color="#000080">&#160;&#160;&#160;...:</font>&#160;return (1.0 + d_iris/(N_min*p))*f
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      <font color="#000080">In [<b>5</b>]:</font>&#160;N_min = 200.0
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      <font color="#000080">In [<b>6</b>]:</font>&#160;d_iris = 11.0
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      <font color="#000080">In [<b>7</b>]:</font>&#160;u_max(100.0, 10e-3)
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      <font color="#8b0000">Out[<b>7</b>]:</font>&#160;650.0
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      <font color="#000080">In [<b>8</b>]:</font>&#160;u_max(200.0, 10e-3)
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      <font color="#8b0000">Out[<b>8</b>]:</font>&#160;1300.0
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      <font color="#000080">In [<b>9</b>]:</font>&#160;u_max(200.0, 5e-3)
    </p>
    <p style="margin-right: 0px; text-indent: 0px; margin-left: 0px; margin-bottom: 0px; margin-top: 0px">
      <font color="#8b0000">Out[<b>9</b>]:</font>&#160;2400.0
    </p>
    <p>
      ====================================
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Tidbits @ refs" ID="ID_1424059129" CREATED="1378118745014" MODIFIED="1378118779556">
<edge COLOR="#666666" WIDTH="thin"/>
<node TEXT="We will also refer to iris pixels and sensor pixels. In this context the iris pixel is the smallest feature of interest on the iris and a sensor pixel is the smallest feature that can be resolved in an image that is focused onto the sensor." ID="ID_1591202973" CREATED="1378397410190" MODIFIED="1378397410190" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378397633251">
<pdf_annotation type="BOOKMARK" page="11" object_number="276" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="current iris acquisition systems" ID="ID_1583006898" CREATED="1376331508919" MODIFIED="1376413968301">
<node TEXT="current solutions" ID="ID_324280954" CREATED="1376413812346" MODIFIED="1376413823035">
<node TEXT="for stand-off distances" FOLDED="true" ID="ID_927816964" CREATED="1377166153936" MODIFIED="1377166206779">
<node TEXT="TO DO: Should make a table for presenting this data" FOLDED="true" ID="ID_617736572" CREATED="1377190143562" MODIFIED="1382580704264">
<node TEXT="example" FOLDED="true" ID="ID_1328089920" CREATED="1382580708852" MODIFIED="1382580713193">
<node TEXT="Table II. Comparison of relevant features of the proposed system with other state of the art systems. " ID="ID_646866968" CREATED="1376337784712" MODIFIED="1376337784712" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf" MOVED="1382580746664">
<pdf_annotation type="BOOKMARK" page="28" object_number="38" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Table" ID="ID_1760027080" CREATED="1378120665165" MODIFIED="1378121118465" MOVED="1382604227472"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <b>Capabilities of some current (2006) iris image capture systems&#160;</b>[Ref: &#160;Iris Recognition in Less Constrained Environments, 2008, matey et. al.]
    </p>
    <p>
      
    </p>
    <table style="border-bottom-width: 0; border-right-width: 0; border-top-width: 0; border-left-width: 0; width: 80%; border-style: solid" border="0">
      <tr>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            Maker
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            Model
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            Capture Vol (lit)
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            Standoff (meter)
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            Ver time (sec)
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            Motion ?
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            Capture Both Iris?
          </p>
        </td>
      </tr>
      <tr>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            LG
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            3000
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            0.04
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            0.1
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            2
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            x
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            x
          </p>
        </td>
      </tr>
      <tr>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            LG
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            4000
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            0.05
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            0.37
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            2
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            x
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            yes
          </p>
        </td>
      </tr>
      <tr>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            OKI
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            IRISPASS-M
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            30.
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            0.45
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            2
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            x
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            yes
          </p>
        </td>
      </tr>
      <tr>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            OKI
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            IRISPASS-H
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            0.003
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            0.038
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            4
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            x
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            x
          </p>
        </td>
      </tr>
      <tr>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            Panasonic
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            BM-ET300
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            0.5
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            0.35
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            4
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            x
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            yes
          </p>
        </td>
      </tr>
      <tr>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            SecuriMetrics
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            PIER 2.3
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            0.008
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            0.12
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            4
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            x
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            x
          </p>
        </td>
      </tr>
      <tr>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            Sarnoff
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            IOM (TM) Portal
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            14.
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            3.0
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            3
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            yes
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            yes
          </p>
        </td>
      </tr>
      <tr>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            Sarnoff
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            IOM (TM) Over door
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            3.6
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            1.6
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            3
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            yes
          </p>
        </td>
        <td style="border-bottom-width: 1; border-right-width: 1; border-top-width: 1; border-left-width: 1; width: 14%; border-style: solid" valign="top">
          <p style="margin-left: 1; margin-bottom: 1; margin-top: 1; margin-right: 1">
            yes
          </p>
        </td>
      </tr>
    </table>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="some example systems" FOLDED="true" ID="ID_1291020260" CREATED="1377418334479" MODIFIED="1377418339678">
<node TEXT="[StateOfTheArt@IrisAtaDistance] In 2005, Fancourt [36 -- Iris recognition at a distance] published a report on this system; it acquired iris images at 10 m using a custom designed telescope; ...  The system demonstrated feasibility of iris recognition at a distance, if not practicality." FOLDED="true" ID="ID_621059657" CREATED="1378397410236" MODIFIED="1383010444947" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398926825">
<pdf_annotation type="BOOKMARK" page="27" object_number="296" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      128 pixels on 11 mm iris
    </p>
    <p>
      
    </p>
    <p>
      According to my calculations based on pixel size of 9 um (information from the sensor data)
    </p>
    <p>
      The focal lengths for 5m standoff distance approx. 584 mm
    </p>
    <p>
      The focal length for the 10m standoff distance is approx. 1169 mm
    </p>
    <p>
      
    </p>
    <p>
      F/# for both is 5.757
    </p>
    <p>
      Lateral magnification for both is M = 0.10477
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <span style="font-family: Calibri,sans-serif; font-size: 11.0pt; line-height: 115%"><font size="11.0pt" face="Calibri,sans-serif">DOF is calculated to be approximately 7.6 mm </font></span>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="done" ID="ID_1534911195" CREATED="1383115820543" MODIFIED="1383115822153"/>
</node>
<node TEXT="This iris at a distance system is based on a Meade LX200-R F/10 8 inch re&#xfb02;ecting telescope and a long distance illuminator consisting of an 850 nm LED focused on target to produce irradiance of approximately 1 mW/cm 2" FOLDED="true" ID="ID_1320665647" CREATED="1378397410228" MODIFIED="1378397410229" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398943761">
<pdf_annotation type="BOOKMARK" page="28" object_number="298" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
<node TEXT="done" ID="ID_724925406" CREATED="1383115825474" MODIFIED="1383115828084"/>
</node>
<node TEXT="[StateOfTheArt@IrisAtaDistance] In 2005, Sarnoff demonstrated its Iris on the Move portal system ... was described in detail by Matey [37, 38 -- IOM, Iris Recognition in Less Constrained Environments]. It was capable of acquiring iris images at distances of approximately 2&#x2013;3 m with the subject walking at a normal pace. " FOLDED="true" ID="ID_536408446" CREATED="1378397410232" MODIFIED="1378397410232" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398951831">
<pdf_annotation type="BOOKMARK" page="27" object_number="297" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
<node TEXT="standoff dist = 3 m" ID="ID_556616518" CREATED="1382577314394" MODIFIED="1382577330677"/>
<node TEXT="lens focal length = 210 mm" ID="ID_210251729" CREATED="1382577331528" MODIFIED="1382577345000"/>
<node TEXT="camera pixel pitch = 0.0074 mm" ID="ID_1234717995" CREATED="1382577345874" MODIFIED="1382577389397"/>
<node TEXT="100 pixels on the iris" ID="ID_1615821658" CREATED="1382577390144" MODIFIED="1382577408744"/>
<node TEXT="Capture volume = 20x20x5 cm @ 100pixels/iris" ID="ID_1687782958" CREATED="1382577431526" MODIFIED="1382577469685"/>
<node TEXT="Capture volume = 10x10x5 cm @ 200pixels/iris" ID="ID_1040385216" CREATED="1382577484045" MODIFIED="1382577494558"/>
<node TEXT="Uses focusing and video to improve the capture volume depth" ID="ID_918924650" CREATED="1382577507861" MODIFIED="1382577529311"/>
<node TEXT="done" ID="ID_139957708" CREATED="1383115830995" MODIFIED="1383115834965"/>
</node>
<node TEXT="[StateOfTheArt@IrisAtaDistance] AOptix (2007) incorporated adaptive optics techniques, ... operates with a standoff distance of 1.5&#x2013;2.5 m with a roughly trapezoidal capture volume that is &#x223c; 1 m tall and 0.75 m wide at a 2 m standoff, for a capture volume of approximately 0.75 m 3" ID="ID_751034027" CREATED="1378397410225" MODIFIED="1378397410225" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398955494">
<pdf_annotation type="BOOKMARK" page="28" object_number="299" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[StateOfTheArt@IrisAtaDistance] AOptix TM has also worked on longer standoff systems. In June 2007, they demonstrated a system utilizing onboard coaxial imaging/illumination and adaptive optics to provide automated iris image capture at up to 18 m. [Figure in PDF...using telescope]" FOLDED="true" ID="ID_910490623" CREATED="1378397410268" MODIFIED="1378397410268" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398961550">
<pdf_annotation type="BOOKMARK" page="29" object_number="300" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
<node TEXT="done" ID="ID_352904902" CREATED="1383115853268" MODIFIED="1383115854418"/>
</node>
<node TEXT="[StateOfTheArt@IrisAtaDistance] Honeywell developed their CFAIRS (combined face and iris recognition system) under contract to the US government. Their system is designed to acquire face and iris images from multiple subjects at distances from 1 to over 5 m." FOLDED="true" ID="ID_104588698" CREATED="1378397410271" MODIFIED="1383544742387" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398964786">
<pdf_annotation type="BOOKMARK" page="30" object_number="301" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
<node TEXT="Reference the patient" ID="ID_457914870" CREATED="1383544747223" MODIFIED="1383544767253"/>
</node>
<node TEXT="If the sensor pixel is 10 &#x3bc; m, the magni&#xfb01;cation is M = 10/100 = 0.1 ==&gt; M is proportional to sensor_pixel/iris_pixel" ID="ID_1672483251" CREATED="1378397410215" MODIFIED="1378397410215" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398967305">
<pdf_annotation type="BOOKMARK" page="15" object_number="283" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[StateOfTheArt@IrisAtaDistance] The HBOX (TM) from Global Rainmakers Inc. provides capability of capturing subjects in motion, similar to the capability of the Iris on the Move TM portal.... image capture at &#x223c; 1.5 m. (2007)" ID="ID_1412601228" CREATED="1378397410275" MODIFIED="1378397410275" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398969621">
<pdf_annotation type="BOOKMARK" page="31" object_number="302" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[StateOfTheArt@IrisAtaDistance] Bashir [44 -- Eagle Eye] published a description of the Retica Eagle-Eyes TM system with data that demonstrates iris recognition at 3.5&#x2013;4.5 m. Retica states in their online literature that their latest Eagle-Eyes TM system provides reliable capture at 50 m. To the authors&#x2019; knowledge, that claim has not yet been publicly demonstrated &#x2013; though that could change before this book goes to press." ID="ID_1803294924" CREATED="1378397410278" MODIFIED="1378397410278" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398973042">
<pdf_annotation type="BOOKMARK" page="32" object_number="303" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Long Range Iris Acquisition systems by CyLab @ CMU (S Venugopalan, Marios Savvides etal) 8 meters standoff distance, 800 mm lens, 200 pixels across," FOLDED="true" ID="ID_615875583" CREATED="1382579859933" MODIFIED="1382579968266">
<node TEXT=" It  is capable of capturing images of  the iris up  to  distances  of 8  meters with a  resolution  of 200  pixels  acro ss  the  diameter.  If  the  resolution  require&#xad;ment is decreased to 150  pixels,  then the same system may be  used  to capture images fro m up  to  12  meters." ID="ID_1974957491" CREATED="1382580068746" MODIFIED="1382580068746" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2011_Long%20range%20iris%20acquisition%20system%20for%20stationary%20_Venugopalan%20et%20al..pdf" MOVED="1382580113540">
<pdf_annotation type="BOOKMARK" page="1" object_number="184" generation_number="0" document_hash="52AD528FDA2C49DC38E1B7FE8D3ECC69866A62FB73E33D61FCEB57985356">
    <pdf_title>Long Range Iris Acquisition System for Stationary and Mobile SUbjects</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Tidbits from references" FOLDED="true" ID="ID_1800136449" CREATED="1377190149281" MODIFIED="1377190173492">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT="Dong et al. [38] discuss the design of a system to image the iris &#x201c;at a distance&#x201d;, allowing a standoff of 3 meters. " ID="ID_529483868" CREATED="1377165930657" MODIFIED="1377165930657" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_A%20Survey%20of%20Iris%20Biometrics%20Research%202008&#x2013;2010_Bowyer%20et%20al..pdf" MOVED="1377190216766">
<pdf_annotation type="BOOKMARK" page="3" object_number="173" generation_number="0" document_hash="3044859131E339C39CE5346C1EF26912B3C76F2E326244BC260A850CCC13CF8">
    <pdf_title>A Survey of Iris Biometrics Research: 2008-2010</pdf_title>
</pdf_annotation>
</node>
<node TEXT="To date the authors can find references for only four iris systems that  have  demonstrated  stand-off  distances  of  greater  than  1 meter.  These  systems  are  the  GE  Global  Research  Stand-off Iris  Recognition  System  operating  at  1.5  meters  [4],  the AOptix InSight System operating at 2 meters [5], the Sarnoff Iris on the Move systems operating at up to 3 meters [6], and the  L-1 Eagle-Eyes system operating at  up to 10  meters [7]" ID="ID_1381548964" CREATED="1377417762297" MODIFIED="1377417762298" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Design%20and%20implementation%20of%20a%20long%20range%20iris%20rec_De%20Villar%20et%20al..pdf" MOVED="1377418382992">
<pdf_annotation type="BOOKMARK" page="1" object_number="66" generation_number="0" document_hash="53B7A152E0A3B1C4BC25506CAE647BA1812D5BE795CFD557E9D15AA18A9C6E38">
    <pdf_title>Design and Implementation of a Long Range Iris Recognition System</pdf_title>
</pdf_annotation>
</node>
<node TEXT="At this time (summer 2008) there are no deployed commercial systems operating beyond &#x223c; 1 m. However, there a number of prototypes that have been demonstrated and some of these are approaching commercial deployments." ID="ID_1823572197" CREATED="1378397410246" MODIFIED="1378397410246" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398909178">
<pdf_annotation type="BOOKMARK" page="27" object_number="295" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="for capture volume" ID="ID_1064284413" CREATED="1377166207399" MODIFIED="1377166214468">
<node TEXT="Techniques to extend DOF" ID="ID_1785494010" CREATED="1377166247001" MODIFIED="1377166254804">
<node TEXT="stop down aperture" FOLDED="true" ID="ID_136986598" CREATED="1382576972418" MODIFIED="1382597846424"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is really not an option as there are
    </p>
    <p>
      
    </p>
    <ol>
      <li>
        Spatial resolution loss
      </li>
      <li>
        Loss in SNR
      </li>
      <li>
        Increase in exposure time --- can lead to motion blur
      </li>
    </ol>
  </body>
</html>
</richcontent>
<node TEXT="S/N in the reduced aperture approach is inversely proportional to the second power of the depth of field, with irradiance held constant" ID="ID_289787066" CREATED="1382576743215" MODIFIED="1382576743215" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20on%20the%20Move%20Acquisition%20of%20Images%20for%20Iris%20R_Matey%20et%20al..pdf" MOVED="1382577215140">
<pdf_annotation type="BOOKMARK" page="6" object_number="192" generation_number="0" document_hash="E1EAD91BC8AA56E2908D8926546F8AA5C8A099A32B7051D89839C2889159AC5">
    <pdf_title>Iris on the Move: Acquisition of Images for Iris Recognition in</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="image restoration" FOLDED="true" ID="ID_905130635" CREATED="1377166284993" MODIFIED="1377166292184">
<node TEXT="deconvolution using blur PSF" FOLDED="true" ID="ID_843728885" CREATED="1377166293398" MODIFIED="1382597906084"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      2008_Enhanced usability of iris recognition via efficie_He et al.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Image deblurring relies on image deconvolution to restore the unblurred image L from the blurred image I. The procedure is often formulated in a Bayesian framework [6, 9]," ID="ID_1641555462" CREATED="1384330619319" MODIFIED="1384330619319" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2009_Image%20deblurring%20for%20less%20intrusive%20iris%20capture_Huang%20et%20al..pdf" MOVED="1384330647899">
<pdf_annotation type="BOOKMARK" page="3" object_number="1747" generation_number="0" document_hash="A4B7DAF9672240357438D89389B433161E795E753E8981A084FFAA496726C99C">
    <pdf_title>Image Deblurring for Less Intrusive Iris Capture</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The in-focus and defocused iris images are collected&#xd;from 28 subjects. Multiple defocused images for each subject are captured around &#xb1;25 cm away from the in-focus position. Each subject is enrolled into the iris database with his or her in-focus iris image." ID="ID_1449291064" CREATED="1384330619339" MODIFIED="1384330619339" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2009_Image%20deblurring%20for%20less%20intrusive%20iris%20capture_Huang%20et%20al..pdf" MOVED="1384330667004">
<pdf_annotation type="BOOKMARK" page="6" object_number="1749" generation_number="0" document_hash="A4B7DAF9672240357438D89389B433161E795E753E8981A084FFAA496726C99C">
    <pdf_title>Image Deblurring for Less Intrusive Iris Capture</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" Our method makes full use of the prior information of iris images. Firstly, bene&#xfb01;ting from the properties of iris images, a set of initialization methods for point spread function (PSF) is proposed to obtain a better start point than that of common deblurring methods." ID="ID_1867199315" CREATED="1384331359625" MODIFIED="1384331359625" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2012_Iris%20Image%20Deblurring%20Based%20on%20Refinement%20of%20Point_Liu%20et%20al..pdf" MOVED="1384331399942">
<pdf_annotation type="BOOKMARK" page="1" object_number="326" generation_number="0" document_hash="EA41FEEC8796551AFB4A4AC4E4221923862DA2D79ABF30D71DB0451E14B12">
    <pdf_title>Iris Image Deblurring Based on Refinement of Point Spread Function</pdf_title>
</pdf_annotation>
</node>
<node TEXT="In this paper, an automatic method named Iris image Deblurring with PSF Re&#xfb01;nement (IDPR) is proposed to recover the separability between blurred iris images." ID="ID_1510109119" CREATED="1384331359642" MODIFIED="1384331359642" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2012_Iris%20Image%20Deblurring%20Based%20on%20Refinement%20of%20Point_Liu%20et%20al..pdf" MOVED="1384331422072">
<pdf_annotation type="BOOKMARK" page="2" object_number="328" generation_number="0" document_hash="EA41FEEC8796551AFB4A4AC4E4221923862DA2D79ABF30D71DB0451E14B12">
    <pdf_title>Iris Image Deblurring Based on Refinement of Point Spread Function</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" To the best of our knowledge, IDPR is the &#xfb01;rst iris image deblurring method incorporating PSF arameters estimation and blind deconvolution." ID="ID_1570758833" CREATED="1384331359648" MODIFIED="1384331359648" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2012_Iris%20Image%20Deblurring%20Based%20on%20Refinement%20of%20Point_Liu%20et%20al..pdf" MOVED="1384331445375">
<pdf_annotation type="BOOKMARK" page="8" object_number="329" generation_number="0" document_hash="EA41FEEC8796551AFB4A4AC4E4221923862DA2D79ABF30D71DB0451E14B12">
    <pdf_title>Iris Image Deblurring Based on Refinement of Point Spread Function</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Restoration using Constraint Least Square filtering" FOLDED="true" ID="ID_375937282" CREATED="1384324831571" MODIFIED="1384324848795">
<node TEXT=" Because the PSF parameters were precisely estimated in terms of camera optics, measured focus scores, and a constrained least square (CLS) restoration &#xfb01;lter, iris image restoration was greatly enhanced." ID="ID_390351414" CREATED="1384326714922" MODIFIED="1384326714922" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2007_Real-Time%20Image%20Restoration%20for%20Iris%20Recognition%20S_Kang%20and%20Park.pdf" MOVED="1384326749055">
<pdf_annotation type="BOOKMARK" page="2" object_number="174" generation_number="0" document_hash="FDFCB5AFFD53AECEAB4E7021C0D716745E4D231CD545E67DBFF1EC18D2DAE2">
    <pdf_title>Real-Time Image Restoration for Iris Recognition Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[I think this might be used as a disadvantage ... for image restoration techniques] In general, the farther the Z-position of the eye from the DOF region is, the greater the degree of blurring in iris images becomes. Therefore, the PSF parameter and the weight value of the noise-regularization term of the restoration &#xfb01;lter have to be changed according to the degree of blurring for accurate iris image restoration." ID="ID_984212807" CREATED="1384326714942" MODIFIED="1384326714943" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2007_Real-Time%20Image%20Restoration%20for%20Iris%20Recognition%20S_Kang%20and%20Park.pdf" MOVED="1384326764004">
<pdf_annotation type="BOOKMARK" page="2" object_number="176" generation_number="0" document_hash="FDFCB5AFFD53AECEAB4E7021C0D716745E4D231CD545E67DBFF1EC18D2DAE2">
    <pdf_title>Real-Time Image Restoration for Iris Recognition Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Gaussian blur&#x201d; [8], [10]. Therefore, the PSF was de&#xfb01;ned as" ID="ID_1684996341" CREATED="1384326714955" MODIFIED="1384326714955" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2007_Real-Time%20Image%20Restoration%20for%20Iris%20Recognition%20S_Kang%20and%20Park.pdf" MOVED="1384326795439">
<pdf_annotation type="BOOKMARK" page="6" object_number="177" generation_number="0" document_hash="FDFCB5AFFD53AECEAB4E7021C0D716745E4D231CD545E67DBFF1EC18D2DAE2">
    <pdf_title>Real-Time Image Restoration for Iris Recognition Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Our goal is to recover a &#x2019;well focused&#x2019; image &#x2c6;I(x, y) from the defocused (observed) one I(x, y) . In this work, the constrained least squares &#xfb01;lter (CLSF) method [9]" ID="ID_1521728933" CREATED="1384329448986" MODIFIED="1384329448986" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Enhanced%20usability%20of%20iris%20recognition%20via%20efficie_He%20et%20al..pdf" MOVED="1384329459981">
<pdf_annotation type="BOOKMARK" page="3" object_number="148" generation_number="0" document_hash="F51B60FD94F1C18AA33BCCC0A1EFB9B16755BDD8EAF4A36582CD9AA5B7F5E4B">
    <pdf_title>Zhaofeng He, Zhenan Sun, Tieniu Tan and Xianchao Qiu</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Before applying Eq. 3, we have to know h(x, y) and &#x3b3; . In our work, h(x, y) is modeled as a circular spot [9]" ID="ID_862002522" CREATED="1384329448996" MODIFIED="1384329448997" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Enhanced%20usability%20of%20iris%20recognition%20via%20efficie_He%20et%20al..pdf" MOVED="1384329475106">
<pdf_annotation type="BOOKMARK" page="3" object_number="151" generation_number="0" document_hash="F51B60FD94F1C18AA33BCCC0A1EFB9B16755BDD8EAF4A36582CD9AA5B7F5E4B">
    <pdf_title>Zhaofeng He, Zhenan Sun, Tieniu Tan and Xianchao Qiu</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Based on this idea, different defocus parameters ( R and &#x3b3; ) are adaptively determined based on the spot distance." ID="ID_1663951063" CREATED="1384329449006" MODIFIED="1384329449006" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Enhanced%20usability%20of%20iris%20recognition%20via%20efficie_He%20et%20al..pdf" MOVED="1384329486109">
<pdf_annotation type="BOOKMARK" page="3" object_number="150" generation_number="0" document_hash="F51B60FD94F1C18AA33BCCC0A1EFB9B16755BDD8EAF4A36582CD9AA5B7F5E4B">
    <pdf_title>Zhaofeng He, Zhenan Sun, Tieniu Tan and Xianchao Qiu</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Axicons" ID="ID_1103981417" CREATED="1383116560458" MODIFIED="1383116608826"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An Axicon is a specialized type of lens which has a conical surface
    </p>
    <p>
      &#61656; Achieves large DOF and high resolution simultaneously
    </p>
    <p>
      &#61548; Produces low contrast images requiring digital processing.
    </p>
    <p>
      &#61548; Difficult to manufacture
    </p>
    <p>
      &#61548; &#8220;Diffractive elements for imaging with extended depth of focus&#8221;
    </p>
    <p>
      Grzegorz Miku&#322;a et.al. Optical Engineering 44(5), 058001 (May 2005)
    </p>
    <p>
      &#61548; J.H. Mcleod &#8220;Axicons and their uses&#8221; J. Opt. Soc. Am. 50 166-169
    </p>
    <p>
      (1960)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Phase-shifting Apodizers" ID="ID_1113877060" CREATED="1383116608795" MODIFIED="1383116691528"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Increases depth of field
    </p>
    <p>
      &#61656; narrower main lobe in the point spread
    </p>
    <p>
      function
    </p>
    <p>
      &#61656; Reduces image quality due to
    </p>
    <p>
      accentuated side lobes
    </p>
    <p>
      &#61656; May introduce artifacts
    </p>
    <p>
      
    </p>
    <p>
      Controlled phase shift in Pupil Plane increases depth of field
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Diffractive Optical Elements" ID="ID_1821975651" CREATED="1383116691517" MODIFIED="1383116747327"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;Diffractive elements form the optical
    </p>
    <p>
      wavefront to maximize depth of field.
    </p>
    <p>
      &#61656; High wavelength sensitivity with
    </p>
    <p>
      broadband illumination
    </p>
    <p>
      &#61548; High chromatic aberration
    </p>
    <p>
      &#61548; R. Liu, B. Dong, and B. Gu, &#8220;Implementation
    </p>
    <p>
      of pseudonondiffracting beams by use of
    </p>
    <p>
      diffractive phase element, &#8220; Appl. Optics, 37,
    </p>
    <p>
      8219-1228, 1998
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Achromatic Hybrid Refractive Diffractive Lenses" ID="ID_1814452543" CREATED="1383116747316" MODIFIED="1383116765870"/>
<node TEXT="wavefront coding" ID="ID_1948122014" CREATED="1377166268207" MODIFIED="1377166274362">
<node TEXT="description" ID="ID_1119379900" CREATED="1377190270797" MODIFIED="1382597939038">
<node TEXT="Dowski and Cathey [16] have shown in 1995 that a particular phase  encoding  aspheric  element  (mask)  has  a  remarkable  ability  to  produce  focus-invariant  imagery.  The  mask  is placed near the aperture stop of the image acquisition system and produces a blurred image, but the nature of the blur remains  largely  invariant  over  a  wide  range  of  defocus  values  (see  Figure  2)." ID="ID_1647608690" CREATED="1382597852171" MODIFIED="1382597852171" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2004_Computational%20imaging%20systems%20for%20iris%20recognition_Plemmons%20et%20al..pdf" MOVED="1382597932671">
<pdf_annotation type="BOOKMARK" page="4" object_number="112" generation_number="0" document_hash="6C6E9CBC977B52EA25E951A92311A55C49B674ABE607139DA695FFDCDE7835">
    <pdf_title>Computational Imaging Systems for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" The  optical  system  is  focused  at  the  nominal  object distance and images of the object are recorded exactly as in a traditional system. In the processing step the recorded images are  convolved  with  a  filter  to  arrive  at  the  &#x201c;decoded&#x201d;  image,  fit  for  use  in  the  application  of  choice." ID="ID_1328560486" CREATED="1382598241543" MODIFIED="1382598241544" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Extended%20depth-of-field%20iris%20recognition%20system%20fo_Narayanswamy%20et%20al..pdf" MOVED="1382598328124">
<pdf_annotation type="BOOKMARK" page="6" object_number="171" generation_number="0" document_hash="FE7F23A0BED8F27EADBE8DF2394E6F3B2CDA8B6B817C4F884B692E34F917CA32">
    <pdf_title>Extended depth-of-field iris recognition system for a workstation environment</pdf_title>
</pdf_annotation>
</node>
<node TEXT="But the blur is nearly uniform across the image and does not vary significantly as a function of field or object distances within certain specifications." ID="ID_1788973228" CREATED="1382598241552" MODIFIED="1382598241552" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Extended%20depth-of-field%20iris%20recognition%20system%20fo_Narayanswamy%20et%20al..pdf" MOVED="1382598338449">
<pdf_annotation type="BOOKMARK" page="6" object_number="172" generation_number="0" document_hash="FE7F23A0BED8F27EADBE8DF2394E6F3B2CDA8B6B817C4F884B692E34F917CA32">
    <pdf_title>Extended depth-of-field iris recognition system for a workstation environment</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Wavefront coding is a term coined by its pioneers, Dowski and Cathey, to describe the insertion of a phase mask at the pupil of a lens that blurs the image in a manner invariant to object distance such that identical postprocessing can be applied over a large range of defocus to recover an image of high fidelity [6]. Image recovery is made possible because wavefront coding prevents nulls in the MTF over a large range of defocus and thus avoids unrecoverable signal loss at the spatial frequen..." ID="ID_1803308432" CREATED="1382601262861" MODIFIED="1382601262861" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Increasing%20the%20information%20acquisition%20volume%20in%20i_Barwick.pdf" MOVED="1382601509698">
<pdf_annotation type="BOOKMARK" page="1" object_number="358" generation_number="0" document_hash="96F59F74472BE4BEA1F657B3530A8E1D970207F4ACF11987CBA50D97C947155">
    <pdf_title>Increasing the information acquisition volume in iris recognition systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Goal as information capture" ID="ID_36541429" CREATED="1382604712629" MODIFIED="1382604719565">
<node TEXT="[goal is information capture] This is done in contrast to what is typically done with traditional imaging systems in which the optical elements are designed with the goal of improving perceptual image visualization." ID="ID_278149586" CREATED="1382598792573" MODIFIED="1382598792573" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Extending%20the%20imaging%20volume%20for%20biometric%20iris%20re_Narayanswamy%20et%20al..pdf" MOVED="1382604725343">
<pdf_annotation type="BOOKMARK" page="8" object_number="116" generation_number="0" document_hash="D95EE4728334515A676B20E05A31A6B56BFB56591FA5BB5B856FC22538045">
    <pdf_title>Extending the imaging volume for biometric iris recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The goal of the image acquisition design is to capture all the information necessary for the iris code while simultaneously decreasing defocus sensitivity as much as possible. " ID="ID_788258402" CREATED="1382601262871" MODIFIED="1382601262871" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Increasing%20the%20information%20acquisition%20volume%20in%20i_Barwick.pdf" MOVED="1382604735292">
<pdf_annotation type="BOOKMARK" page="1" object_number="359" generation_number="0" document_hash="96F59F74472BE4BEA1F657B3530A8E1D970207F4ACF11987CBA50D97C947155">
    <pdf_title>Increasing the information acquisition volume in iris recognition systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Boddeti and Kumar [19] [using correlation filters] investigate the use of wavefront-coded imagery for iris recognition. This topic has been discussed in the literature before, but Boddeti and Kumar use a larger data set and present experiments to evaluate how different parts of the recognition pipeline (e.g. segmentation, feature extraction) are affected by wavefront coding. They propose using unrestored image outputs from the wavefront-coded camera directly, and test this idea using two different recognition algorithms.  They conclude that wavefront coding could help increase the depth of &#xfb01;eld of an iris recognition system by a factor of four, and that the recognition performance on unrestored images was only slightly worse than the performance on restored images." ID="ID_359243886" CREATED="1377165930623" MODIFIED="1382603221572" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_A%20Survey%20of%20Iris%20Biometrics%20Research%202008&#x2013;2010_Bowyer%20et%20al..pdf" MOVED="1382906898566">
<pdf_annotation type="BOOKMARK" page="3" object_number="175" generation_number="0" document_hash="3044859131E339C39CE5346C1EF26912B3C76F2E326244BC260A850CCC13CF8">
    <pdf_title>A Survey of Iris Biometrics Research: 2008-2010</pdf_title>
</pdf_annotation>
<node TEXT="[to be used in conjunction with wavefront coded systems] Some correlation &#xfb01;lters are invariant to linear operations and should maintain their recognition performance even when the training and testing images are the unrestored (i.e., blurred due to wavefront coding) images produced by the extended depth of &#xfb01;eld imaging system. In this work we investigate the recognition performance of correlation &#xfb01;lters and compare it with the popular iriscode method when the input images are unrestored images produced by the wavefront coding imaging system." ID="ID_21071092" CREATED="1382603240074" MODIFIED="1382603240075" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Extended%20Depth%20of%20Field%20Iris%20Recognition%20with%20Corr_Boddeti%20and%20Kumar.pdf" MOVED="1382603343626">
<pdf_annotation type="BOOKMARK" page="1" object_number="181" generation_number="0" document_hash="603D5E46CB6EA234C2C2A295D4CF7E4FBD37B6E2E7CD7EA31963933EF9B23B4">
    <pdf_title>978-1-4244-2730-7/08/$25.00 &#xa9;2008 IEEE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[Wavefront coding as information capture ... another interesting fact!!] Furthermore,  we  find  that  restorations  that  produce  visually  pleasing  iris  images  often  actually degrade the performance of the algorithm.  " ID="ID_1968695483" CREATED="1382604567381" MODIFIED="1382604567382" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2004_Iris%20recognition%20with%20enhanced%20depth-of-field%20imag_van%20der%20Gracht%20et%20al..pdf" MOVED="1392895669032">
<pdf_annotation type="BOOKMARK" page="1" object_number="507" generation_number="0" document_hash="F9A0E0DF72F9EE60FA66BF243A4873F4D9AE3FD64AC641BFC6FB9C12AB229D25">
    <pdf_title>Iris recognition with enhanced depth-of-field image acquisition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[idea behind using correlation filters] Many correlation &#xfb01;lters (such as the minimum average correlation energy (MACE) &#xfb01;lter) can compensate for any information preserving linear operation as long as the same linear operation is applied on both the gallery and the probe images. So this makes it particularly attractive to use correlation &#xfb01;lters for iris recognition on wavefront-coded imagery.&#xd;Unlike other iris recognition approaches, correlation &#xfb01;lters may allow us to use raw (or unrestored) image outputs from the camera for iris recognition and thus avoid the complexity and hardware associated with processing the camera outputs to obtain restored iris images. " ID="ID_1912461441" CREATED="1382603240088" MODIFIED="1382603240088" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Extended%20Depth%20of%20Field%20Iris%20Recognition%20with%20Corr_Boddeti%20and%20Kumar.pdf" MOVED="1382603359887">
<pdf_annotation type="BOOKMARK" page="1" object_number="185" generation_number="0" document_hash="603D5E46CB6EA234C2C2A295D4CF7E4FBD37B6E2E7CD7EA31963933EF9B23B4">
    <pdf_title>978-1-4244-2730-7/08/$25.00 &#xa9;2008 IEEE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="In this work we use the Optimal Trade-off Synthetic Discriminant Function (OTSDF) &#xfb01;lter which provides an optimal trade-off between the Average Correlation Energy (ACE) and the Output Noise Variance (ONV). " ID="ID_367845915" CREATED="1382603240099" MODIFIED="1382603240099" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Extended%20Depth%20of%20Field%20Iris%20Recognition%20with%20Corr_Boddeti%20and%20Kumar.pdf" MOVED="1382603375984">
<pdf_annotation type="BOOKMARK" page="3" object_number="186" generation_number="0" document_hash="603D5E46CB6EA234C2C2A295D4CF7E4FBD37B6E2E7CD7EA31963933EF9B23B4">
    <pdf_title>978-1-4244-2730-7/08/$25.00 &#xa9;2008 IEEE</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" Our results also show that correlation &#xfb01;lters are better suited to handle out of focus images better&#xd;than a simple Hamming distance based matching because of the built-in tolerance of correlation &#xfb01;lters to noise and entropy-preserving linear operations." ID="ID_1082746360" CREATED="1382603240109" MODIFIED="1382603240109" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Extended%20Depth%20of%20Field%20Iris%20Recognition%20with%20Corr_Boddeti%20and%20Kumar.pdf" MOVED="1382603403990">
<pdf_annotation type="BOOKMARK" page="7" object_number="187" generation_number="0" document_hash="603D5E46CB6EA234C2C2A295D4CF7E4FBD37B6E2E7CD7EA31963933EF9B23B4">
    <pdf_title>978-1-4244-2730-7/08/$25.00 &#xa9;2008 IEEE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="A correlation &#xfb01;lter is a template that is speci&#xfb01;cally designed to recognize a particular pattern class represented by a set of reference patterns " ID="ID_650645265" CREATED="1382603240116" MODIFIED="1382603240116" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Extended%20Depth%20of%20Field%20Iris%20Recognition%20with%20Corr_Boddeti%20and%20Kumar.pdf" MOVED="1382603426922">
<pdf_annotation type="BOOKMARK" page="3" object_number="183" generation_number="0" document_hash="603D5E46CB6EA234C2C2A295D4CF7E4FBD37B6E2E7CD7EA31963933EF9B23B4">
    <pdf_title>978-1-4244-2730-7/08/$25.00 &#xa9;2008 IEEE</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" A given query pattern is matched against this template by performing a cross correlation [implemented in the frequency domain]" ID="ID_188616218" CREATED="1382603240123" MODIFIED="1382603240123" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Extended%20Depth%20of%20Field%20Iris%20Recognition%20with%20Corr_Boddeti%20and%20Kumar.pdf" MOVED="1382603439702">
<pdf_annotation type="BOOKMARK" page="3" object_number="184" generation_number="0" document_hash="603D5E46CB6EA234C2C2A295D4CF7E4FBD37B6E2E7CD7EA31963933EF9B23B4">
    <pdf_title>978-1-4244-2730-7/08/$25.00 &#xa9;2008 IEEE</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Our primary goal is to modify the image  acquisition  to  maximize  the  information  which  is  directly  relevant  to  feature  extraction  in  Module  II  and  the recognition task in Module III.  We refer to such an enhanced system as a computational imaging system. " ID="ID_312735227" CREATED="1382597852156" MODIFIED="1382597852157" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2004_Computational%20imaging%20systems%20for%20iris%20recognition_Plemmons%20et%20al..pdf" MOVED="1382811715267">
<pdf_annotation type="BOOKMARK" page="2" object_number="111" generation_number="0" document_hash="6C6E9CBC977B52EA25E951A92311A55C49B674ABE607139DA695FFDCDE7835">
    <pdf_title>Computational Imaging Systems for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="tidbits @ ref" ID="ID_1756308892" CREATED="1377190274346" MODIFIED="1382811689932">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT="S/N in the wavefront approach is inversely proportional to the first power of the depth of field, with irradiance held constant.  On this basis, it would appear the wavefront approach is a clear winner. However, the wavefront approach is computationally expensive." ID="ID_1441378281" CREATED="1382576743206" MODIFIED="1382576743207" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20on%20the%20Move%20Acquisition%20of%20Images%20for%20Iris%20R_Matey%20et%20al..pdf" MOVED="1382577203154">
<pdf_annotation type="BOOKMARK" page="6" object_number="191" generation_number="0" document_hash="E1EAD91BC8AA56E2908D8926546F8AA5C8A099A32B7051D89839C2889159AC5">
    <pdf_title>Iris on the Move: Acquisition of Images for Iris Recognition in</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Increase DOF from 5 cm to 30 cm" ID="ID_1931116986" CREATED="1382597852142" MODIFIED="1382597852142" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2004_Computational%20imaging%20systems%20for%20iris%20recognition_Plemmons%20et%20al..pdf" MOVED="1382597920103">
<pdf_annotation type="BOOKMARK" page="4" object_number="113" generation_number="0" document_hash="6C6E9CBC977B52EA25E951A92311A55C49B674ABE607139DA695FFDCDE7835">
    <pdf_title>Computational Imaging Systems for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="A  Wavefront  Coded  element  was  custom  designed  for  biometric  iris  recognition  using  the  same  conventional  optical system described in Section 3.1. The recognition algorithm was included in the optimization loop, resulting in a Wavefront Coded  optical  element  specifically  optimized  for  iris  recognition. " ID="ID_238420746" CREATED="1382598241559" MODIFIED="1382598241559" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Extended%20depth-of-field%20iris%20recognition%20system%20fo_Narayanswamy%20et%20al..pdf" MOVED="1382598344775">
<pdf_annotation type="BOOKMARK" page="6" object_number="173" generation_number="0" document_hash="FE7F23A0BED8F27EADBE8DF2394E6F3B2CDA8B6B817C4F884B692E34F917CA32">
    <pdf_title>Extended depth-of-field iris recognition system for a workstation environment</pdf_title>
</pdf_annotation>
</node>
<node TEXT="describes the design of a custom Wavefront Coded optical element optimized for a speci&#xfb01;c signal processing task." ID="ID_1141186243" CREATED="1382598792558" MODIFIED="1382598792558" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Extending%20the%20imaging%20volume%20for%20biometric%20iris%20re_Narayanswamy%20et%20al..pdf" MOVED="1382600057590">
<pdf_annotation type="BOOKMARK" page="8" object_number="115" generation_number="0" document_hash="D95EE4728334515A676B20E05A31A6B56BFB56591FA5BB5B856FC22538045">
    <pdf_title>Extending the imaging volume for biometric iris recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" is a computational or task-based  imaging  technique  where  an  image  is deliberately distorted by a known amount but in a way that is  insensitive  to  misfocus  blur." ID="ID_134628057" CREATED="1382600520366" MODIFIED="1382600520366" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2007_Extended%20evaluation%20of%20simulated%20wavefront%20coding%20_Smith%20et%20al..pdf" MOVED="1382600552833">
<pdf_annotation type="BOOKMARK" page="1" object_number="246" generation_number="0" document_hash="76D637F46739630484DB526D2DF32A5618636278D13E7B487E8C3F98DD685">
    <pdf_title>Extended Evaluation of Simulated Wavefront Coding Technology in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[use of non-separable phase masks] Separable cubic phase plates at the lens pupil have been shown to ameliorate this disadvantage by increasing the depth of field. However, these phase masks have limitations on how efficiently they can capture the information-bearing spatial frequencies in iris images. The performance gains in information acquisition that can be achieved by more general, nonseparable phase masks is demonstrated. " FOLDED="true" ID="ID_1572702967" CREATED="1382600822302" MODIFIED="1382600822302" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Increasing%20the%20information%20acquisition%20volume%20in%20i_Barwick.pdf" MOVED="1382600850784">
<pdf_annotation type="BOOKMARK" page="1" object_number="352" generation_number="0" document_hash="96F59F74472BE4BEA1F657B3530A8E1D970207F4ACF11987CBA50D97C947155">
    <pdf_title>Increasing the information acquisition volume in iris recognition systems</pdf_title>
</pdf_annotation>
<node TEXT="demonstrate that the extra degrees of freedom afforded a more general, nonseparable phase mask will result in less loss of information in the unprocessed image and thus make possible larger depths of field while relaxing the constraints on postprocessing." ID="ID_145761320" CREATED="1382600822319" MODIFIED="1382600822319" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Increasing%20the%20information%20acquisition%20volume%20in%20i_Barwick.pdf" MOVED="1382600855305">
<pdf_annotation type="BOOKMARK" page="2" object_number="354" generation_number="0" document_hash="96F59F74472BE4BEA1F657B3530A8E1D970207F4ACF11987CBA50D97C947155">
    <pdf_title>Increasing the information acquisition volume in iris recognition systems</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Unfortunately increasing depth of field by wavefront coding comes at the cost of a lost signal at high frequencies. This signal loss is due to a mathematical necessity that the OTF becomes more severely low pass with a corresponding broadening of the point spread function (PSF) as defocus sensitivity decreases. " ID="ID_158177565" CREATED="1382601262878" MODIFIED="1382601262878" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Increasing%20the%20information%20acquisition%20volume%20in%20i_Barwick.pdf" MOVED="1382601600632">
<pdf_annotation type="BOOKMARK" page="1" object_number="360" generation_number="0" document_hash="96F59F74472BE4BEA1F657B3530A8E1D970207F4ACF11987CBA50D97C947155">
    <pdf_title>Increasing the information acquisition volume in iris recognition systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="It is possible to extend the depth of field by increasing the subject irradiance and reducing the lens aperture. It is also possible to increase the depth of field through the use of wavefront coding of the optical system, as demonstrated by Narayanswamy et al. [13]. They demonstrated a threefold increase of depth of field in an iris imaging system from approximately 6 cm to approximately 20 cm. Both approaches involve a tradeoff of S/N for depth of field. S/N in the wavefront approach is inver..." ID="ID_1103087408" CREATED="1382576743198" MODIFIED="1382576743198" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20on%20the%20Move%20Acquisition%20of%20Images%20for%20Iris%20R_Matey%20et%20al..pdf" MOVED="1382811675416">
<pdf_annotation type="BOOKMARK" page="6" object_number="190" generation_number="0" document_hash="E1EAD91BC8AA56E2908D8926546F8AA5C8A099A32B7051D89839C2889159AC5">
    <pdf_title>Iris on the Move: Acquisition of Images for Iris Recognition in</pdf_title>
</pdf_annotation>
</node>
<node TEXT="We experimentally demonstrated a 40cm depth of &#xfb01;eld with the Wavefront Coded system, while a comparable traditional imaging system has l6.5cm of depth-of-&#xfb01;eld." ID="ID_1895957883" CREATED="1382944036086" MODIFIED="1382944036087" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20recognition%20at%20a%20distance%20with%20expanded%20imagi_Narayanswamy%20and%20Silveira.pdf" MOVED="1382944119356">
<pdf_annotation type="BOOKMARK" page="11" object_number="98" generation_number="0" document_hash="EA548EBBAADB5E1491DBBD723F19CB3187F0EAD2822A2287FF4F2ACF549EA1">
    <pdf_title>Iris Recognition at a Distance with Expanded Imaging Volume</pdf_title>
</pdf_annotation>
</node>
<node TEXT="This is because the segmentation algorithm is sometimes confused by the Wavefront Coded specular re&#xfb02;ection commonly found in the pupil of the eye" ID="ID_1342728934" CREATED="1382944036073" MODIFIED="1382944036077" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20recognition%20at%20a%20distance%20with%20expanded%20imagi_Narayanswamy%20and%20Silveira.pdf" MOVED="1382944142341">
<pdf_annotation type="BOOKMARK" page="11" object_number="97" generation_number="0" document_hash="EA548EBBAADB5E1491DBBD723F19CB3187F0EAD2822A2287FF4F2ACF549EA1">
    <pdf_title>Iris Recognition at a Distance with Expanded Imaging Volume</pdf_title>
</pdf_annotation>
</node>
<node TEXT="In this application we modi&#xfb01;ed a standard Nikon 210mm F/3.3 lens by adding the Wavefront Coded phase element at the diaphragm of the lens. The camera is a commercially available Pulnix 4-megapixel monochromatic CCD camera." ID="ID_1537896214" CREATED="1382944036056" MODIFIED="1382944036056" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20recognition%20at%20a%20distance%20with%20expanded%20imagi_Narayanswamy%20and%20Silveira.pdf" MOVED="1382944612366">
<pdf_annotation type="BOOKMARK" page="3" object_number="95" generation_number="0" document_hash="EA548EBBAADB5E1491DBBD723F19CB3187F0EAD2822A2287FF4F2ACF549EA1">
    <pdf_title>Iris Recognition at a Distance with Expanded Imaging Volume</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" In this paper we apply Wavefront Coding&#xae; to increase the depth of field without increasing the optical Fr&#x2019;# of an iris recognition system when the subject is at least 2 meters away." ID="ID_682171509" CREATED="1382944035981" MODIFIED="1382944036008" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20recognition%20at%20a%20distance%20with%20expanded%20imagi_Narayanswamy%20and%20Silveira.pdf" MOVED="1382944615105">
<pdf_annotation type="BOOKMARK" page="1" object_number="91" generation_number="0" document_hash="EA548EBBAADB5E1491DBBD723F19CB3187F0EAD2822A2287FF4F2ACF549EA1">
    <pdf_title>Iris Recognition at a Distance with Expanded Imaging Volume</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
</node>
<node TEXT="general volume" ID="ID_16080537" CREATED="1377424532145" MODIFIED="1377424538929">
<node TEXT="WFOV + NFOV combo" FOLDED="true" ID="ID_189726952" CREATED="1377424549137" MODIFIED="1377424560910">
<node TEXT="Wheeler et al. [212] describe a prototype &#x201c;stand-off&#x201d; iris recognition system designed to work at sensor-to-subject distances of up to 1.5 m. The system uses two wide-&#xfb01;eld-of-view cameras to perform face location in the scene and an iris camera and illuminator to image the iris. " ID="ID_896479738" CREATED="1377165930704" MODIFIED="1377165930705" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_A%20Survey%20of%20Iris%20Biometrics%20Research%202008&#x2013;2010_Bowyer%20et%20al..pdf" MOVED="1383115906485">
<pdf_annotation type="BOOKMARK" page="3" object_number="171" generation_number="0" document_hash="3044859131E339C39CE5346C1EF26912B3C76F2E326244BC260A850CCC13CF8">
    <pdf_title>A Survey of Iris Biometrics Research: 2008-2010</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The Wide field of view cameras are generally stationary, and used for initial subject detection" ID="ID_221439824" CREATED="1383544798355" MODIFIED="1383544817289"/>
<node TEXT="The NFOV camera is then used to zoom-in to get a magnified image of the iris" ID="ID_654941796" CREATED="1383544847230" MODIFIED="1383544867601"/>
</node>
<node TEXT="PTZ" FOLDED="true" ID="ID_664254309" CREATED="1382580435580" MODIFIED="1382580485536">
<node TEXT="1.Pan-Tilt-Zoom Camera" ID="ID_65203302" CREATED="1376337784603" MODIFIED="1376337784603" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf" MOVED="1382580489096">
<pdf_annotation type="BOOKMARK" page="3" object_number="1316" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The iris acquisition system uses multiple cameras with  hierarchically-ordered  fields  of  views,  a  highly precise pan-tilt unit (PTU) and a long focal length zoom lens." ID="ID_1765495146" CREATED="1382605067578" MODIFIED="1382605067578" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Video%20Surveillance%20for%20Biometrics%20Long-Range%20Mult_Bashir%20et%20al..pdf" MOVED="1382605104703">
<pdf_annotation type="BOOKMARK" page="1" object_number="114" generation_number="0" document_hash="68F6B62D33523E342BB3336BD34ECC684583D74488148686A6112199BFBC6BF">
    <pdf_title>Video Surveillance for Biometrics: Long-Range Multi-Biometric System</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" pan,  tilt,  zoom,  and  focus  of  the  sensor platform.  A  Modularized  soft ware  control  system  provides scalability  and  fl exible  management.  Commodity  hardware  can be  used  to  control  all  system  components  with  the  exception  " ID="ID_1413381585" CREATED="1382605815092" MODIFIED="1382605815092" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2011_A%20standoff%20multimodal%20biometric%20system_Boehnen%20et%20al..pdf" MOVED="1382605854962">
<pdf_annotation type="BOOKMARK" page="1" object_number="119" generation_number="0" document_hash="4D5B718CF6953E7539C265B9D7E367F79DF6B82C8BDC8E519518969C4AE2">
    <pdf_title>A Standoff Multimodal Biometric System</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" The proposed system has the following three contributions compared with previous works: &#x1; 1 )&#x2; the capture volume is signi&#xfb01;cantly increased by using a pan-tilt-zoom &#x1; PTZ &#x2; camera guided by a light stripe projection, &#x1; 2 )&#x2; the iris location in the large capture volume is found fast due to 1-D vertical face searching from the user&#x2019;s horizontal position obtained by the light stripe projection, and &#x1; 3) zoom-ing and focusing on the user&#x2019;s irises at a distance are accurate and fast using the estimate..." ID="ID_492364107" CREATED="1382606790005" MODIFIED="1382606790005" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2009_Nonintrusive%20iris%20image%20acquisition%20system%20based%20o_Yoon.pdf" MOVED="1382606815751">
<pdf_annotation type="BOOKMARK" page="1" object_number="440" generation_number="0" document_hash="A1843F3718B48A78EF3B5719DDD9BF74553E45AFF086955953B83914C61D87">
    <pdf_title>Nonintrusive iris image acquisition system based on a pan-tilt-zoom camera and light stripe</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="WFOV + NFOV + PTZ combo" FOLDED="true" ID="ID_480233674" CREATED="1377424565415" MODIFIED="1377424576659">
<node TEXT="xxx" ID="ID_1485157064" CREATED="1377424400787" MODIFIED="1377424402455" MOVED="1377424692881"/>
<node TEXT="Tidbits @ refs." FOLDED="true" ID="ID_167281793" CREATED="1377424403576" MODIFIED="1377424779959" MOVED="1377424696850">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT=" The system consists of a stereo pair of  wide  field-of-view  (WFOV)  cameras,  a narrow  field-of-view  (NFOV) camera,  a  pan-tilt  mirror allowing the NFOV  to be  moved  relative  to the  WFOV" ID="ID_1243892329" CREATED="1377424431782" MODIFIED="1377424431782" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/1996_A%20System%20for%20Non-Intrusive%20Human%20Iris%20Acquisition%20_Hanna%20et%20al..pdf" MOVED="1377424730605">
<pdf_annotation type="BOOKMARK" page="1" object_number="55" generation_number="0" document_hash="DE7E06D49F4D4E8BE724E415E71BDA14DE7C2E03AAE80F7E613665830CF99">
    <pdf_title>A System for Non-intrusive Human Iris Acquisition and Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The allowable  volume  accommodates  anyone  between  4  feet  8 inches  (1.43 meters)  and  6 feet  3 inches  (1.90 meters)  in height,  standing between  1 foot (30 centimeters) and 3 feet  (1 meter)  from the rig  and laterally  displaced  by  up  to about  1 foot  6  inches  (0.5 meters)  to either side of  the centerline of  the rig." ID="ID_1820885275" CREATED="1377424431776" MODIFIED="1377424431776" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/1996_A%20System%20for%20Non-Intrusive%20Human%20Iris%20Acquisition%20_Hanna%20et%20al..pdf" MOVED="1377424772959">
<pdf_annotation type="BOOKMARK" page="2" object_number="57" generation_number="0" document_hash="DE7E06D49F4D4E8BE724E415E71BDA14DE7C2E03AAE80F7E613665830CF99">
    <pdf_title>A System for Non-intrusive Human Iris Acquisition and Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The system has two cameras, one is a video camera with wide &#xfb01;eld of view (WFOV) and the other is a high resolution digital still camera with narrow &#xfb01;eld of view (NFOV).&#xd;The video camera captures any change in the view, e.g., a face appears, while the high resolution digital still camera is used to acquire the iris images. In order to move the two camera system so that the eye regions are aligned to the NFOV still camera, a pan-tilt-unit (PTU) is used." ID="ID_392325267" CREATED="1382602211873" MODIFIED="1382602211877" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_A%20system%20for%20automatic%20iris%20capturing_Guo%20et%20al..pdf" MOVED="1382602248336">
<pdf_annotation type="BOOKMARK" page="3" object_number="240" generation_number="0" document_hash="E7B28A76B4C93A874CEAC6CA5EFFD3EB66B412545BB05168EE139A48BC675B">
    <pdf_title>A System for Automatic Iris Capturing</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The two cameras are mounted on a pan-tilt-unit (PTU). In order to move the cameras so that the eye regions are viewed by the high resolution still camera, a PTU is used to support the cameras. Pan and tilt commands are issued when the eye regions" ID="ID_1905389387" CREATED="1382602211891" MODIFIED="1382602211892" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_A%20system%20for%20automatic%20iris%20capturing_Guo%20et%20al..pdf" MOVED="1382602251539">
<pdf_annotation type="BOOKMARK" page="4" object_number="241" generation_number="0" document_hash="E7B28A76B4C93A874CEAC6CA5EFFD3EB66B412545BB05168EE139A48BC675B">
    <pdf_title>A System for Automatic Iris Capturing</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The system uses a wide-baseline stereo pair of fixed widefield-of-view (WFOV) surveillance cameras to locate the subject. Face detection is performed in each camera view, allowing for the detection of the presence of a subject and to determine the location of their face in 3D. This allows us to control a pan-tilt platform to direct a strobed near infrared illuminator and an iris camera toward the subject." ID="ID_560925748" CREATED="1382603999613" MODIFIED="1382603999613" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Stand-off%20iris%20recognition%20system_Wheeler%20et%20al..pdf" MOVED="1382604083469">
<pdf_annotation type="BOOKMARK" page="1" object_number="36" generation_number="0" document_hash="1221FD30652F20624495962C72927BDEFCFB4194374F42507CA72A6A74EE817">
    <pdf_title>Stand-off Iris Recognition System</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Honeywell&apos;s system" FOLDED="true" ID="ID_1893696318" CREATED="1383543456366" MODIFIED="1383544736386" LINK="#ID_104588698">
<node TEXT="WFOV + MFOV + NFOV + PTZ" ID="ID_1348383286" CREATED="1383543484181" MODIFIED="1383544594149"/>
<node TEXT="irises at ranges out to 5 meters" ID="ID_77627820" CREATED="1383544594871" MODIFIED="1383544603928"/>
</node>
</node>
</node>
<node TEXT="Video/multiple shots" FOLDED="true" ID="ID_1397837790" CREATED="1382494873267" MODIFIED="1382494878313">
<node TEXT="[one of several ways to circumvent the problem of limited DOF] A subject approaching the imaging system at 1 m/s passes through the DoF in 30&#x2013;100 ms depending on the subjective de&#xfb01;nition of DoF that is applied. In any case, catching an in-focus image is a challenge for such a system. To address this challenge, we must either use a form of tracking autofocus or capture images fast enough to ensure that some subset of captured images are adequately focused for the purpose of iris recognition. Assuming that the imager can be run at a video rate of 30 frames per seco..." ID="ID_1385050786" CREATED="1382470815247" MODIFIED="1382470815248" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf" MOVED="1382495058998">
<pdf_annotation type="BOOKMARK" page="24" object_number="625" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The decision between a &#xfb01;xed capture volume with pulsed illumination and high video frame rate or tracking autofocus with lower frame rate and continuous illumination is clearly a dif&#xfb01;cult one with different manufacturers taking different approaches." ID="ID_1570435941" CREATED="1382470815261" MODIFIED="1382470815262" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf" MOVED="1382495072067">
<pdf_annotation type="BOOKMARK" page="25" object_number="626" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Tracking" ID="ID_227980099" CREATED="1382505919812" MODIFIED="1382505925739">
<node TEXT="Basically discusses the use of tracking to predict the position of head and eye &#xd;&#xa;and uses a PTZ camera to steer the camera view. Also uses a NFOV and a WFOV&#xd;&#xa;camera. " ID="ID_1684476439" CREATED="1382505889034" MODIFIED="1382505889037" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2012_Relaxing%20the%20constraints%20on%20image%20capture%20for%20iris_Smith%20et%20al..pdf" MOVED="1382505931002">
<pdf_annotation type="COMMENT" page="3" object_number="57" generation_number="0" document_hash="6A5F1C5B4B3341677815C854CABCE2357FD86F8A508D1D10BE8B2080C3591964">
    <pdf_title>n e b a L o a n</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" We have incorpora ted  velocity  estimation  and  focus  tracking  mod&#xad;ules so  that  images may  be  acquired  fro m  subjects  on  the move  as  well" ID="ID_1262437207" CREATED="1382580068763" MODIFIED="1382580068763" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2011_Long%20range%20iris%20acquisition%20system%20for%20stationary%20_Venugopalan%20et%20al..pdf" MOVED="1382580078693">
<pdf_annotation type="BOOKMARK" page="1" object_number="186" generation_number="0" document_hash="52AD528FDA2C49DC38E1B7FE8D3ECC69866A62FB73E33D61FCEB57985356">
    <pdf_title>Long Range Iris Acquisition System for Stationary and Mobile SUbjects</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="multiple cameras" ID="ID_1342532169" CREATED="1382576938838" MODIFIED="1382576944962">
<node TEXT=" [Increase total capture volume] We subsequently built systems with up to four cameras covering a height range of up to 70 cm." ID="ID_703848653" CREATED="1382576743189" MODIFIED="1382576743190" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20on%20the%20Move%20Acquisition%20of%20Images%20for%20Iris%20R_Matey%20et%20al..pdf" MOVED="1382576950776">
<pdf_annotation type="BOOKMARK" page="6" object_number="189" generation_number="0" document_hash="E1EAD91BC8AA56E2908D8926546F8AA5C8A099A32B7051D89839C2889159AC5">
    <pdf_title>Iris on the Move: Acquisition of Images for Iris Recognition in</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The iris acquisition system uses multiple cameras with  hierarchically-ordered  fields  of  views,  a  highly precise pan-tilt unit (PTU) and a long focal length zoom lens." ID="ID_492005358" CREATED="1382605067578" MODIFIED="1382605067578" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Video%20Surveillance%20for%20Biometrics%20Long-Range%20Mult_Bashir%20et%20al..pdf" MOVED="1382605104703">
<pdf_annotation type="BOOKMARK" page="1" object_number="114" generation_number="0" document_hash="68F6B62D33523E342BB3336BD34ECC684583D74488148686A6112199BFBC6BF">
    <pdf_title>Video Surveillance for Biometrics: Long-Range Multi-Biometric System</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Eagle-Eyes uses multiple cameras with hierarchically-ordered field of views, a highly precise pantilt unit and a long focal length zoom lens. " ID="ID_1379687811" CREATED="1382605248648" MODIFIED="1382605248648" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Eagle-Eyes%20A%20System%20for%20Iris%20Recognition%20at%20a%20Dis_Bashir%20et%20al..pdf" MOVED="1382605258349">
<pdf_annotation type="BOOKMARK" page="1" object_number="33" generation_number="0" document_hash="F85284C73A6B249D2A5914B8695C7106CD9F4289DD177D828FB17CFE6EC9">
    <pdf_title>Eagle-EyesTM: System for Iris Recognition Distance</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
</node>
<node TEXT="explicit pixel resolution" ID="ID_425915065" CREATED="1377428767120" MODIFIED="1377428779203">
<node TEXT="using pupil phase mask (pupil engineering)" FOLDED="true" ID="ID_1875742147" CREATED="1377428783797" MODIFIED="1377428803964">
<node TEXT="Paper: Point spread function engineering for iris recogni_Ashok and Neifeld" FOLDED="true" ID="ID_414977106" CREATED="1377428835617" MODIFIED="1377429096739" LINK="#ID_1027491523">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT=" We employ optical point spread function (PSF) engineering via a Zernike phase mask in conjunction with multiple sub-pixel shifted image measurements (frames) to mitigate the effect of undersampling." ID="ID_1597185064" CREATED="1377429031309" MODIFIED="1377429031316" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Point%20spread%20function%20engineering%20for%20iris%20recogni_Ashok%20and%20Neifeld.pdf" MOVED="1377429053211">
<pdf_annotation type="BOOKMARK" page="1" object_number="373" generation_number="0" document_hash="4373EE6321F23FB5D6B4FC999FBF130B5ED5A11FC6199FAC1A27079E1DCEB">
    <pdf_title>Point spread function engineering for iris recognition system design</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Several researchers have explored phase-mask based approaches to extend the depth-of-field of the high-resolution imaging systems employed for iris recognition [5 &#x2013; 8]" ID="ID_966178541" CREATED="1377429031380" MODIFIED="1377429031380" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Point%20spread%20function%20engineering%20for%20iris%20recogni_Ashok%20and%20Neifeld.pdf" MOVED="1377429056476">
<pdf_annotation type="BOOKMARK" page="1" object_number="375" generation_number="0" document_hash="4373EE6321F23FB5D6B4FC999FBF130B5ED5A11FC6199FAC1A27079E1DCEB">
    <pdf_title>Point spread function engineering for iris recognition system design</pdf_title>
</pdf_annotation>
</node>
<node TEXT="In this paper, we will focus on addressing the detector-limited resolution in an iris-recognition imaging system design." ID="ID_1798640798" CREATED="1377429031355" MODIFIED="1377429031355" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Point%20spread%20function%20engineering%20for%20iris%20recogni_Ashok%20and%20Neifeld.pdf" MOVED="1377429059227">
<pdf_annotation type="BOOKMARK" page="1" object_number="376" generation_number="0" document_hash="4373EE6321F23FB5D6B4FC999FBF130B5ED5A11FC6199FAC1A27079E1DCEB">
    <pdf_title>Point spread function engineering for iris recognition system design</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
</node>
<node TEXT="how is non-cooperative issue addressed currently?" ID="ID_1701639116" CREATED="1376413830293" MODIFIED="1376413895662"/>
<node TEXT="how is scalability addressed currently?" ID="ID_1350796794" CREATED="1376413896261" MODIFIED="1376413915981"/>
<node TEXT="how is orthogonality constraint loosened?" FOLDED="true" ID="ID_1715319525" CREATED="1376413916613" MODIFIED="1377589123909"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      Several algorithms have been proposed to correct the projective deformation of the iris when it is imaged off-axis. Dorairaj et al. [22], assuming availability of a rough estimate of gaze, approximated the gaze direction that optimizes the value of the Daugman&#8217;s integro-differential operator, which detects circular boundaries. Daugman [8] used Fourier based trigonometry to estimated gaze, and corrected for off-axis imaging. Shuckers et al. [21] proposed the following two methodologies to account for the off-axis images: a) estimating the pitch and roll angles using the Daugmans integro differential operator and incorporating a projective transformation; and b) training a planar model from the off-axis images, and then use the best &#64257;t of an unknown image to the model for transformation parameters.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="types of non-orthogonality" ID="ID_407361385" CREATED="1377189916983" MODIFIED="1377189977938"/>
<node TEXT="Several algorithms have been proposed to correct the projective deformation of the iris when it is imaged off-axis. Dorairaj et al. [22], assuming availability of a rough estimate of gaze, approximated the gaze direction that optimizes the value of the Daugman&#x2019;s integro-differential operator, which detects circular boundaries. Daugman [8] used Fourier-based trigonometry to estimated gaze, and corrected for off-axis imaging. Shuckers et al. [21] proposed the following two methodologies to account for ..." ID="ID_814042811" CREATED="1377588779842" MODIFIED="1377588779842" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf" MOVED="1378109004148">
<pdf_annotation type="BOOKMARK" page="198" object_number="2197" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Tidbits from references" FOLDED="true" ID="ID_547474716" CREATED="1377190021875" MODIFIED="1377190189420">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT="(non-orthogonal Iris acquisition) Chou et al. [33] describe an iris image acquisition system meant to handle off-angle views of the iris and to make iris segmentation easier and more reliable. Their system uses a dual-CCD camera to acquire a color RGB image with one CCD and a near-infrared image with the other. The color image is exploited to improve the&#xd;reliability of the segmentation. The non-orthogonal-view iris image is recti&#xfb01;ed to an orthogonal-view iris image using the pupillary boundary." ID="ID_1578890706" CREATED="1377165930611" MODIFIED="1377165930611" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_A%20Survey%20of%20Iris%20Biometrics%20Research%202008&#x2013;2010_Bowyer%20et%20al..pdf" MOVED="1377190423147">
<pdf_annotation type="BOOKMARK" page="3" object_number="176" generation_number="0" document_hash="3044859131E339C39CE5346C1EF26912B3C76F2E326244BC260A850CCC13CF8">
    <pdf_title>A Survey of Iris Biometrics Research: 2008-2010</pdf_title>
</pdf_annotation>
</node>
<node TEXT="A non-orthogonal iris image is defined as an image where the iris is not looking directly into the camera [1-3]" FOLDED="true" ID="ID_1725255766" CREATED="1377290630125" MODIFIED="1377290630125" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_Collection%20and%20Segmentation%20of%20NonOrthogonal%20Irise_Ruth%20M.%20Gaunt.pdf" MOVED="1377291134419">
<pdf_annotation type="BOOKMARK" page="1" object_number="230" generation_number="0" document_hash="EFA1E48511C54D8574589672EE338E8BA6843F19C1E27CFD9B6B39C6CD9E7BCF">
    <pdf_title>Collection and Segmentation of Non-Orthogonal Irises for Iris Recognition</pdf_title>
</pdf_annotation>
<node TEXT="This [creation of the database of non-orthogonal iris images] is accomplished by having the subject face the camera and move  his or her  eyes  to specific  points  which  correspond  to known  off-axis  angles while iris images  are  being captured;" ID="ID_904385477" CREATED="1377290630157" MODIFIED="1377290630157" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_Collection%20and%20Segmentation%20of%20NonOrthogonal%20Irise_Ruth%20M.%20Gaunt.pdf" MOVED="1377291162649">
<pdf_annotation type="BOOKMARK" page="1" object_number="231" generation_number="0" document_hash="EFA1E48511C54D8574589672EE338E8BA6843F19C1E27CFD9B6B39C6CD9E7BCF">
    <pdf_title>Collection and Segmentation of Non-Orthogonal Irises for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Segmentation of non-orthogonal irises  proceeds  as  follows:  (1) the pupil  is isolated using bit-plane processing. (2) the  limbic boundary is determined in the cardinal directions using local statistics, (3) an ellipse is calculated that fits those points. A circular iris  is  never  assumed  during boundary  calculations. (4) After the inner and outer iris  boundaries  are calculated, an  &#x201c;iris  mask&#x201d; is created.  The  mask  is used to identify pixels in the image that contain the iris data." ID="ID_1594287298" CREATED="1377290630098" MODIFIED="1377290630099" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_Collection%20and%20Segmentation%20of%20NonOrthogonal%20Irise_Ruth%20M.%20Gaunt.pdf" MOVED="1377291174862">
<pdf_annotation type="BOOKMARK" page="1" object_number="232" generation_number="0" document_hash="EFA1E48511C54D8574589672EE338E8BA6843F19C1E27CFD9B6B39C6CD9E7BCF">
    <pdf_title>Collection and Segmentation of Non-Orthogonal Irises for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Because  the  iris  image  in  Fig  9  is  rotated  away  from  the normal to the imaging device, current commercial systems develop  complications  extracting  the  iris  pattern.    Initial results  show  that  it  is  possible  to  fit  a  close  elliptical approximation  to  non-orthogonal  iris  patterns  using  bit-planes  and  standard  deviation  windows,  which  can potentially be adapted for off-angle iris recognition." FOLDED="true" ID="ID_786493266" CREATED="1377313876205" MODIFIED="1377313876205" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_Iris%20pattern%20extraction%20using%20bit%20planes%20and%20stand_Bonney%20et%20al..pdf" MOVED="1377313902979">
<pdf_annotation type="BOOKMARK" page="4" object_number="1185" generation_number="0" document_hash="75EF839FC97C5E571B8DD760EF48757AAD8413946BD9E5B8953B8C3341158C85">
    <pdf_title>IRIS PATTERN EXTRACTION USING BIT PLANES AND STANDARD DEVIATIONS</pdf_title>
</pdf_annotation>
<node TEXT="Thesis paper: Non-orthogonal iris segmentation bonney" ID="ID_1990754192" CREATED="1377313977376" MODIFIED="1377314006867"/>
<node TEXT="All of these algorithms assume that a circular iris pattern has been successfully extracted from an image of the eye.           This  project  utilized  MATLAB  to  develop  algorithms  that  would  analyze  a  digitized image of a subject&#x2019;s iris in order to extract the iris pattern using elliptical boundaries. " ID="ID_824655067" CREATED="1377314531061" MODIFIED="1377314531061" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_Non-Orthogonal%20Iris%20Segmentation_Bonney.pdf" MOVED="1377314556324">
<pdf_annotation type="BOOKMARK" page="14" object_number="1208" generation_number="0" document_hash="1C358D145C7229B633DDE8119BC3559B28CA9B3C8D8DC36ECA7B5765AFD1A2">
    <pdf_title>Non-orthogonal Iris Segmentation</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Results from this research show  that  it  is  possible  to  fit  an elliptical approximation to both orthogonal and non-orthogonal iris patterns using a single set of algorithms.  The approximation is used to extract iris pattern data from digital images, which can potentially be adapted for implementation in a non-orthogonal iris recognition system. " ID="ID_1660248537" CREATED="1377314531043" MODIFIED="1377314531048" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_Non-Orthogonal%20Iris%20Segmentation_Bonney.pdf" MOVED="1377314561747">
<pdf_annotation type="BOOKMARK" page="16" object_number="1210" generation_number="0" document_hash="1C358D145C7229B633DDE8119BC3559B28CA9B3C8D8DC36ECA7B5765AFD1A2">
    <pdf_title>Non-orthogonal Iris Segmentation</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="The on-axis requirement can be relaxed by correcting the projective deformation of the iris when it is imaged off-axis, provided that one can reliably estimate the actual parameters of gaze." FOLDED="true" ID="ID_1227777320" CREATED="1378113486088" MODIFIED="1378113676698" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_New%20Methods%20in%20Iris%20Recognition_Daugman.pdf" MOVED="1378113652562">
<icon BUILTIN="messagebox_warning"/>
<pdf_annotation type="BOOKMARK" page="2" object_number="116" generation_number="0" document_hash="19BB4386435CF593679AA8E5C1AF8889D52156A1117BACC06F3031DAC485B6">
    <pdf_title>New Methods in Iris Recognition</pdf_title>
</pdf_annotation>
<node TEXT="Can argue for correcting projective distortion for image plane rotation" ID="ID_1763076655" CREATED="1378113679664" MODIFIED="1378113708739">
<icon BUILTIN="idea"/>
</node>
</node>
<node TEXT=" Dorairaj et al. [5] approached this by seeking the gaze parameters that optimize the value of an integro-differential operator [2], [4], which detects circular boundaries." ID="ID_50340723" CREATED="1378113486099" MODIFIED="1378113486100" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_New%20Methods%20in%20Iris%20Recognition_Daugman.pdf" MOVED="1378113769140">
<pdf_annotation type="BOOKMARK" page="2" object_number="117" generation_number="0" document_hash="19BB4386435CF593679AA8E5C1AF8889D52156A1117BACC06F3031DAC485B6">
    <pdf_title>New Methods in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Schukers et al. [42], describe two non-ideal iris recognition systems and analyze their performance. The word &#x201c;non-ideal&#x201d; is used in the sense of compensating for o&#xfb00;-angle occluded iris images. Their system is designed to process non-ideal iris images in two steps:&#xd;1) Compensation for o&#xfb00;-angle gaze direction;&#xd;2) Processing and encoding of the rotated iris image." ID="ID_1081950283" CREATED="1378118468280" MODIFIED="1378118468281" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1378118829052">
<pdf_annotation type="BOOKMARK" page="7" object_number="158" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The major limitation of the approach resides in linearization of the angle estimation problem. Because of a convex shape of the eye and the di&#xfb00;erence of indexes of refraction characterizing the interior and exterior portions of the eye, an iris pattern imaged at an o&#xfb00;-angle undergoes highly nonlinear transformations. In their approach to this problem, they assumed that the nonlinear distortions can be linearly approximated." ID="ID_145160396" CREATED="1378118468328" MODIFIED="1378118468328" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1378118836436">
<pdf_annotation type="BOOKMARK" page="7" object_number="159" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[Off-axis recognition] In the literature to date, the most common approach to off-axis recognition is to start with segmentation, which is often accomplished by modifying on-axis techniques. ........ By whatever means off-axis segmentation is accomplished, the iris boundaries can provide major/minor axis lengths and orientation from which the horizontal and/or vertical gaze angle(s) can be computed. The off-axis image may then be rotated back to a corresponding on-axis image to generate the iris template." ID="ID_474072201" CREATED="1378397410249" MODIFIED="1378397410250" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398850960">
<pdf_annotation type="BOOKMARK" page="26" object_number="294" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="for moving subjects" ID="ID_1200262367" CREATED="1377190440017" MODIFIED="1377190450346">
<node TEXT="XXX" ID="ID_465845681" CREATED="1377190460243" MODIFIED="1377190461773"/>
<node TEXT="Tidbits from references" FOLDED="true" ID="ID_242994702" CREATED="1377190462310" MODIFIED="1377190479237">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT="(Moving subjects - Flutter shutter) McCloskey et al. [123] explore a technique termed &#x201c;&#xfb02;utter shutter&#x201d; as a means to acquire sharply-focused iris images from moving subjects. The idea is that the camera shutter &#x201c;lutters&#x201d; between open and closed while the sensor accumulates an image, from which an appropriately-designed deblurring algorithm can then recover an in-focus image." ID="ID_1244225893" CREATED="1377165930582" MODIFIED="1377165930590" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_A%20Survey%20of%20Iris%20Biometrics%20Research%202008&#x2013;2010_Bowyer%20et%20al..pdf" MOVED="1377190482887">
<pdf_annotation type="BOOKMARK" page="3" object_number="177" generation_number="0" document_hash="3044859131E339C39CE5346C1EF26912B3C76F2E326244BC260A850CCC13CF8">
    <pdf_title>A Survey of Iris Biometrics Research: 2008-2010</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Tidbids @ refs." ID="ID_1569246696" CREATED="1377197933762" MODIFIED="1377197988111">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT="Recent efforts have successfully designed and devel-&#xd;oped iris-on-the-move and iris-at-a-distance recognition &#xd;systems. 9  Other efforts are investigating technologies such &#xd;as wavefront-coded imaging to increase the camera&#x2019;s depth &#xd;of field. 10" ID="ID_1346187979" CREATED="1377159275922" MODIFIED="1383001463726" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1377197958626">
<pdf_annotation type="BOOKMARK" page="4" object_number="512" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Proposal" POSITION="left" ID="ID_1059503947" CREATED="1376337669353" MODIFIED="1382754051561">
<edge COLOR="#0000ff" WIDTH="3"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Resources and references:</b>
    </p>
    <p>
      
    </p>
    <ol>
      <li>
        Dissertation Proposal Outline: <a href="http://www.academiccoachingandwriting.org/dissertation-doctor/resources/dissertation-proposal-outline/">http://www.academiccoachingandwriting.org/dissertation-doctor/resources/dissertation-proposal-outline/</a>
      </li>
      <li>
        Template for Thesis Proposal from Universidade De Coimbra <a href="http://www.uc.pt/en/fctuc/dei/ensino/doctoral_program/PhDprop4">http://www.uc.pt/en/fctuc/dei/ensino/doctoral_program/PhDprop4</a>
      </li>
      <li>
        Doctorial Practice Project @ Lyle School of Engineering: <a href="http://smu.edu/catalogs/graduate/lyle/phd.asp#doc">http://smu.edu/catalogs/graduate/lyle/phd.asp#doc</a>
      </li>
      <li>
        &quot;A thesis proposal is a contract,&quot; by Matt Might. <a href="http://matt.might.net/articles/advice-for-phd-thesis-proposals/">http://matt.might.net/articles/advice-for-phd-thesis-proposals/</a>
      </li>
      <li>
        Book: How to Prepare a Dissertation Proposal, David R. Krathwohl &amp; Nick Smith
      </li>
    </ol>
  </body>
</html>
</richcontent>
<node TEXT="Chapters" ID="ID_820350278" CREATED="1377193730547" MODIFIED="1377193736718">
<node TEXT="Abstract" ID="ID_115554957" CREATED="1377193738049" MODIFIED="1377193743717"/>
<node TEXT="Chapter 1: Introduction" FOLDED="true" ID="ID_1764289888" CREATED="1377193779923" MODIFIED="1382742966677">
<node TEXT="Background of the problem" ID="ID_1973029086" CREATED="1382743040395" MODIFIED="1382743047616">
<node TEXT="Biometrics and Iris recognition" FOLDED="true" ID="ID_194710390" CREATED="1377193744187" MODIFIED="1382954814237" MOVED="1382743222132">
<icon BUILTIN="100%"/>
<node TEXT="Why is biometrics important?" ID="ID_1151271046" CREATED="1378402160028" MODIFIED="1378402175114"/>
<node TEXT="Can I start by assuming that biometric technology is important" FOLDED="true" ID="ID_1542289048" CREATED="1378402175792" MODIFIED="1378402223868">
<node TEXT="i.e. don&apos;t need to motivate the importance of biometric itself" ID="ID_1088376668" CREATED="1378402224996" MODIFIED="1378402240587"/>
<node TEXT="start by stating that iris recognition is the most promising biometric" ID="ID_1725950523" CREATED="1378402241067" MODIFIED="1378402265847"/>
</node>
</node>
<node TEXT="Overview of Iris recognition system" ID="ID_1443986393" CREATED="1377193789175" MODIFIED="1382954910042" MOVED="1382743225085" LINK="#ID_819606126">
<icon BUILTIN="75%"/>
</node>
<node TEXT="Desirable properties of iris recognition system" FOLDED="true" ID="ID_881833903" CREATED="1382951636871" MODIFIED="1382951646823">
<node TEXT="Desirable properties ??" FOLDED="true" ID="ID_1848453022" CREATED="1377309810082" MODIFIED="1377309815362" MOVED="1382951676075">
<node TEXT="Does  an  iris  recognition  system  work  well?  It depends on many aspects. The most important  one is certainly the recognition algorithm, and the other one is whether it can capture on-focus iris images fast and comfortably." ID="ID_845483717" CREATED="1382496234199" MODIFIED="1382496234205" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_How%20to%20make%20iris%20recognition%20easier_Dong%20et%20al..pdf" MOVED="1382499696714">
<pdf_annotation type="BOOKMARK" page="1" object_number="60" generation_number="0" document_hash="F85395481EC8227F7BFE73F576C07C570FE16CF4601CA61ADE226385195F">
    <pdf_title>How to Make Iris Recognition Easier?</pdf_title>
</pdf_annotation>
</node>
<node TEXT="For ease of use, we want the spatial extent of the capture volume to be as large as possible and the temporal extent of the capture volume to be as small as possible." ID="ID_806993502" CREATED="1382576743182" MODIFIED="1382576743182" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20on%20the%20Move%20Acquisition%20of%20Images%20for%20Iris%20R_Matey%20et%20al..pdf" MOVED="1382576918406">
<pdf_annotation type="BOOKMARK" page="4" object_number="180" generation_number="0" document_hash="E1EAD91BC8AA56E2908D8926546F8AA5C8A099A32B7051D89839C2889159AC5">
    <pdf_title>Iris on the Move: Acquisition of Images for Iris Recognition in</pdf_title>
</pdf_annotation>
</node>
<node TEXT="capture volume" ID="ID_1572447115" CREATED="1382601373113" MODIFIED="1382601385315"/>
<node TEXT="Instantaneous capture volume" FOLDED="true" ID="ID_623632642" CREATED="1382601386280" MODIFIED="1382601396254">
<node TEXT="[help in the argument of instantaneous capture volume] space where the eye can be positioned for successful image capture should be as large as possible. For instance, systems that cannot assume cooperation of the subject will necessitate an array of cameras due to variation in heights and locations of subjects [5]. The larger the volume one camera can cover, the fewer number of cameras will be required." ID="ID_1386754397" CREATED="1382601262839" MODIFIED="1382601262840" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Increasing%20the%20information%20acquisition%20volume%20in%20i_Barwick.pdf" MOVED="1382601412690">
<pdf_annotation type="BOOKMARK" page="1" object_number="356" generation_number="0" document_hash="96F59F74472BE4BEA1F657B3530A8E1D970207F4ACF11987CBA50D97C947155">
    <pdf_title>Increasing the information acquisition volume in iris recognition systems</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="iris recognition using camera systems with a large depth of &#xfb01;eld is very desirable. " ID="ID_1669156629" CREATED="1382603240050" MODIFIED="1382603240050" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Extended%20Depth%20of%20Field%20Iris%20Recognition%20with%20Corr_Boddeti%20and%20Kumar.pdf" MOVED="1382603294194">
<pdf_annotation type="BOOKMARK" page="1" object_number="179" generation_number="0" document_hash="603D5E46CB6EA234C2C2A295D4CF7E4FBD37B6E2E7CD7EA31963933EF9B23B4">
    <pdf_title>978-1-4244-2730-7/08/$25.00 &#xa9;2008 IEEE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="general problems &amp; challenges" FOLDED="true" ID="ID_1556886270" CREATED="1376331737106" MODIFIED="1377165991205" MOVED="1382604149925">
<node TEXT="fully / largely cooperative" FOLDED="true" ID="ID_1501766888" CREATED="1376413661446" MODIFIED="1376414064540">
<node TEXT="subject&apos;s eye must be close to the camera" ID="ID_908183049" CREATED="1376413688516" MODIFIED="1376413697794"/>
<node TEXT="subject&apos;s eye must be still enough during the  capture" ID="ID_9565816" CREATED="1376413698504" MODIFIED="1376413715352"/>
<node TEXT="iris needs to be orthogonal to the camera" ID="ID_1793222934" CREATED="1376413715821" MODIFIED="1376413750968"/>
<node TEXT="as a result" FOLDED="true" ID="ID_1742451143" CREATED="1376413760596" MODIFIED="1376413763580">
<node TEXT="intrusive" ID="ID_1907282328" CREATED="1376332125201" MODIFIED="1376332129266"/>
<node TEXT="not very friendly" ID="ID_803807849" CREATED="1376332129733" MODIFIED="1376332132765"/>
</node>
<node TEXT="desirable properties/MOTIVATION" FOLDED="true" ID="ID_396326248" CREATED="1377248017837" MODIFIED="1382810998566" MOVED="1382981145756">
<node TEXT="unconstrained" ID="ID_812390761" CREATED="1377248030849" MODIFIED="1377248045351"/>
<node TEXT="large standoff distance" ID="ID_388889452" CREATED="1377248045851" MODIFIED="1377248050742"/>
<node TEXT="large volume" ID="ID_1232849121" CREATED="1377248054824" MODIFIED="1377248063695"/>
<node TEXT="challenges" FOLDED="true" ID="ID_1268286491" CREATED="1377248109058" MODIFIED="1377248115117">
<node TEXT="inconsistant viewing angles" ID="ID_581140824" CREATED="1377248116588" MODIFIED="1377248123934"/>
<node TEXT="varying distances from camera" ID="ID_1269915948" CREATED="1377248124312" MODIFIED="1377248134047"/>
<node TEXT="subject motion" ID="ID_1622936531" CREATED="1377248134529" MODIFIED="1377248138702"/>
</node>
</node>
</node>
<node TEXT="not scalable" ID="ID_1319653220" CREATED="1376332134552" MODIFIED="1376413771151"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      in terms of the number of people who could be identified simultaneously.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Experiments demonstrating the feasibility of human iris recognition at up to 10 m distance between subject and camera." ID="ID_693990605" CREATED="1382577811177" MODIFIED="1382577811178" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Iris%20recognition%20at%20a%20distance_Fancourt%20et%20al..pdf" MOVED="1382951727193">
<pdf_annotation type="BOOKMARK" page="1" object_number="137" generation_number="0" document_hash="D98D1B274F384F1DCA1C292534E704E455717721843158FAC42D5C72F5C26A1">
    <pdf_title>Iris Recognition at a Distance</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Tidbits @ refs" FOLDED="true" ID="ID_1757766354" CREATED="1377193474316" MODIFIED="1377193577177" MOVED="1377193555909">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT="Iris recognition systems  have  made  tre-mendous inroads over the past decade, but work remains to improve their accuracy in environments  characterized  by  unfavor-able  lighting,  large  stand-off  distances, and moving subjects." FOLDED="true" ID="ID_197364090" CREATED="1377159275466" MODIFIED="1383000575414" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1377193590586">
<pdf_annotation type="BOOKMARK" page="1" object_number="468" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
<hook NAME="accessories/plugins/BlinkingNodeHook.properties"/>
<node TEXT="summary of chapter 1" ID="ID_1261456009" CREATED="1383004162623" MODIFIED="1383004166946"/>
</node>
<node TEXT="These factors confound the system&#x2019;s ability to operate suc-&#xd;cessfully when the subject is more than a few meters away &#xd;from the camera." ID="ID_825998686" CREATED="1377159275936" MODIFIED="1377159275937" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1377197905160">
<pdf_annotation type="BOOKMARK" page="4" object_number="511" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Ideal iris imaging systems should have a large &#xfb01;eld of view, a large depth of &#xfb01;eld and, operate such that persons can be identi&#xfb01;ed without requiring their active cooperation [5, 6]. The system should capture adequate signal to facilitate good discrimination. It should operate well with both stationary and moving objects. This need for a high signal-to-noise ratio (SNR) at the detector combined with minimum motion blur (short exposures) calls for a relatively fast optical systems (low F/#), which inhere..." ID="ID_1569426412" CREATED="1382944036041" MODIFIED="1382944036041" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20recognition%20at%20a%20distance%20with%20expanded%20imagi_Narayanswamy%20and%20Silveira.pdf" MOVED="1382944281920">
<pdf_annotation type="BOOKMARK" page="1" object_number="93" generation_number="0" document_hash="EA548EBBAADB5E1491DBBD723F19CB3187F0EAD2822A2287FF4F2ACF549EA1">
    <pdf_title>Iris Recognition at a Distance with Expanded Imaging Volume</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Foreshortening of the iris pattern for o&#xfb00;-axis gaze simply changes the image and the resulting iris template." ID="ID_1906216642" CREATED="1378183690236" MODIFIED="1378183690236" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf" MOVED="1382951712815">
<pdf_annotation type="BOOKMARK" page="9" object_number="275" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
<node TEXT="increasing stando&#xfb00; distance requires higher magni&#xfb01;cation optics or higher resolution image capture to maintain su&#xfb03;cient spatial sampling for adequate matching algorithm performance. However, both of these changes can result in reduced luminous energy per spatial sample and a corresponding reduction in image signal-to-noise characteristics. Camera stando&#xfb00;, illuminator placement, capture volume, subject motion, and other factors all interact so it is very useful to have a uni&#xfb01;ed framework within which..." ID="ID_712198782" CREATED="1378183690252" MODIFIED="1382980990875" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf" MOVED="1382951716175">
<pdf_annotation type="BOOKMARK" page="10" object_number="277" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
<hook NAME="accessories/plugins/BlinkingNodeHook.properties"/>
</node>
<node TEXT="Selection of the wavelength of operation for an iris recognition system involves tradeo&#xfb00;s. In general, silicon-based imagers become less sensitive at longer wavelengths in the visible and NIR because longer wavelength photons are less strongly absorbed and converted to electrical signals than shorter wavelength photons " ID="ID_325507139" CREATED="1378145030188" MODIFIED="1378145030188" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf" MOVED="1382951719416">
<pdf_annotation type="BOOKMARK" page="7" object_number="273" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
<node TEXT="As the distance from subject to camera increases, and in more realistic scenarios, the expected variation in the resulting iris images also increases, resulting in potentially large differences in resolution, illumination, and eye pose, to name a few." ID="ID_852014717" CREATED="1382577811164" MODIFIED="1382577811164" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Iris%20recognition%20at%20a%20distance_Fancourt%20et%20al..pdf" MOVED="1382951722104">
<pdf_annotation type="BOOKMARK" page="1" object_number="136" generation_number="0" document_hash="D98D1B274F384F1DCA1C292534E704E455717721843158FAC42D5C72F5C26A1">
    <pdf_title>Iris Recognition at a Distance</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Increasing the distance from 5 m to 10 m does not impact performance. This is somewhat  expected,  given  that  the  hardware  was  designed  to  provide  similar  and sufficient spatial resolution at both distances. (comment: I think this is certainly promising fact)" ID="ID_859394549" CREATED="1382577811191" MODIFIED="1382577811191" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Iris%20recognition%20at%20a%20distance_Fancourt%20et%20al..pdf" MOVED="1382951735467">
<pdf_annotation type="BOOKMARK" page="11" object_number="138" generation_number="0" document_hash="D98D1B274F384F1DCA1C292534E704E455717721843158FAC42D5C72F5C26A1">
    <pdf_title>Iris Recognition at a Distance</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" It is expected that increasing the imaging volume to 6 in. x  6 in. x 10 in., a factor of 100 increase over the traditional imaging system, will make iris biometric recognition easier to use and more commercially acceptable. [10 inch is about 25 cm]" ID="ID_276425228" CREATED="1382598792543" MODIFIED="1383000213629" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Extending%20the%20imaging%20volume%20for%20biometric%20iris%20re_Narayanswamy%20et%20al..pdf" MOVED="1382951742433">
<pdf_annotation type="BOOKMARK" page="1" object_number="113" generation_number="0" document_hash="D95EE4728334515A676B20E05A31A6B56BFB56591FA5BB5B856FC22538045">
    <pdf_title>Extending the imaging volume for biometric iris recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="major  limitation  of  standard  limited-focus  iris recognition systems  is the inability to obtain an in-focus image of the iris at varying distances." ID="ID_11937628" CREATED="1382600520342" MODIFIED="1382600520343" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2007_Extended%20evaluation%20of%20simulated%20wavefront%20coding%20_Smith%20et%20al..pdf" MOVED="1382951747385">
<pdf_annotation type="BOOKMARK" page="1" object_number="244" generation_number="0" document_hash="76D637F46739630484DB526D2DF32A5618636278D13E7B487E8C3F98DD685">
    <pdf_title>Extended Evaluation of Simulated Wavefront Coding Technology in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="A major difficulty in current iris recognition systems is a very shallow depth-of-field that limits system usability and increases system complexity." ID="ID_934874691" CREATED="1382597852125" MODIFIED="1382597852125" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2004_Computational%20imaging%20systems%20for%20iris%20recognition_Plemmons%20et%20al..pdf" MOVED="1382951752777">
<pdf_annotation type="BOOKMARK" page="1" object_number="109" generation_number="0" document_hash="6C6E9CBC977B52EA25E951A92311A55C49B674ABE607139DA695FFDCDE7835">
    <pdf_title>Computational Imaging Systems for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" Now the challenge lies if the range of iris acquisition is extended from centimeters to meters. [May be used as supporting argument for Depth problem]" ID="ID_1039352287" CREATED="1378118468299" MODIFIED="1378118468299" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1382951999273">
<pdf_annotation type="BOOKMARK" page="8" object_number="157" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Proof that Long Range Iris acquisition is needed" FOLDED="true" ID="ID_1235331130" CREATED="1378342064863" MODIFIED="1378342075873" MOVED="1382951942901">
<node TEXT="DoD&apos;s $1.5 Million Grant for CyLab Iris Recognition" ID="ID_1378439384" CREATED="1378342077017" MODIFIED="1378342200007"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <a href="http://www.cylab.cmu.edu/news_events/news/2009/savvides-dod.html">http://www.cylab.cmu.edu/news_events/news/2009/savvides-dod.html </a>
    </p>
    <p>
      <a href="http://www.cylab.cmu.edu/news_events/news/2009/savvides-dod.html">
</a>    </p>
    <p>
      <a href="http://www.cylab.cmu.edu/news_events/news/2009/savvides-dod.html">
</a>    </p>
    <p>
      <a href="http://www.cylab.cmu.edu/news_events/news/2009/savvides-dod.html">
</a>    </p>
    <p style="color: rgb(51, 51, 51); text-transform: none; letter-spacing: normal; text-indent: 0px; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; background-color: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; white-space: normal; text-align: left; font-size: 11px; line-height: normal">
      <font size="12px" color="rgb(102, 102, 153)"><b><span style="color: rgb(102, 102, 153); font-weight: bold; text-align: left; line-height: 18px; font-size: 12px" class="firstParagraph">&quot;The CyLab Biometrics Lab, led by Marios Savvides, continues to make a significant contribution to this vital field; and in particular to the development of iris recognition systems.&quot;</span></b></font>
    </p>
    <p style="color: rgb(51, 51, 51); text-transform: none; letter-spacing: normal; text-indent: 0px; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; background-color: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; white-space: normal; text-align: left; font-size: 11px; line-height: normal">
      The<span class="Apple-converted-space">&#160;</span><font color="rgb(0, 0, 102)"><b><a style="text-decoration: none; color: rgb(0, 0, 102); font-weight: bold" href="http://www.cylab.cmu.edu/research/center-biometrics.html">CyLab Biometrics Lab</a></b></font>, led by<span class="Apple-converted-space">&#160;</span><font color="rgb(0, 0, 102)"><b><a style="text-decoration: none; color: rgb(0, 0, 102); font-weight: bold" href="http://www.cylab.cmu.edu/education/faculty/savvides.html">Marios Savvides</a></b></font>, continues to make a significant contribution to this vital field; and in particular to the development of iris recognition systems.
    </p>
    <p style="color: rgb(51, 51, 51); text-transform: none; letter-spacing: normal; text-indent: 0px; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; background-color: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; white-space: normal; text-align: left; font-size: 11px; line-height: normal">
      Here is an excerpt from the Pittsburgh Tribune-Review, with a link to the full text:
    </p>
    <blockquote style="color: rgb(51, 51, 51); text-transform: none; letter-spacing: normal; text-indent: 0px; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; background-color: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; white-space: normal; text-align: left; font-size: 11px; line-height: normal">
      <p>
        <i>Iris and face recognition soon could be the new fingerprints for criminal investigators and even U.S. troops, thanks in part to researchers at Carnegie Mellon University.</i>
      </p>
      <p>
        <i>Though troops use iris-recognition technology in Iraq, targets must remain stationary for several seconds and at a distance of about 13 centimeters, roughly 5 inches, for the camera to work, said Marios Savvides, a CMU professor of electrical and computer engineering who directs the school's CyLab Biometrics Lab.</i>
      </p>
      <p>
        <i>&quot;We are improving the way we do forensic analysis,&quot; Savvides said. &quot;We're providing tools so computers do this automatically.&quot;</i>
      </p>
      <p>
        <font size="3" color="#ff0000"><i>The Department of Defense awarded $1.5 million in grants to Savvides and his team earlier this week to help them develop an iris-recognition system that instantly will identify unique iris markers in the eyes of people moving up to 13 meters away, or about 43 feet.</i></font>
      </p>
      <p>
        <i>&quot;This is a huge breakthrough,&quot; said Robert Baer, a former CIA operative, who is familiar with Savvides' work on real-time iris recognition. Baer's book, &quot;See No Evil: The True Story of a Ground Soldier in the CIA's War on Terrorism,&quot; was made into the 2005 film, &quot;Syriana,&quot; starring George Clooney.</i><span class="Apple-converted-space">&#160;</span><font color="rgb(0, 0, 102)"><b><a style="text-decoration: none; color: rgb(0, 0, 102); font-weight: bold" href="http://www.pittsburghlive.com/x/pittsburghtrib/news/pittsburgh/s_621234.html" target="_blank">Pittsburgh Tribune-Review, 4-19-09</a></b></font>
      </p>
    </blockquote>
    <p style="color: rgb(51, 51, 51); text-transform: none; letter-spacing: normal; text-indent: 0px; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; background-color: rgb(238, 238, 238); font-family: Arial, Helvetica, sans-serif; white-space: normal; text-align: left; font-size: 11px; line-height: normal">
      Some Related CyLab Chronicles &amp; CyLab News Posts:
    </p>
    <ul style="margin-left: 35px; color: rgb(51, 51, 51); padding-left: 0px; text-transform: none; letter-spacing: normal; text-indent: 0px; font-style: normal; font-variant: normal; font-weight: normal; word-spacing: 0px; font-family: Arial, Helvetica, sans-serif; background-color: rgb(238, 238, 238); white-space: normal; text-align: left; font-size: 11px; line-height: normal" class="leftstyle">
      <li style="color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; margin-left: 0px; line-height: normal; margin-right: 0px">
        <font color="rgb(0, 0, 102)"><b><a style="text-decoration: none; color: rgb(0, 0, 102); font-weight: bold" href="http://www.cylab.cmu.edu/research/chronicles/2008/savvides.html">CyLab Chronicles Q&amp;A with Marios Savvides</a></b></font>
      </li>
      <li style="color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; margin-left: 0px; line-height: normal; margin-right: 0px">
        <font color="rgb(0, 0, 102)"><b><a style="text-decoration: none; color: rgb(0, 0, 102); font-weight: bold" href="http://www.cylab.cmu.edu/news_events/news/2009/savvides-nsa.html">CyLab News: CyLab's Savvides Invited to Speak at NSA Conference</a></b></font>
      </li>
      <li style="color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; margin-left: 0px; line-height: normal; margin-right: 0px">
        <font color="rgb(0, 0, 102)"><b><a style="text-decoration: none; color: rgb(0, 0, 102); font-weight: bold" href="http://www.cylab.cmu.edu/news_events/news/2009/biometrics_center.html">CyLab Researcher Selected To Join New Center For Academic Studies In Identity Sciences</a></b></font>
      </li>
      <li style="color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; margin-left: 0px; line-height: normal; margin-right: 0px">
        <font color="rgb(0, 0, 102)"><b><a style="text-decoration: none; color: rgb(0, 0, 102); font-weight: bold" href="http://www.cylab.cmu.edu/news_events/news/2008/vital_research.html">CyLab News: Information Security Magazine Highlights CyLab&#8217;s Lead in Vital Research</a></b></font>
      </li>
      <li style="color: rgb(51, 51, 51); margin-top: 10px; margin-bottom: 10px; margin-left: 0px; line-height: normal; margin-right: 0px">
        <font color="rgb(0, 0, 102)"><b><a style="text-decoration: none; color: rgb(0, 0, 102); font-weight: bold" href="http://www.cylab.cmu.edu/news_events/news/2008/tech_save_soldiers.html">CyLab Researchers Developing New Technology to Detect Enemies</a></b></font>
      </li>
    </ul>
    <font face="Verdana, Helvetica, sans-serif" size="11px" color="rgb(0, 0, 0)"><span style="background-repeat: repeat; color: rgb(0, 0, 0); padding-left: 20px; height: 16px; padding-right: 3px; display: inline-block; font-family: Verdana, Helvetica, sans-serif; background-image: url(http://w.sharethis.com/images/sharethis_16.png); white-space: nowrap; line-height: 16px; font-size: 11px" class="chicklets sharethis">ShareThis</span></font><font face="Arial, Helvetica, sans-serif" size="11px" color="rgb(51, 51, 51)"><span class="Apple-converted-space">&#160;</span><span style="color: rgb(51, 51, 51); text-transform: none; font-style: normal; text-indent: 0px; letter-spacing: normal; float: none; font-weight: normal; font-variant: normal; word-spacing: 0px; display: inline !important; font-family: Arial, Helvetica, sans-serif; background-color: rgb(238, 238, 238); white-space: normal; text-align: left; font-size: 11px; line-height: normal">- See more at: http://www.cylab.cmu.edu/news_events/news/2009/savvides-dod.html#sthash.u9shqfzp.dpuf</span></font>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Iris recognition technology as a flourishing area of research today" FOLDED="true" ID="ID_1674075379" CREATED="1378404114318" MODIFIED="1378404184977" MOVED="1382743239860">
<node TEXT="Iris recognition technology research and development today is expanding rapidly, at several dozen universities and industrial research venues." ID="ID_1552190659" CREATED="1377289323302" MODIFIED="1377289323302" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20Recognition_Daugman.pdf" MOVED="1378404162389">
<pdf_annotation type="BOOKMARK" page="3" object_number="159" generation_number="0" document_hash="9C8188B07C944AE8359693C9619D21366E4AFCB127933CE1EB96FE1577A097">
    <pdf_title>Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="For  the  former,  much  valuable  work  has  been  done  and  state-of-the-art  iris    &#xd;   recognition algorithms have been very accurate,   robust &#xd; and  fast,  but  for  the  latter,  it  seems  that  there  is  no  perfect  system  by  now." FOLDED="true" ID="ID_502040637" CREATED="1382496234224" MODIFIED="1383001207807" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_How%20to%20make%20iris%20recognition%20easier_Dong%20et%20al..pdf" MOVED="1382499741139">
<pdf_annotation type="BOOKMARK" page="1" object_number="62" generation_number="0" document_hash="F85395481EC8227F7BFE73F576C07C570FE16CF4601CA61ADE226385195F">
    <pdf_title>How to Make Iris Recognition Easier?</pdf_title>
</pdf_annotation>
<hook NAME="accessories/plugins/BlinkingNodeHook.properties"/>
<node TEXT="summary of chapter 1" ID="ID_591001371" CREATED="1383004172860" MODIFIED="1383004176197"/>
</node>
</node>
<node TEXT="Perspective from iris acquisition standpoint??" FOLDED="true" ID="ID_578374316" CREATED="1377204721236" MODIFIED="1377204746793" MOVED="1382743251981">
<node TEXT="Acquisition of iris images of sufficient quality for iris recognition is challenging, particularly from a distance." ID="ID_1681984010" CREATED="1382576743161" MODIFIED="1382576743161" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20on%20the%20Move%20Acquisition%20of%20Images%20for%20Iris%20R_Matey%20et%20al..pdf" MOVED="1382576830007">
<pdf_annotation type="BOOKMARK" page="3" object_number="174" generation_number="0" document_hash="E1EAD91BC8AA56E2908D8926546F8AA5C8A099A32B7051D89839C2889159AC5">
    <pdf_title>Iris on the Move: Acquisition of Images for Iris Recognition in</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Some of the main parameters that specify an imaging system are its resolution, depth of field (DOF), field of view  and exposure period per image-frame." ID="ID_1261042517" CREATED="1382598241515" MODIFIED="1382598241515" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Extended%20depth-of-field%20iris%20recognition%20system%20fo_Narayanswamy%20et%20al..pdf" MOVED="1382598268281">
<pdf_annotation type="BOOKMARK" page="2" object_number="168" generation_number="0" document_hash="FE7F23A0BED8F27EADBE8DF2394E6F3B2CDA8B6B817C4F884B692E34F917CA32">
    <pdf_title>Extended depth-of-field iris recognition system for a workstation environment</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Optical Resolution: The resolution is defined as the maximum spatial frequency that can be resolved in the image at a predetermined contrast. " ID="ID_535614412" CREATED="1382598241532" MODIFIED="1382598241532" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Extended%20depth-of-field%20iris%20recognition%20system%20fo_Narayanswamy%20et%20al..pdf" MOVED="1382598312224">
<pdf_annotation type="BOOKMARK" page="2" object_number="170" generation_number="0" document_hash="FE7F23A0BED8F27EADBE8DF2394E6F3B2CDA8B6B817C4F884B692E34F917CA32">
    <pdf_title>Extended depth-of-field iris recognition system for a workstation environment</pdf_title>
</pdf_annotation>
</node>
<node TEXT="n image acquisition Not surprisingly, the design of this subsystem involves the trade-off of competing goals, namely, imaging volume and information capture. " ID="ID_1241056487" CREATED="1382601262822" MODIFIED="1382601262822" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Increasing%20the%20information%20acquisition%20volume%20in%20i_Barwick.pdf" MOVED="1382601337244">
<pdf_annotation type="BOOKMARK" page="1" object_number="355" generation_number="0" document_hash="96F59F74472BE4BEA1F657B3530A8E1D970207F4ACF11987CBA50D97C947155">
    <pdf_title>Increasing the information acquisition volume in iris recognition systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="For the case of iris recognition, the constraints of most interest are stando&#xfb00; distance, capture volume, residence time, subject motion, subject gaze direction, and ambient environment [Can be used for support of argument]" ID="ID_1855531440" CREATED="1378145029995" MODIFIED="1378145029995" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf" MOVED="1382601449815">
<pdf_annotation type="BOOKMARK" page="1" object_number="265" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The key constraints [and design tradeoffs] in current systems are stando&#xfb00; distance, capture volume, residence time, subject motion, subject gaze direction, and ambient environment" ID="ID_706259989" CREATED="1378183690236" MODIFIED="1378183690236" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf" MOVED="1382601468716">
<pdf_annotation type="BOOKMARK" page="10" object_number="276" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
<node TEXT="A large imaging volume, of course, requires a large depth of field. In traditional systems depth of field is increased by stopping down the aperture. This solution results in both reduced resolution, which will have a minimum threshold imposed by the iris code, and less light-collecting capability by the camera. " ID="ID_1698341526" CREATED="1382601262850" MODIFIED="1382601262850" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Increasing%20the%20information%20acquisition%20volume%20in%20i_Barwick.pdf" MOVED="1382601530085">
<pdf_annotation type="BOOKMARK" page="1" object_number="357" generation_number="0" document_hash="96F59F74472BE4BEA1F657B3530A8E1D970207F4ACF11987CBA50D97C947155">
    <pdf_title>Increasing the information acquisition volume in iris recognition systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Capturing high quality iris images at  a distance is a difficult task. " ID="ID_1581850637" CREATED="1382605815108" MODIFIED="1382605815108" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2011_A%20standoff%20multimodal%20biometric%20system_Boehnen%20et%20al..pdf" MOVED="1382605942287">
<pdf_annotation type="BOOKMARK" page="1" object_number="121" generation_number="0" document_hash="4D5B718CF6953E7539C265B9D7E367F79DF6B82C8BDC8E519518969C4AE2">
    <pdf_title>A Standoff Multimodal Biometric System</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Statement of the Problem" ID="ID_1762312730" CREATED="1382750409261" MODIFIED="1382750424938"/>
<node TEXT="Purpose of the study" ID="ID_1889969761" CREATED="1382750429357" MODIFIED="1382750433844"/>
<node TEXT="Theoretical Framework" ID="ID_363460864" CREATED="1382750474888" MODIFIED="1382750485719"/>
<node TEXT="Research Hypothesis" ID="ID_1766140962" CREATED="1382750486932" MODIFIED="1382750491553"/>
<node TEXT="Importance of the study" ID="ID_1163724101" CREATED="1382750494421" MODIFIED="1382750498756"/>
<node TEXT="Definitions and Terms" ID="ID_990127819" CREATED="1382750500825" MODIFIED="1382750505594"/>
<node TEXT="Summary" ID="ID_1526846455" CREATED="1382750506080" MODIFIED="1382750507922"/>
</node>
<node TEXT="Chapter 2: Literature review" FOLDED="true" ID="ID_458087145" CREATED="1382742929200" MODIFIED="1382750525136"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      State of the art
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Current systems, limitations and opportunities" FOLDED="true" ID="ID_81934679" CREATED="1377193817134" MODIFIED="1377193850784" MOVED="1382743257968">
<node TEXT="Interesting quesitons" FOLDED="true" ID="ID_391245305" CREATED="1382600171446" MODIFIED="1382600180110">
<node TEXT="[Questions raised] If the requirements are algorithm speci&#xfb01;c, is it advantageous to co-optimize the imaging system with the algorithm to achieve the best overall system performance? Or is a &#xfb01;xed standard to which all iris imaging systems must comply a better strategy?" FOLDED="true" ID="ID_1830779201" CREATED="1382470815275" MODIFIED="1382470815275" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf" MOVED="1382600186506">
<pdf_annotation type="BOOKMARK" page="25" object_number="627" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
<node TEXT="[Example of optical system design optimized for Iris recognition] As discussed in Subsection 3.C, the iris recognition algorithm processes the iris texture at a number of speci&#xfb01;c frequency bands. Consequently, the optical system has a requirement to maintain the contrast across these frequency bands signi&#xfb01;cantly higher than the noise &#xfb02;oor over the imaging volume." ID="ID_601623528" CREATED="1382598792583" MODIFIED="1382598792583" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Extending%20the%20imaging%20volume%20for%20biometric%20iris%20re_Narayanswamy%20et%20al..pdf" MOVED="1382600220528">
<pdf_annotation type="BOOKMARK" page="8" object_number="117" generation_number="0" document_hash="D95EE4728334515A676B20E05A31A6B56BFB56591FA5BB5B856FC22538045">
    <pdf_title>Extending the imaging volume for biometric iris recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Accurate prediction of biometric performance of an iris recognition system requires knowledge of both the spatial resolution of the capture device and spatial frequency bandwidth of the matching algorithm." FOLDED="true" ID="ID_1987384140" CREATED="1382470815197" MODIFIED="1382980821310" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf" MOVED="1383004134696">
<pdf_annotation type="BOOKMARK" page="9" object_number="601" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
<hook NAME="accessories/plugins/BlinkingNodeHook.properties"/>
<node TEXT="Discussion for &quot;joint&quot; design" ID="ID_954696830" CREATED="1383004106153" MODIFIED="1383004114722"/>
</node>
</node>
</node>
<node TEXT="Tidbits @ references" ID="ID_1721053177" CREATED="1382494783020" MODIFIED="1382951908008" LINK="#ID_324280954">
<edge COLOR="#333333" WIDTH="thin"/>
</node>
</node>
<node TEXT="Scheimpflug imaging to address some of the problems" FOLDED="true" ID="ID_332558960" CREATED="1377193851929" MODIFIED="1377193925882" MOVED="1382743272617">
<node TEXT="Reference some relevant work here" ID="ID_1135690361" CREATED="1382754177715" MODIFIED="1382754188696"/>
</node>
</node>
<node TEXT="Chapter 3: Research Methods" ID="ID_328947595" CREATED="1382743285565" MODIFIED="1382743318407">
<node TEXT="Research Design" ID="ID_861922131" CREATED="1382750527831" MODIFIED="1382750532785"/>
<node TEXT="Participants" ID="ID_1461646039" CREATED="1382750534805" MODIFIED="1382750538751"/>
<node TEXT="Instrumentation" ID="ID_1634539295" CREATED="1382750539262" MODIFIED="1382750542775"/>
<node TEXT="Research Procedures and Pilot Testing" ID="ID_1705567545" CREATED="1382750543306" MODIFIED="1382750553265"/>
<node TEXT="Data Analysis" ID="ID_299765899" CREATED="1382750555074" MODIFIED="1382750558154"/>
<node TEXT="Assumptions of the Study" ID="ID_1788697863" CREATED="1382750558910" MODIFIED="1382750567420"/>
<node TEXT="Limitations of the Study" ID="ID_1725909621" CREATED="1382750568804" MODIFIED="1382750575402"/>
<node TEXT="Summary" ID="ID_789434485" CREATED="1382750577305" MODIFIED="1382750579473"/>
</node>
<node TEXT="Chapter 4: Research Findings" ID="ID_1816652290" CREATED="1382743380309" MODIFIED="1382750373551"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Also known as &quot;Study Results&quot;
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Chapter 5: Conclusions" FOLDED="true" ID="ID_1243963328" CREATED="1382743426719" MODIFIED="1382743452608">
<node TEXT="Summary" ID="ID_276905228" CREATED="1382750587908" MODIFIED="1382750590270"/>
<node TEXT="Conclusions" ID="ID_686154825" CREATED="1382750590774" MODIFIED="1382750595483"/>
<node TEXT="Discussion" ID="ID_707088394" CREATED="1382750596536" MODIFIED="1382750599239"/>
<node TEXT="Suggestions for Future Research" ID="ID_1224326967" CREATED="1382750600381" MODIFIED="1382750608140"/>
</node>
<node TEXT="Subsection ??" ID="ID_1795261197" CREATED="1377204753685" MODIFIED="1382750384029"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Scheimpflug imaging description
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="References" POSITION="right" ID="ID_1513621090" CREATED="1376337697097" MODIFIED="1376337701747">
<edge COLOR="#00ff00" WIDTH="3"/>
<node TEXT="iris_acquisition" FOLDED="true" ID="ID_1404527336" CREATED="1376337730506" MODIFIED="1376337744858">
<node TEXT="" FOLDED="true" ID="ID_920575974" CREATED="1376337752190" MODIFIED="1376337782388">
<attribute NAME="mon_incoming_folder" VALUE="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/" OBJECT="java.net.URI|workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/"/>
<attribute NAME="mon_mindmap_folder" VALUE="@@library_mindmaps@@"/>
<attribute NAME="mon_auto" VALUE="2" OBJECT="java.lang.Integer|2"/>
<attribute NAME="mon_subdirs" VALUE="2" OBJECT="java.lang.Integer|2"/>
<attribute NAME="mon_flatten_dirs" VALUE="0" OBJECT="java.lang.Integer|0"/>
<node TEXT="2006_Iris on the Move Acquisition of Images for Iris R_Matey et al..pdf" FOLDED="true" ID="ID_1961943109" CREATED="1376337783464" MODIFIED="1382577568978" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20on%20the%20Move%20Acquisition%20of%20Images%20for%20Iris%20R_Matey%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="E1EAD91BC8AA56E2908D8926546F8AA5C8A099A32B7051D89839C2889159AC5">
    <pdf_title>Iris on the Move: Acquisition of Images for Iris Recognition in</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<node TEXT="However, for the IOM system the appropriate circle of confusion is related to the Hamming distance between images taken at best focus and those taken away from best focus rather than the conventional photographic criteria. Hence, it is more straightforward to simply measure the depth of field;" ID="ID_390667912" CREATED="1382576743124" MODIFIED="1382576796148" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20on%20the%20Move%20Acquisition%20of%20Images%20for%20Iris%20R_Matey%20et%20al..pdf">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="6" object_number="181" generation_number="0" document_hash="E1EAD91BC8AA56E2908D8926546F8AA5C8A099A32B7051D89839C2889159AC5">
    <pdf_title>Iris on the Move: Acquisition of Images for Iris Recognition in</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2005_Iris recognition at a distance_Fancourt et al..pdf" ID="ID_1457926308" CREATED="1376358985953" MODIFIED="1382579581465" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Iris%20recognition%20at%20a%20distance_Fancourt%20et%20al..pdf" MOVED="1376451370116">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="D98D1B274F384F1DCA1C292534E704E455717721843158FAC42D5C72F5C26A1">
    <pdf_title>Iris Recognition at a Distance</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2005_A system for automatic iris capturing_Guo et al..pdf" ID="ID_88284369" CREATED="1376337783511" MODIFIED="1382602221865" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_A%20system%20for%20automatic%20iris%20capturing_Guo%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="E7B28A76B4C93A874CEAC6CA5EFFD3EB66B412545BB05168EE139A48BC675B">
    <pdf_title>A System for Automatic Iris Capturing</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2007_Non-intrusive iris image capturing system using li_Yoon et al..pdf" ID="ID_492037660" CREATED="1376337783558" MODIFIED="1376337783558" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2007_Non-intrusive%20iris%20image%20capturing%20system%20using%20li_Yoon%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="ED43D461D111D7A747B6D5F4A7E12A9EA182D8F6BC2C481331BF2ED0A3C259">
    <pdf_title>Non-intrusive Iris Image Capturing System Using Light Stripe Projection and</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2005_New automated iris image acquisition method_Park.pdf" ID="ID_743052500" CREATED="1376337783605" MODIFIED="1376337783605" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_New%20automated%20iris%20image%20acquisition%20method_Park.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="BA887C8AC7CAD1E63195D6174E2C336E6E23BC5213B8CDB26F67961487F15">
    <pdf_title>New automated iris image acquisition method</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2010_Unconstrained iris acquisition and recognition usi_Venugopalan and Savvides.pdf" FOLDED="true" ID="ID_1596709821" CREATED="1376337783620" MODIFIED="1382580918153" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<node TEXT="What does it mean by &quot;unconstrained&quot; here?" ID="ID_1342519419" CREATED="1376337783776" MODIFIED="1376337783776" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="COMMENT" page="1" object_number="58" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Quickly jump to Table II for comparison of relevent features of the proposed system with other state of the art systems." ID="ID_1885533075" CREATED="1376337783932" MODIFIED="1376337783932" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="COMMENT" page="1" object_number="63" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="So does that mean that for a system with auto-focus mechanism, the DOF may not be very restrictive, because the the &quot;DOF&quot; &quot;area&quot; is NOT fixed but can be changed??" ID="ID_1691848065" CREATED="1376337783683" MODIFIED="1376337783683" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="COMMENT" page="2" object_number="90" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="This is like using a close-up lens. but won&apos;t it change the magnification?" ID="ID_1845331861" CREATED="1376337783714" MODIFIED="1382580276324" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="COMMENT" page="6" object_number="156" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="1. Change of across pixel from 150 to 132 !! Breaking specifications and still fine ??&#xd;&#xa;2. " ID="ID_798947221" CREATED="1376337783620" MODIFIED="1376337783620" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="COMMENT" page="6" object_number="160" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The statement seems a little questionable? What about the spherical aberration caused by the secondary lens? How will the MTF degrade? What will be the effect?" ID="ID_965630028" CREATED="1376337784978" MODIFIED="1376337784978" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="COMMENT" page="6" object_number="163" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Info on Close-up lens @ Cambridge in Color" ID="ID_293111699" CREATED="1376337785024" MODIFIED="1376337785024" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="COMMENT" page="6" object_number="165" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Essentially based on magnification" ID="ID_1439216813" CREATED="1376337784182" MODIFIED="1376337784182" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="COMMENT" page="8" object_number="187" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="1. On resolution: Here they are mainly conserned about the resolution in terms of pixels; i.e. how many pixels does the iris cover. However, is this the right method? A &quot;blurry&quot; image (having less then required spatial frequency resolution) of the iris can also have the pixel resolution!! Isin&apos;t it?&#xd;&#xa;2. Why are the authors concerned about capture volue vs. pixel-resolution in this particular approach? I do not think it should be an issue because they have the ability to zoom. What did I not understand?" ID="ID_25063667" CREATED="1376337784213" MODIFIED="1376337784213" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="COMMENT" page="8" object_number="189" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Definitions " FOLDED="true" ID="ID_1371492188" CREATED="1376337784354" MODIFIED="1376337784354" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="BOOKMARK" page="2" object_number="39" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
<node TEXT="Depth-Of-Field: In the context of iris acquisition and recognition, the depth of field is defined as the depth of the apture  volume  within  which  an  iris  image  of  acceptable  quality  may  be  acquired." ID="ID_1782282971" CREATED="1376337784541" MODIFIED="1382580464736" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="BOOKMARK" page="2" object_number="1317" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="PTZ: Pan-Tilt-Zoom; an Axis 233D Network PTZ camera manufactured by Axis Communications" ID="ID_1921025216" CREATED="1376337784447" MODIFIED="1376337784447" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="BOOKMARK" page="3" object_number="450" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Facts&amp;Info" FOLDED="true" ID="ID_1782739393" CREATED="1376337784416" MODIFIED="1376337784416" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="BOOKMARK" page="1" object_number="451" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
<node TEXT="In order to get irises that are suitable for recognition purposes, the iris images must have at least 150 &#xd;pixels  across their  diameter  [14]" ID="ID_840128024" CREATED="1376337784525" MODIFIED="1376337784525" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="BOOKMARK" page="4" object_number="1318" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="II. System Hardware Architecture " ID="ID_310370472" CREATED="1376337784603" MODIFIED="1376337784603" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf">
<pdf_annotation type="BOOKMARK" page="3" object_number="449" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2011_Long range iris acquisition system for stationary _Venugopalan et al..pdf" ID="ID_104334736" CREATED="1376337783667" MODIFIED="1382580141327" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2011_Long%20range%20iris%20acquisition%20system%20for%20stationary%20_Venugopalan%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="52AD528FDA2C49DC38E1B7FE8D3ECC69866A62FB73E33D61FCEB57985356">
    <pdf_title>Long Range Iris Acquisition System for Stationary and Mobile SUbjects</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2005_Extending the imaging volume for biometric iris re_Narayanswamy et al..pdf" ID="ID_125650070" CREATED="1376337783808" MODIFIED="1382598799880" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Extending%20the%20imaging%20volume%20for%20biometric%20iris%20re_Narayanswamy%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="D95EE4728334515A676B20E05A31A6B56BFB56591FA5BB5B856FC22538045">
    <pdf_title>Extending the imaging volume for biometric iris recognition</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2008_Increasing the information acquisition volume in i_Barwick.pdf" ID="ID_523319940" CREATED="1376337783854" MODIFIED="1382601277843" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Increasing%20the%20information%20acquisition%20volume%20in%20i_Barwick.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="96F59F74472BE4BEA1F657B3530A8E1D970207F4ACF11987CBA50D97C947155">
    <pdf_title>Increasing the information acquisition volume in iris recognition systems</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2009_Nonintrusive iris image acquisition system based o_Yoon.pdf" ID="ID_160938086" CREATED="1376337783901" MODIFIED="1382606797836" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2009_Nonintrusive%20iris%20image%20acquisition%20system%20based%20o_Yoon.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="A1843F3718B48A78EF3B5719DDD9BF74553E45AFF086955953B83914C61D87">
    <pdf_title>Nonintrusive iris image acquisition system based on a pan-tilt-zoom camera and light stripe</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2006_Key techniques and methods for imaging iris in foc_He et al..pdf" ID="ID_885811775" CREATED="1376337783964" MODIFIED="1376337783964" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Key%20techniques%20and%20methods%20for%20imaging%20iris%20in%20foc_He%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="FFF9CA16AD818D9ADF39562BD268598C815F8FA40825D6763616DA9886A1429">
    <pdf_title>Key Techniques and Methods for Imaging Iris in Focus</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2012_Relaxing the constraints on image capture for iris_Smith et al..pdf" ID="ID_1655145842" CREATED="1376337784104" MODIFIED="1382505987998" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2012_Relaxing%20the%20constraints%20on%20image%20capture%20for%20iris_Smith%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="6A5F1C5B4B3341677815C854CABCE2357FD86F8A508D1D10BE8B2080C3591964">
    <pdf_title>n e b a L o a n</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2010_Point spread function engineering for iris recogni_Ashok and Neifeld.pdf" ID="ID_1027491523" CREATED="1376337784120" MODIFIED="1377429078994" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Point%20spread%20function%20engineering%20for%20iris%20recogni_Ashok%20and%20Neifeld.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="4373EE6321F23FB5D6B4FC999FBF130B5ED5A11FC6199FAC1A27079E1DCEB">
    <pdf_title>Point spread function engineering for iris recognition system design</pdf_title>
</pdf_annotation>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <b>What are they trying to solve?</b>
    </p>
    <p>
      The authors in this paper are addressing the detector-limited resolution in an iris-recognition imaging system design.
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2011_Coaxial optical structure for iris recognition fro_Jung et al..pdf" ID="ID_312361038" CREATED="1376337784151" MODIFIED="1376337784151" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2011_Coaxial%20optical%20structure%20for%20iris%20recognition%20fro_Jung%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="9448728D9540C83B1E35402423AC73607F534520E8BDD92AF7FE36B9602B9B8">
    <pdf_title>Coaxial optical structure for iris recognition from a distance</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2004_Computational imaging systems for iris recognition_Plemmons et al..pdf" ID="ID_1796312862" CREATED="1376337784276" MODIFIED="1382597954094" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2004_Computational%20imaging%20systems%20for%20iris%20recognition_Plemmons%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="6C6E9CBC977B52EA25E951A92311A55C49B674ABE607139DA695FFDCDE7835">
    <pdf_title>Computational Imaging Systems for Iris Recognition</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2011_Face Tracking and Recognition at a Distance A Coa_Choi et al..pdf" ID="ID_488578546" CREATED="1376337784338" MODIFIED="1376337784338" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2011_Face%20Tracking%20and%20Recognition%20at%20a%20Distance%20A%20Coa_Choi%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="BF301B86BE4E479FBE9914251A833D9E3B1886FE92DC2D7E9C7F83C7F6454A">
    <pdf_title>Face Tracking and Recognition at a Distance: A Coaxial &amp; Concentric PTZ Camera System</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2013_Restoration and recognition of distant, blurry iri_Stoker et al..pdf" ID="ID_1340227293" CREATED="1376337784478" MODIFIED="1376337784478" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2013_Restoration%20and%20recognition%20of%20distant,%20blurry%20iri_Stoker%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="CA7DB66B21A2DDF175F474016F9C6CB72E2EBF1690778AA458154CAECF59E">
    <pdf_title>Restoration and recognition of distant, blurry irises</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2010_Non-Orthogonal View Iris Recognition System_Chia-Te Chou et al..pdf" ID="ID_213896090" CREATED="1376337784572" MODIFIED="1376337784572" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Non-Orthogonal%20View%20Iris%20Recognition%20System_Chia-Te%20Chou%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="E47124205840CB57453B4DE53AEF9E3F499C5EE43007F817089B06DA3981468">
    <pdf_title>www.DownloadPaper.ir www.DownloadPaper.ir</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2008_Contactless Autofeedback Iris Capture Design_Xiaofu He et al..pdf" ID="ID_461165435" CREATED="1376337784650" MODIFIED="1376337784650" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Contactless%20Autofeedback%20Iris%20Capture%20Design_Xiaofu%20He%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="A54EABD8647F78E7121737E87F788C1466B692DF87D29835298465154E1F762">
    <pdf_title>Contactless Autofeedback Iris Capture Design</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2005_Extended depth-of-field iris recognition system fo_Narayanswamy et al..pdf" ID="ID_440053231" CREATED="1376337784681" MODIFIED="1382598373006" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Extended%20depth-of-field%20iris%20recognition%20system%20fo_Narayanswamy%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="FE7F23A0BED8F27EADBE8DF2394E6F3B2CDA8B6B817C4F884B692E34F917CA32">
    <pdf_title>Extended depth-of-field iris recognition system for a workstation environment</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2010_Depth of Capture Volume Extension by Constrained L_Jung et al..pdf" ID="ID_1352548869" CREATED="1376337784728" MODIFIED="1376337784728" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Depth%20of%20Capture%20Volume%20Extension%20by%20Constrained%20L_Jung%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="1893371DDC89320AAEE8F8E14655DE1AB6AEBE5547051F68878F63CEB5A2E">
    <pdf_title>Depth of Capture Volume Extension by Constrained Least Square-Based Image</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2011_Improving retinal image resolution with iterative _Meitav et al..pdf" ID="ID_159404355" CREATED="1376337784775" MODIFIED="1376337784775" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2011_Improving%20retinal%20image%20resolution%20with%20iterative%20_Meitav%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="4D14FA364C1FF3A4894EBC8CAA672547F75B1CB1119AFF5CAD67F472DB538">
    <pdf_title>Improving retinal image resolution with iterative weighted shift-and-add</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2011_Moving Object Detection for Static and Pan-Tilt-Zo_Suhr.pdf" ID="ID_1903023905" CREATED="1376337784806" MODIFIED="1376337784806" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2011_Moving%20Object%20Detection%20for%20Static%20and%20Pan-Tilt-Zo_Suhr.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="933BA53513E51B8EAC8ADC534627EBB3AF63F940AFA6FE0252E69829F79">
    <pdf_title>Moving Object Detection for Static and Pan-Tilt-Zoom Cameras in Intelligent Visual Surveillance</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2008_Video Surveillance for Biometrics Long-Range Mult_Bashir et al..pdf" ID="ID_634425194" CREATED="1376337784837" MODIFIED="1382605076580" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Video%20Surveillance%20for%20Biometrics%20Long-Range%20Mult_Bashir%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="68F6B62D33523E342BB3336BD34ECC684583D74488148686A6112199BFBC6BF">
    <pdf_title>Video Surveillance for Biometrics: Long-Range Multi-Biometric System</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2008_Eagle-Eyes A System for Iris Recognition at a Dis_Bashir et al..pdf" ID="ID_1951030894" CREATED="1376337784884" MODIFIED="1382605253867" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Eagle-Eyes%20A%20System%20for%20Iris%20Recognition%20at%20a%20Dis_Bashir%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="F85284C73A6B249D2A5914B8695C7106CD9F4289DD177D828FB17CFE6EC9">
    <pdf_title>Eagle-EyesTM: System for Iris Recognition Distance</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2010_Quantitative evaluation of depth of capture volume_Jung et al..pdf" ID="ID_869144261" CREATED="1376337784931" MODIFIED="1376337784931" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Quantitative%20evaluation%20of%20depth%20of%20capture%20volume_Jung%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="D48D9BCA302567BA568D524320B729AAE6466DC7427FB16B551909D6C134">
    <pdf_title>Quantitative evaluation of depth of capture volume extension by constrained least-square-</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2010_Iris recognition The path forward_Ross.pdf" ID="ID_430113781" CREATED="1377159275471" MODIFIED="1377197969139" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2008_Enhanced usability of iris recognition via efficie_He et al..pdf" ID="ID_1947404291" CREATED="1377159275611" MODIFIED="1377193295989" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Enhanced%20usability%20of%20iris%20recognition%20via%20efficie_He%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="F51B60FD94F1C18AA33BCCC0A1EFB9B16755BDD8EAF4A36582CD9AA5B7F5E4B">
    <pdf_title>Zhaofeng He, Zhenan Sun, Tieniu Tan and Xianchao Qiu</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2010_Design and implementation of a long range iris rec_De Villar et al..pdf" FOLDED="true" ID="ID_1546726236" CREATED="1377417762174" MODIFIED="1377418398719" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Design%20and%20implementation%20of%20a%20long%20range%20iris%20rec_De%20Villar%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="53B7A152E0A3B1C4BC25506CAE647BA1812D5BE795CFD557E9D15AA18A9C6E38">
    <pdf_title>Design and Implementation of a Long Range Iris Recognition System</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      They have tried to show that you could potentially do iris recognition at 30 meter standoff distance.
    </p>
    <p>
      
    </p>
    <p>
      Critiques:
    </p>
    <ol>
      <li>
        The diffraction analysis doesn't make any sense
      </li>
      <li>
        They have unnecessarily increased the system complexity by using extension tube and focal reducer on the 8&quot; [203] telescopy...thereby increasing the F/# to well beyond 10. And there is no analysis of this
      </li>
      <li>
        There is no analysis of the depth-of-field of the system.
      </li>
      <li>
        None of the algorithm/software used was developed by the authors ... relying on OpenCV for iris localization, and segmentation and using Daugman's commercial software for iris recognition.
      </li>
      <li>
        There is also no proper analysis of the FAR and FER, etc.
      </li>
      <li>
        It just seems to be some kind of DIY project ....
      </li>
    </ol>
    <p>
      
    </p>
    <p>
      Main points from the paper:
    </p>
    <p>
      --- not going to waste time trying to write this!!!
    </p>
  </body>
</html>
</richcontent>
<node TEXT="The  IAAD (Iris-at-a-Distance)  system is a prototype that illustrates the feasibility of iris recognition at a distance of 30 meters." ID="ID_538078679" CREATED="1377417762272" MODIFIED="1377417762272" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Design%20and%20implementation%20of%20a%20long%20range%20iris%20rec_De%20Villar%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="1" object_number="63" generation_number="0" document_hash="53B7A152E0A3B1C4BC25506CAE647BA1812D5BE795CFD557E9D15AA18A9C6E38">
    <pdf_title>Design and Implementation of a Long Range Iris Recognition System</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The system uses a wide-field-of-view camera to locate a subject  via  face  and  eye  detection.  A  narrow-field-of-view camera,  attached  to  an  8-inch [=203mm] telescope,  is  then  pointed  to  the first detected eye." ID="ID_948424555" CREATED="1377417762280" MODIFIED="1377417762281" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Design%20and%20implementation%20of%20a%20long%20range%20iris%20rec_De%20Villar%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="1" object_number="65" generation_number="0" document_hash="53B7A152E0A3B1C4BC25506CAE647BA1812D5BE795CFD557E9D15AA18A9C6E38">
    <pdf_title>Design and Implementation of a Long Range Iris Recognition System</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The system design is based on  a  telescope  which  is  mounted  on  a  pan/tilt  platform  that allows  for  rotation  in  the  horizontal  and  vertical  planes.  A wide-field-of-view  (WFOV)  camera  is  mounted  below  the telescope  and  fixed  to  rotate rorizontally  with  the  telescope. Video  from  the  WFOV  camera  is  used  to  locate  subjects&#x2019; faces and irises. The narrow field of view (NFOV) iris image acquisition camera is attached to the telescope eyepiece and is used to capture high resolution images of the subject&#x2019;s eyes." ID="ID_1992232020" CREATED="1377417762292" MODIFIED="1377417762292" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Design%20and%20implementation%20of%20a%20long%20range%20iris%20rec_De%20Villar%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="1" object_number="67" generation_number="0" document_hash="53B7A152E0A3B1C4BC25506CAE647BA1812D5BE795CFD557E9D15AA18A9C6E38">
    <pdf_title>Design and Implementation of a Long Range Iris Recognition System</pdf_title>
</pdf_annotation>
</node>
<node TEXT="A Meade LX200-R F/10 8 inch reflecting telescope  [8]  was  used  in  this  system; [BUT!! They also added an 18 cm extention tube ... so obviously the F/# would further increase ... and there is also a F/6.3 focal reducer to fit the image to the sensor ....] " ID="ID_360254471" CREATED="1377417762262" MODIFIED="1377417762263" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Design%20and%20implementation%20of%20a%20long%20range%20iris%20rec_De%20Villar%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="2" object_number="68" generation_number="0" document_hash="53B7A152E0A3B1C4BC25506CAE647BA1812D5BE795CFD557E9D15AA18A9C6E38">
    <pdf_title>Design and Implementation of a Long Range Iris Recognition System</pdf_title>
</pdf_annotation>
</node>
<node TEXT="We selected the AVT Guppy-... monochrome camera with a pixel size of 2.2 microns; we  used  a  Meade  f/6.3  focal  reducer  to  fit  the  image  to  the sensor. " ID="ID_1404006975" CREATED="1377417762249" MODIFIED="1377417762250" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Design%20and%20implementation%20of%20a%20long%20range%20iris%20rec_De%20Villar%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="3" object_number="69" generation_number="0" document_hash="53B7A152E0A3B1C4BC25506CAE647BA1812D5BE795CFD557E9D15AA18A9C6E38">
    <pdf_title>Design and Implementation of a Long Range Iris Recognition System</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The diffraction characteristics of this system in visible light limit its resolution to approximately 150 microns at 30m [insr: that is 3.57 mm in the object space], corresponding  to approximately 68 pixels per centimeter ??? [150/2 = 68, but what is the logic??]  &#x2013; well below  the 190 pixels calculated  earlier. " ID="ID_1657476135" CREATED="1377417762162" MODIFIED="1377417762163" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Design%20and%20implementation%20of%20a%20long%20range%20iris%20rec_De%20Villar%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="3" object_number="70" generation_number="0" document_hash="53B7A152E0A3B1C4BC25506CAE647BA1812D5BE795CFD557E9D15AA18A9C6E38">
    <pdf_title>Design and Implementation of a Long Range Iris Recognition System</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="1996_A System for Non-Intrusive Human Iris Acquisition _Hanna et al..pdf" ID="ID_887010650" CREATED="1377417762303" MODIFIED="1377424796441" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/1996_A%20System%20for%20Non-Intrusive%20Human%20Iris%20Acquisition%20_Hanna%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="DE7E06D49F4D4E8BE724E415E71BDA14DE7C2E03AAE80F7E613665830CF99">
    <pdf_title>A System for Non-intrusive Human Iris Acquisition and Identification</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2008_Stand-off iris recognition system_Wheeler et al..pdf" ID="ID_1964987099" CREATED="1377498875419" MODIFIED="1382603994623" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Stand-off%20iris%20recognition%20system_Wheeler%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="1221FD30652F20624495962C72927BDEFCFB4194374F42507CA72A6A74EE817">
    <pdf_title>Stand-off Iris Recognition System</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2004_Iris recognition with enhanced depth-of-field imag_van der Gracht et al..pdf" FOLDED="true" ID="ID_178820697" CREATED="1377498875494" MODIFIED="1382604562257" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2004_Iris%20recognition%20with%20enhanced%20depth-of-field%20imag_van%20der%20Gracht%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="F9A0E0DF72F9EE60FA66BF243A4873F4D9AE3FD64AC641BFC6FB9C12AB229D25">
    <pdf_title>Iris recognition with enhanced depth-of-field image acquisition</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<node TEXT="Appeared in:&#xd;&#xa;Proceedings of the SPIE Visual Information Processing XIII,&#xd;&#xa;Vol. 5438, pp. 120-129, Orlando, FL, 2004." ID="ID_554054223" CREATED="1384323606218" MODIFIED="1384323606218" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2004_Iris%20recognition%20with%20enhanced%20depth-of-field%20imag_van%20der%20Gracht%20et%20al..pdf">
<pdf_annotation type="COMMENT" page="1" object_number="490" generation_number="0" document_hash="F9A0E0DF72F9EE60FA66BF243A4873F4D9AE3FD64AC641BFC6FB9C12AB229D25">
    <pdf_title>Iris recognition with enhanced depth-of-field image acquisition</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="1998_Sensar... SecureTM Iris Identification System_Camus et al..pdf" ID="ID_1958328871" CREATED="1377498875530" MODIFIED="1377498875530" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/1998_Sensar...%20SecureTM%20Iris%20Identification%20System_Camus%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="30C81F744953E0F81B312BC6EBDB9F3DFFB1427B698236EC4EA9A7B6A4444">
    <pdf_title>Sensar. .SecureTM Iris Identification System</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2005_Improving iris recognition accuracy via cascaded c_Sun et al..pdf" ID="ID_560530563" CREATED="1377498875558" MODIFIED="1377498875558" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Improving%20iris%20recognition%20accuracy%20via%20cascaded%20c_Sun%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="93A733559E2F05EC69F71BD3A0B018784E3DB0CC134EB8AC90859DEF6201D">
    <pdf_title>A Real-Time Focusing Algorithm for Iris Recognition Camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2007_Extended evaluation of simulated wavefront coding _Smith et al..pdf" FOLDED="true" ID="ID_1687198893" CREATED="1377498875573" MODIFIED="1382600513744" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2007_Extended%20evaluation%20of%20simulated%20wavefront%20coding%20_Smith%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="76D637F46739630484DB526D2DF32A5618636278D13E7B487E8C3F98DD685">
    <pdf_title>Extended Evaluation of Simulated Wavefront Coding Technology in Iris Recognition</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<node TEXT="Simulation based paper" ID="ID_1052759100" CREATED="1382600520328" MODIFIED="1382600520328" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2007_Extended%20evaluation%20of%20simulated%20wavefront%20coding%20_Smith%20et%20al..pdf">
<pdf_annotation type="COMMENT" page="1" object_number="247" generation_number="0" document_hash="76D637F46739630484DB526D2DF32A5618636278D13E7B487E8C3F98DD685">
    <pdf_title>Extended Evaluation of Simulated Wavefront Coding Technology in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2011_A standoff multimodal biometric system_Boehnen et al..pdf" ID="ID_571791106" CREATED="1377498875589" MODIFIED="1382605881797" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2011_A%20standoff%20multimodal%20biometric%20system_Boehnen%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="4D5B718CF6953E7539C265B9D7E367F79DF6B82C8BDC8E519518969C4AE2">
    <pdf_title>A Standoff Multimodal Biometric System</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2012_A multi-sample standoff multimodal biometric syste_Boehnen et al..pdf" ID="ID_775399106" CREATED="1377498875622" MODIFIED="1377498875623" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2012_A%20multi-sample%20standoff%20multimodal%20biometric%20syste_Boehnen%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="445A98E42201213E816E9DAE9F55AECB62D69EDF52EC032FA22E1135BA4BE">
    <pdf_title>A Multi-Sample Standoff Multimodal Biometric System</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2005_Automatic eye-level height system for face and iri_Abiantun et al..pdf" ID="ID_872773886" CREATED="1377498875638" MODIFIED="1377498875638" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Automatic%20eye-level%20height%20system%20for%20face%20and%20iri_Abiantun%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="E0C634D5826849E642FA2002764132DCE9AD494A2E321219768D98875D8D">
    <pdf_title>Automatic Eye-level Height System for Face and Iris Recognition Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2012_Auto-focusing method for remote gaze tracking came_Lee et al..pdf" ID="ID_1312283555" CREATED="1377498875653" MODIFIED="1377498875654" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2012_Auto-focusing%20method%20for%20remote%20gaze%20tracking%20came_Lee%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="F19084652B73AB9C8827EF1726157AE80829E25D0969276B94A88E2F5CF8225">
    <pdf_title>Auto-focusing method for remote gaze tracking camera</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2008_Extended Depth of Field Iris Recognition with Corr_Boddeti and Kumar.pdf" ID="ID_294325117" CREATED="1377588779140" MODIFIED="1382603265605" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Extended%20Depth%20of%20Field%20Iris%20Recognition%20with%20Corr_Boddeti%20and%20Kumar.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="603D5E46CB6EA234C2C2A295D4CF7E4FBD37B6E2E7CD7EA31963933EF9B23B4">
    <pdf_title>978-1-4244-2730-7/08/$25.00 &#xa9;2008 IEEE</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2005_Performance evaluation of non-ideal iris based rec_Dorairaj et al..pdf" FOLDED="true" ID="ID_1347438633" CREATED="1377588779218" MODIFIED="1377588779218" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Performance%20evaluation%20of%20non-ideal%20iris%20based%20rec_Dorairaj%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="7643C377ECDAB68B82A479A8D315FD824381FBB5CC54EE1A41ED9EA1A8395">
    <pdf_title>0-7803-9134-9/05/$20.00 &#xa9;2005 IEEE</pdf_title>
</pdf_annotation>
<node TEXT="The system is designed to process non-ideal iris images in two steps: (i) estimation of the gaze direction and (ii) processing and encoding of the rotated iris image." ID="ID_1683079818" CREATED="1377588779202" MODIFIED="1378105483137" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2005_Performance%20evaluation%20of%20non-ideal%20iris%20based%20rec_Dorairaj%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="1" object_number="94" generation_number="0" document_hash="7643C377ECDAB68B82A479A8D315FD824381FBB5CC54EE1A41ED9EA1A8395">
    <pdf_title>0-7803-9134-9/05/$20.00 &#xa9;2005 IEEE</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2008_How to make iris recognition easier_Dong et al..pdf" ID="ID_1857797592" CREATED="1377588779218" MODIFIED="1382499771746" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_How%20to%20make%20iris%20recognition%20easier_Dong%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="F85395481EC8227F7BFE73F576C07C570FE16CF4601CA61ADE226385195F">
    <pdf_title>How to Make Iris Recognition Easier?</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2006_Iris recognition at a distance with expanded imagi_Narayanswamy and Silveira.pdf" ID="ID_18207458" CREATED="1377753273273" MODIFIED="1382944048776" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20recognition%20at%20a%20distance%20with%20expanded%20imagi_Narayanswamy%20and%20Silveira.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="EA548EBBAADB5E1491DBBD723F19CB3187F0EAD2822A2287FF4F2ACF549EA1">
    <pdf_title>Iris Recognition at a Distance with Expanded Imaging Volume</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2009_Image deblurring for less intrusive iris capture_Huang et al..pdf" ID="ID_358306215" CREATED="1378397408809" MODIFIED="1384330630298" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2009_Image%20deblurring%20for%20less%20intrusive%20iris%20capture_Huang%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="A4B7DAF9672240357438D89389B433161E795E753E8981A084FFAA496726C99C">
    <pdf_title>Image Deblurring for Less Intrusive Iris Capture</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2006_Multispectral Iris Analysis A Preliminary_Boyce et al..pdf" FOLDED="true" ID="ID_1456903921" CREATED="1378397408919" MODIFIED="1378397408920" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Multispectral%20Iris%20Analysis%20A%20Preliminary_Boyce%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="6F5DD26EDC01FCF38A18BB44FDB178C76CDFEE0589A485B285D14309B4C79">
    <pdf_title>Multispectral Iris Analysis: A Preliminary Study</pdf_title>
</pdf_annotation>
<node TEXT="Appeared in Proceedings of Computer Vision and Pattern Recognition Workshop on Biometrics (CVPRW), (New York, USA), June 2006" ID="ID_588865442" CREATED="1378397408914" MODIFIED="1378397408914" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Multispectral%20Iris%20Analysis%20A%20Preliminary_Boyce%20et%20al..pdf">
<pdf_annotation type="COMMENT" page="1" object_number="184" generation_number="0" document_hash="6F5DD26EDC01FCF38A18BB44FDB178C76CDFEE0589A485B285D14309B4C79">
    <pdf_title>Multispectral Iris Analysis: A Preliminary Study</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2013_Gaze estimation for off-angle iris recognition bas_Karakaya et al..pdf" ID="ID_1654881422" CREATED="1378397408932" MODIFIED="1378397408932" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2013_Gaze%20estimation%20for%20off-angle%20iris%20recognition%20bas_Karakaya%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="6A5F1C5B4B3341677815C854CABCE2357FD86F8A508D1D10BE8B2080C3591964">
    <pdf_title>n e b a L o a n</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2012_IRIS RECOGNITION OF DEFOCUSED IMAGES FOR MOBILE PH_Liu et al..pdf" ID="ID_430343701" CREATED="1378397408938" MODIFIED="1378397408939" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2012_IRIS%20RECOGNITION%20OF%20DEFOCUSED%20IMAGES%20FOR%20MOBILE%20PH_Liu%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="6A5F1C5B4B3341677815C854CABCE2357FD86F8A508D1D10BE8B2080C3591964">
    <pdf_title>n e b a L o a n</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2012_Extended depth of field system for long distance i_Chen et al..pdf" ID="ID_502234423" CREATED="1378397408944" MODIFIED="1378397408944" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2012_Extended%20depth%20of%20field%20system%20for%20long%20distance%20i_Chen%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="6A5F1C5B4B3341677815C854CABCE2357FD86F8A508D1D10BE8B2080C3591964">
    <pdf_title>n e b a L o a n</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2008_CombinedFaceAndIrisRecognitionSystem.pdf" ID="ID_681290954" CREATED="1384323606122" MODIFIED="1384323606125" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_CombinedFaceAndIrisRecognitionSystem.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="263DAA61571F2D8F7E4A3BCA871179BE5E2DBC16D65F93341B1419767E61743">
    <pdf_title>[-66 [-65</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2011_Quality-Driven Super-Resolution for Less Constrain_Nguyen et al..pdf" ID="ID_1171289758" CREATED="1384323606197" MODIFIED="1384323606198" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2011_Quality-Driven%20Super-Resolution%20for%20Less%20Constrain_Nguyen%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="7323DE4403371ADC294B275BDA28966AB9ACCB7123358F16E229E7F1359786F">
    <pdf_title>Quality-Driven Super-Resolution for Less Constrained Iris Recognition at a Distance</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2009_A Design of Iris Recognition System at a Distance_Dong et al..pdf" ID="ID_890373676" CREATED="1384323606253" MODIFIED="1384323606254" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2009_A%20Design%20of%20Iris%20Recognition%20System%20at%20a%20Distance_Dong%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="467C51F125882120AF72149B4BE4E4AC7961F2581C494245E3DE99A834D6B751">
    <pdf_title>A design of iris recognition system at a distance</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2013_Improved iris localization by using wide and narro_Kim et al..pdf" ID="ID_1459739633" CREATED="1384323606265" MODIFIED="1384323606266" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2013_Improved%20iris%20localization%20by%20using%20wide%20and%20narro_Kim%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="346A35761443EB3A57CDB142DF26359584BEFDE1AD25DACAD59BC37CAAF7">
    <pdf_title>Improved iris localization by using wide and narrow field of view cameras for</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2012_Iris Image Deblurring Based on Refinement of Point_Liu et al..pdf" ID="ID_386473161" CREATED="1384323606273" MODIFIED="1384323606273" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2012_Iris%20Image%20Deblurring%20Based%20on%20Refinement%20of%20Point_Liu%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="EA41FEEC8796551AFB4A4AC4E4221923862DA2D79ABF30D71DB0451E14B12">
    <pdf_title>Iris Image Deblurring Based on Refinement of Point Spread Function</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2008_Self-adaptive iris image acquisition system_Dong et al..pdf" ID="ID_313084442" CREATED="1384323606419" MODIFIED="1384323606419" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2008_Self-adaptive%20iris%20image%20acquisition%20system_Dong%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="DA85399F6C40BB47AC5B31B4C770199E96B4D38EDC311DF4C17E5DB3B88D1F8">
    <pdf_title>Self-adaptive iris image acquisition system</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2004_Fully automated iris recognition system utilizing _Hanna et al..pdf" ID="ID_526695189" CREATED="1384323606425" MODIFIED="1384323606425" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2004_Fully%20automated%20iris%20recognition%20system%20utilizing%20_Hanna%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="1C91876EA69AA931BD55F87D8D6170BCD3E214EC4FC9673F753E2511F9362CD4">
    <pdf_title>(12) United States Patent</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2013_Biometric iris image acquisition system with wavef_Hsieh et al..pdf" ID="ID_161148238" CREATED="1384323606431" MODIFIED="1384323606431" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2013_Biometric%20iris%20image%20acquisition%20system%20with%20wavef_Hsieh%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="BEAD1C1D16B78874FB6BEEE8B6B8F69C913C584EC847746D5B1567891912D">
    <pdf_title>SMU Interlibrary Loan Cover Sheet</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2007_Real-Time Image Restoration for Iris Recognition S_Kang and Park.pdf" ID="ID_1175872257" CREATED="1384323606436" MODIFIED="1384326811733" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2007_Real-Time%20Image%20Restoration%20for%20Iris%20Recognition%20S_Kang%20and%20Park.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="FDFCB5AFFD53AECEAB4E7021C0D716745E4D231CD545E67DBFF1EC18D2DAE2">
    <pdf_title>Real-Time Image Restoration for Iris Recognition Systems</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
</node>
</node>
<node TEXT="iris_recognition" FOLDED="true" ID="ID_1843240639" CREATED="1376337745489" MODIFIED="1376337749390">
<node TEXT="@" FOLDED="true" ID="ID_1326898155" CREATED="1377023417807" MODIFIED="1377023438088">
<attribute NAME="mon_incoming_folder" VALUE="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/" OBJECT="java.net.URI|workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/"/>
<attribute NAME="mon_mindmap_folder" VALUE="@@library_mindmaps@@"/>
<attribute NAME="mon_auto" VALUE="2" OBJECT="java.lang.Integer|2"/>
<attribute NAME="mon_subdirs" VALUE="2" OBJECT="java.lang.Integer|2"/>
<attribute NAME="mon_flatten_dirs" VALUE="0" OBJECT="java.lang.Integer|0"/>
<node TEXT="2010_Pigment Melanin Pattern for Iris Recognition_Hosseini et al..pdf" FOLDED="true" ID="ID_267310961" CREATED="1377023441243" MODIFIED="1377023441243" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2010_Pigment%20Melanin%20Pattern%20for%20Iris%20Recognition_Hosseini%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="7EB8D8EFC41C6A61379E632486C2B6B24BAB66679E6E8A22564FBF21DAA17C5D">
    <pdf_title>Pigment Melanin: Pattern for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2008_An effective and fast iris recognition system base_Nabti and Bouridane.pdf" FOLDED="true" ID="ID_348951898" CREATED="1377023441256" MODIFIED="1377023441256" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2008_An%20effective%20and%20fast%20iris%20recognition%20system%20base_Nabti%20and%20Bouridane.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="9CCB6614D4204B9FF473D71E768379C8296A79A37EC3173F63EBEAF41E0D59C">
    <pdf_title>Aneffectiveandfastirisrecognitionsystembasedonacombinedmultiscale featureextractiontechnique</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2004_Iris pattern extraction using bit planes and stand_Bonney et al..pdf" ID="ID_1343710925" CREATED="1377023441318" MODIFIED="1377309514191" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_Iris%20pattern%20extraction%20using%20bit%20planes%20and%20stand_Bonney%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="75EF839FC97C5E571B8DD760EF48757AAD8413946BD9E5B8953B8C3341158C85">
    <pdf_title>IRIS PATTERN EXTRACTION USING BIT PLANES AND STANDARD DEVIATIONS</pdf_title>
</pdf_annotation>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Comments: See the comments for &quot;2005_Non-orthogonal Iris Segmentation_bonney.pdf&quot;
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="1996_Iris recognition technology_Williams.pdf" ID="ID_1052800147" CREATED="1377023441356" MODIFIED="1378167056931" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1996_Iris%20recognition%20technology_Williams.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="40A7AB19C41AECB319A5C6D23E181EE668A1ABF88AB631CADA3FC71E61F5855">
    <pdf_title>Iris Recognition Technology</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2005_Collection and Segmentation of NonOrthogonal Irise_Ruth M. Gaunt.pdf" ID="ID_308280706" CREATED="1377023441412" MODIFIED="1377291195634" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_Collection%20and%20Segmentation%20of%20NonOrthogonal%20Irise_Ruth%20M.%20Gaunt.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="EFA1E48511C54D8574589672EE338E8BA6843F19C1E27CFD9B6B39C6CD9E7BCF">
    <pdf_title>Collection and Segmentation of Non-Orthogonal Irises for Iris Recognition</pdf_title>
</pdf_annotation>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff0000">Goal:</font></b><font color="#ff0000">&#160;</font>Iris segmentation to isolate the iris from for non-orthogonal iris
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff0000">Authors:</font></b>&#160;Ruth Gaunt, Bradford Bonney, Delores M. Etter, Robert W. Ives ...
    </p>
    <p>
      &#160;
    </p>
    <p>
      <b><font color="#ff0000">Non-orthogonal image:</font></b>
    </p>
    <p>
      A non-orthogonal image is an image where the eye is not looking directly at the camera.&#160;&#160;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff0000">Problem for non-orthogonal image:</font></b>
    </p>
    <p>
      Most currently available iris recognition systems assume that captured iris images are normal, or orthogonal, to the sensing devices, and therefore search for circular patterns in the image.&#160;&#160;Off-angle, or non-orthogonal, images of irises cannot currently&#160;&#160;be&#160;&#160;used&#160;&#160;for&#160;&#160;identification&#160;&#160;because&#160;&#160;the&#160;&#160;iris&#160; appears&#160;&#160;elliptical;&#160;&#160;commercial&#160;&#160;algorithms cannot isolate an elliptical iris in order to start the identification process.&#160;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff0000">Segmentation method:</font></b>
    </p>
    <p>
      Segmentation of non-orthogonal irises&#160;&#160;proceeds&#160;&#160;as&#160;&#160;follows:&#160;&#160;
    </p>
    <p>
      (1) the pupil&#160;&#160;is isolated using<font color="#0099cc">&#160;<b>bit-plane processing</b></font>.
    </p>
    <p>
      (2) the&#160;limbic boundary is determined in the cardinal directions using local statistics,
    </p>
    <p>
      (3) an ellipse is calculated that fits those points. A circular iris&#160;&#160;is&#160;&#160;never&#160;&#160;assumed&#160;&#160;during boundary&#160;&#160;calculations.
    </p>
    <p>
      (4) After the inner and outer iris&#160;&#160;boundaries&#160;&#160;are calculated, an&#160;&#160;&#8220;iris&#160;&#160;mask&#8221; is created.&#160;The&#160;&#160;mask&#160;is used to identify pixels in the image that contain the iris data.
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2004_Comparison of iris recognition algorithms_Vatsa et al..pdf" ID="ID_1290419441" CREATED="1377023441441" MODIFIED="1377314732505" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_Comparison%20of%20iris%20recognition%20algorithms_Vatsa%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="748D2A67CA287F101A73A476DDDD88E93D7EF47777AE6ED9AA1CA519CF1785">
    <pdf_title>iris</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2002_How iris recognition works_Daugman.pdf" FOLDED="true" ID="ID_1680117162" CREATED="1377023441463" MODIFIED="1378107959460" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      <b>Goal of the paper:</b>
    </p>
    <p>
      This paper explains how the algorithms work, and presents new data on the statistical properties and singularity of iris patterns based on 9.1 million comparisons.
    </p>
    <p>
      
    </p>
    <p>
      <b>From the paper:</b>
    </p>
    <p>
      The iris recognition principle is the failure of a test of statistical independence on iris phase structure encoded by multi-scale quadrature wavelets.
    </p>
    <p>
      
    </p>
    <p>
      The combinatorial complexity of this phase information across different persons spans about 249 degrees of freedom and generates a discrimination entropy of about 3.2 bits/mm^2 over the iris, enabling real-time decisions about personal identity with extremely high con&#64257;dence.
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#ccffcc"/>
<node TEXT="This suggests that in order to identify people by their iris patterns with high con&#xfb01;dence, we need to demand only a very forgiving degree of match (say, HD &#x2264; 0.32)." ID="ID_1092142493" CREATED="1378106461302" MODIFIED="1378106461303" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf">
<pdf_annotation type="BOOKMARK" page="7" object_number="134" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2007_Depth of Field for Forensic Biometric Imaging_Wasserman.pdf" FOLDED="true" ID="ID_1834575555" CREATED="1377023441528" MODIFIED="1377023441528" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_Depth%20of%20Field%20for%20Forensic%20Biometric%20Imaging_Wasserman.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="6AFB964BF9BCFE6D59B88A2635799808A173D23688E95544CCBF0475EDEA3E4">
    <pdf_title>Biometric Imaging</pdf_title>
</pdf_annotation>
<node TEXT="Automatic matching systems put stringent requirements on image quality." ID="ID_1300799514" CREATED="1378397409826" MODIFIED="1378397409826" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_Depth%20of%20Field%20for%20Forensic%20Biometric%20Imaging_Wasserman.pdf">
<pdf_annotation type="BOOKMARK" page="2" object_number="9037" generation_number="0" document_hash="6AFB964BF9BCFE6D59B88A2635799808A173D23688E95544CCBF0475EDEA3E4">
    <pdf_title>Biometric Imaging</pdf_title>
</pdf_annotation>
</node>
<node TEXT="DOF has a major effect on the usability, hence the accuracy of biometric identification systems." ID="ID_1986257772" CREATED="1378397409831" MODIFIED="1378397409831" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_Depth%20of%20Field%20for%20Forensic%20Biometric%20Imaging_Wasserman.pdf">
<pdf_annotation type="BOOKMARK" page="5" object_number="9038" generation_number="0" document_hash="6AFB964BF9BCFE6D59B88A2635799808A173D23688E95544CCBF0475EDEA3E4">
    <pdf_title>Biometric Imaging</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The DOF is commonly defined as the length of the region where the Circle of Confusion diameter is less than a predetermined value." ID="ID_1910319233" CREATED="1378397409817" MODIFIED="1378397409818" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_Depth%20of%20Field%20for%20Forensic%20Biometric%20Imaging_Wasserman.pdf">
<pdf_annotation type="BOOKMARK" page="9" object_number="9039" generation_number="0" document_hash="6AFB964BF9BCFE6D59B88A2635799808A173D23688E95544CCBF0475EDEA3E4">
    <pdf_title>Biometric Imaging</pdf_title>
</pdf_annotation>
</node>
<node TEXT="It is strictly limited in conventional optical systems by immutable physical laws." ID="ID_1178923203" CREATED="1378397409835" MODIFIED="1378397409835" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_Depth%20of%20Field%20for%20Forensic%20Biometric%20Imaging_Wasserman.pdf">
<pdf_annotation type="BOOKMARK" page="9" object_number="9040" generation_number="0" document_hash="6AFB964BF9BCFE6D59B88A2635799808A173D23688E95544CCBF0475EDEA3E4">
    <pdf_title>Biometric Imaging</pdf_title>
</pdf_annotation>
</node>
<node TEXT="DOF vs F-Number (NIST Iris Imaging Platform, Object Space)  ... Max. Circle of Confusion = 0.016 mm" ID="ID_171243392" CREATED="1378397409839" MODIFIED="1378397409839" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_Depth%20of%20Field%20for%20Forensic%20Biometric%20Imaging_Wasserman.pdf">
<pdf_annotation type="BOOKMARK" page="10" object_number="9041" generation_number="0" document_hash="6AFB964BF9BCFE6D59B88A2635799808A173D23688E95544CCBF0475EDEA3E4">
    <pdf_title>Biometric Imaging</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Specification of MTF For Iris Identification" FOLDED="true" ID="ID_1711270374" CREATED="1378397409843" MODIFIED="1378397409844" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_Depth%20of%20Field%20for%20Forensic%20Biometric%20Imaging_Wasserman.pdf">
<pdf_annotation type="BOOKMARK" page="19" object_number="9042" generation_number="0" document_hash="6AFB964BF9BCFE6D59B88A2635799808A173D23688E95544CCBF0475EDEA3E4">
    <pdf_title>Biometric Imaging</pdf_title>
</pdf_annotation>
<node TEXT="ISO/IEC19794-6 Iris image data, Annex A, Iris image capture, the MTF is specified as a minimum of 60% response at 2 to 4 line pairs per millimeter, ( lp/mm)" ID="ID_787742765" CREATED="1378397409847" MODIFIED="1378397409848" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_Depth%20of%20Field%20for%20Forensic%20Biometric%20Imaging_Wasserman.pdf">
<pdf_annotation type="BOOKMARK" page="19" object_number="9043" generation_number="0" document_hash="6AFB964BF9BCFE6D59B88A2635799808A173D23688E95544CCBF0475EDEA3E4">
    <pdf_title>Biometric Imaging</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Allows images with artifacts&#xd;* Edge response is not specified&#xd;* Contrast inversion not specified" ID="ID_1778632538" CREATED="1378397409853" MODIFIED="1378397409854" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_Depth%20of%20Field%20for%20Forensic%20Biometric%20Imaging_Wasserman.pdf">
<pdf_annotation type="BOOKMARK" page="19" object_number="9044" generation_number="0" document_hash="6AFB964BF9BCFE6D59B88A2635799808A173D23688E95544CCBF0475EDEA3E4">
    <pdf_title>Biometric Imaging</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="1993_High confidence visual recognition of persons by a_Daugman.pdf" ID="ID_1489464450" CREATED="1377023441535" MODIFIED="1378260185552" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1993_High%20confidence%20visual%20recognition%20of%20persons%20by%20a_Daugman.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="EAD7EAA881C7FEEC7C52AD1EF6FD287451F59F8F633724ECE68BDCFBD4147">
    <pdf_title>High Confidence Visual Recognition of Persons a Test of Statistical Independence</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2006_Collection of Non-Orthogonal Iris Images for Iris _Gaunt.pdf" ID="ID_538555490" CREATED="1377023441569" MODIFIED="1377291733754" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2006_Collection%20of%20Non-Orthogonal%20Iris%20Images%20for%20Iris%20_Gaunt.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="6ED2A76149FFC77E74D9623810B176301E7E8B226838369EEDC5A2B7F5467361">
    <pdf_title>Collection of Non-Orthogonal Iris Images for Iris Recognition</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2005_Non-Orthogonal Iris Segmentation_Bonney.pdf" ID="ID_771820219" CREATED="1377023441575" MODIFIED="1377314977084" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_Non-Orthogonal%20Iris%20Segmentation_Bonney.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="1C358D145C7229B633DDE8119BC3559B28CA9B3C8D8DC36ECA7B5765AFD1A2">
    <pdf_title>Non-orthogonal Iris Segmentation</pdf_title>
</pdf_annotation>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff0000">Goal:</font></b><font color="#ff0000">&#160;</font>To isolate the iris in a non-orthogonal, digital image of the human eye.&#160;This work deals only with the &quot;pre-processing&quot;/normalization and &quot;localization&quot; of iris.
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff0000">Authors:</font></b>&#160;Bradford L. Bonney, Delores M. Etter, Robert W. Ives ...
    </p>
    <p>
      &#160;
    </p>
    <p>
      <b><font color="#ff0000">Non-orthogonal image:</font></b>
    </p>
    <p>
      A non-orthogonal image is an image where the eye is not looking directly at the camera.&#160;&#160;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff0000">Problem for non-orthogonal image:</font></b>
    </p>
    <p>
      Most currenty iris recognition systems assume that captured iris images are normal, or orthogonal, to the sensing devices, and therefore search for circular patterns in the image.&#160;&#160;Off-angle, or non-orthogonal, images of irises cannot currently&#160;&#160;be&#160;&#160;used&#160;&#160;for&#160;&#160;identification&#160;&#160;because&#160;&#160;the&#160;&#160;iris&#160; appears&#160;&#160;elliptical;&#160;&#160;commercial&#160;&#160;algorithms cannot isolate an elliptical iris in order to start the identification process.&#160;
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff0000">What this research addressed?</font></b>
    </p>
    <p>
      This research expanded the functionality of iris recognition technology by developing a set of new algorithms to isolate a non-orthogonal iris in a digital image.
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff0000">How was it addressed?</font></b>
    </p>
    <p>
      1. Isolate the pupil using <b><font color="#0000cc">bit-plane&#160;&#160;processing</font></b>.
    </p>
    <p>
      2. Identify/locate the pupil-iris boundary (extension of step 1, also using binary morphological operation, specifially the &quot;open&quot; operation). &#160;
    </p>
    <p>
      3. Identify/locate the limbic boundary (the outer edge of the iris) using <b><font color="#3300ff">standard deviation</font></b>&#160;(local image statictics) window method and adaptive thresholding. An ellipse is calcuated that fits those points. A circular iris is not assumed during this process.
    </p>
    <p>
      4. Create&#160;&#160;&#8220;iris&#160;&#160;mask&#8221;&#160;&#160;to identify pixels in the image that contained the iris data.
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#0099cc">My critic:</font>&#160;</b>
    </p>
    <p>
      In the identification of the outer/limbic boundary, the algorithm assumes that the limbic boundary marker cannot be more than 50 pixels away from the pupil boundary. I think this approach may be too restrictive for applying over a large volume.
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2004_A new approach to iris pattern recognition_Du et al..pdf" ID="ID_154716010" CREATED="1377023441578" MODIFIED="1377286913461" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_A%20new%20approach%20to%20iris%20pattern%20recognition_Du%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="8EDE319D14DFED3E79E798CDD3B20DE75CF549CA9B9EC6B712F652D2054BA83">
    <pdf_title>A New Approach to Iris Pattern Recognition</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff0000">Goal:</font></b><font color="#ff0000">&#160;</font>Iris identification using adaptive thresholding in the spatial domain.
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff0000">Authors:</font></b>&#160;Yingzi Du, Delores M. Etter, Robert W. Ives, Thad Welch.
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff0000">Advantages of the method (as claimed in the paper)</font></b>
    </p>
    <p>
      -- this mehod can be used for partial iris recognition
    </p>
    <p>
      -- improve computational efficiency.
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff0000">Process </font></b>
    </p>
    <p>
      1. Pre-processing step: Identify the pupillary (inner) boundary Canny edge detection and mask out eyelashes or high reflectance pixels on a downsampled image of the eye.
    </p>
    <p>
      2. Transform image to polar coordinate system, in which the limbic (outer) boundary is nearly horizontal. This is now detected using a horizontal Sobel filter by identifiying the &quot;longest&quot; [??] horizontal edge .
    </p>
    <p>
      3. Normalize the iris pattern (and also apply mask) to make the iris pattern scale invariant.
    </p>
    <p>
      4. Iris enrollment: Create feature vector by using adaptive thresholding and a specific binary image operation.
    </p>
    <p>
      5. Iris recognition: [steps 1 through 4] + use hamming distance measure between feature vectors.
    </p>
    <p>
      &#160;&#160;&#160;-- Note that unlike Daugman's approach of &quot;statistical failure&quot; for matching identification, this algorithm indicates a positive match if the hamming distance d is &gt; 0.8
    </p>
    <p>
      
    </p>
    <p>
      <b><font color="#ff0000">Result:</font></b>
    </p>
    <p>
      CASIA (Chinese Academy of Sciences) database: 756 iris images from 108 different eyes (7 iris of each eye)
    </p>
    <p>
      4 eyes couldn't be enrolled.
    </p>
    <p>
      
    </p>
    <p>
      Test on the enrolled irises:
    </p>
    <p>
      0% FAR
    </p>
    <p>
      but the system couldn't identify 46 iris images ...
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      &#160;
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="2012_Reliable iris localization using integral projecti_Farmanullah Jan et al..pdf" ID="ID_613517812" CREATED="1377023441616" MODIFIED="1377023441617" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2012_Reliable%20iris%20localization%20using%20integral%20projecti_Farmanullah%20Jan%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="2A8E91762B17B476A5C3F8DE023CB11B086A44BE851A76BDD0DC9037C06">
    <pdf_title>Reliable iris localization using integral projection function and 2D-shape properties</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2006_BiometricQualityworkshop_IrisImgQual_Wasserman.pdf" ID="ID_90766310" CREATED="1377023441647" MODIFIED="1377023441647" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2006_BiometricQualityworkshop_IrisImgQual_Wasserman.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="22DDCD900F1828D9EDF4D5C175F228BB941AD675B54D095BAE0F17FB38021">
    <pdf_title>Digital Image Quality for Digital Image Quality for Iris Recognition Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2012_Comparative Analysis for Iris Recognition_Khaladkar and Ganorkar.pdf" ID="ID_304280324" CREATED="1377023441745" MODIFIED="1377210564896" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2012_Comparative%20Analysis%20for%20Iris%20Recognition_Khaladkar%20and%20Ganorkar.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="25E241EE74363B4387E7A82A6CD848C02C29424A33AE2577FA7803FD46A">
    <pdf_title>Comparative Analysis for Iris Recognition</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2007_New Methods in Iris Recognition_Daugman.pdf" ID="ID_1177696163" CREATED="1377023441748" MODIFIED="1378113792054" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_New%20Methods%20in%20Iris%20Recognition_Daugman.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="19BB4386435CF593679AA8E5C1AF8889D52156A1117BACC06F3031DAC485B6">
    <pdf_title>New Methods in Iris Recognition</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2006_Using Non-Orthogonal Iris Images for Iris Recognit_Gaunt.pdf" ID="ID_1494097756" CREATED="1377023441786" MODIFIED="1377023441786" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2006_Using%20Non-Orthogonal%20Iris%20Images%20for%20Iris%20Recognit_Gaunt.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="72B6BB67675F33EB4BF78F965ACB1E1B6DF1E509D1D395E156C2B1CF2325049">
    <pdf_title>USING NON-ORTHOGONAL IRIS IMAGES FOR IRIS RECOGNITION</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2006_Design of an Iris Imaging Platform_Wasserman.pdf" ID="ID_439177698" CREATED="1377159276702" MODIFIED="1377159276703" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2006_Design%20of%20an%20Iris%20Imaging%20Platform_Wasserman.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="512CBD891F3ECB18F75858D734CD6FD0C8D8DFD07A579F94134E67D968E3BE">
    <pdf_title>Design of an Iris Imaging Design of an Iris Imaging Platform Platform</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2005_UBIRIS A Noisy Iris Image Database_Proen&#xe7;a and Alexandre.pdf" FOLDED="true" ID="ID_1083765092" CREATED="1377159276710" MODIFIED="1377294916460" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_UBIRIS%20A%20Noisy%20Iris%20Image%20Database_Proen&#xe7;a%20and%20Alexandre.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="65CB4EB67AEFBCB8F1F5486AFCA82F41D526244988644BE1FD0159E1C95DC4">
    <pdf_title>UBIRIS: A noisy iris image database</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<node TEXT="Published in Lecture Notes in Computer Science - ICIAP 2005: 13th International Conference on Image&#xd;&#xa;Analysis and Processing, Cagliari, Italy, September 6-8, 2005, vol. 1, pag. 970-977, ISBN: 3-540-28869-4" ID="ID_1783802943" CREATED="1377159276707" MODIFIED="1377294927462" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_UBIRIS%20A%20Noisy%20Iris%20Image%20Database_Proen&#xe7;a%20and%20Alexandre.pdf">
<pdf_annotation type="COMMENT" page="1" object_number="41" generation_number="0" document_hash="65CB4EB67AEFBCB8F1F5486AFCA82F41D526244988644BE1FD0159E1C95DC4">
    <pdf_title>UBIRIS: A noisy iris image database</pdf_title>
</pdf_annotation>
<edge WIDTH="thin"/>
</node>
</node>
<node TEXT="2003_Recognition of human iris patterns for biometric i_Masek.pdf" FOLDED="true" ID="ID_824362978" CREATED="1377418575208" MODIFIED="1378105321438" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<node TEXT="[Database used] To test the system, two data sets of eye images will be used  as  inputs;  a  database  of  756  greyscale  eye  images  courtesy  of  The  Chinese Academy of Sciences &#x2013; Institute of Automation (CASIA) [13], and a database of 120 digital greyscale images courtesy of the Lion&#x2019;s Eye Institute (LEI) [14]. " ID="ID_960043825" CREATED="1377753275259" MODIFIED="1377753275260" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf">
<pdf_annotation type="BOOKMARK" page="8" object_number="8373" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Eyelids were isolated by first fitting a line to the upper and lower eyelid using the linear Hough transform. " ID="ID_829090675" CREATED="1377753275236" MODIFIED="1377753275237" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf">
<pdf_annotation type="BOOKMARK" page="12" object_number="8374" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[Implementation of Normalization] A  constant  number  of  points  are  chosen  along  each  radial  line,  so  that  a  constant number of radial data points are taken, irrespective of how narrow or wide the radius is at a particular angle...... As in Daugman&#x2019;s rubber sheet model, removing  rotational  inconsistencies  is  performed  at  the  matching  stage  and  will  be discussed in the next chapter." ID="ID_1038967563" CREATED="1378104624025" MODIFIED="1378104624025" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf">
<pdf_annotation type="BOOKMARK" page="19" object_number="8383" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="There are a number of parameters in the iris recognition system, and optimum values for these parameters were required in order to provide the best recognition rate. These parameters include; the radial and angular resolution, r and &#x3b8; respectively, which give the number of data points for encoding each template, and the filter parameters for feature encoding. The filter parameters include, the number of filters, N, their base wavelength &#x3bb;_n , filter bandwidths given by &#x3c3;/f, and the multiplicative ..." ID="ID_395625143" CREATED="1378104624141" MODIFIED="1378104624141" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf">
<pdf_annotation type="BOOKMARK" page="31" object_number="8390" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2000_The human iris structure and its usages_Muron and Pospisil.pdf" FOLDED="true" ID="ID_1399543236" CREATED="1377422595824" MODIFIED="1377422681213" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2000_The%20human%20iris%20structure%20and%20its%20usages_Muron%20and%20Pospisil.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="CECD1CA79160AA1C60BAEE70D2A558BE362BCDAB5DBAC18A6768D5F2F17">
    <pdf_title>1 . I n t r o d u c t i o n</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<node TEXT=" The tissue of the iris is soft and loosely woven and it is called STROMA." ID="ID_1229374576" CREATED="1377422595836" MODIFIED="1377422673793" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2000_The%20human%20iris%20structure%20and%20its%20usages_Muron%20and%20Pospisil.pdf">
<pdf_annotation type="BOOKMARK" page="2" object_number="379" generation_number="0" document_hash="CECD1CA79160AA1C60BAEE70D2A558BE362BCDAB5DBAC18A6768D5F2F17">
    <pdf_title>1 . I n t r o d u c t i o n</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2001_Epigenetic randomness, complexity and singularity _Daugman and Downing.pdf" ID="ID_1544231541" CREATED="1377457037114" MODIFIED="1377457037116" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2001_Epigenetic%20randomness,%20complexity%20and%20singularity%20_Daugman%20and%20Downing.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="C23547EB6AEA2F8EF1E572215B6B22CFA87E83C4B9D2ED5A3A8994943E8329A">
    <pdf_title>7 1 &quot;@E:F/#</pdf_title>
</pdf_annotation>
</node>
<node TEXT="1997_Iris recognition an emerging biometric technology_Wildes.pdf" ID="ID_805445746" CREATED="1377498876205" MODIFIED="1378882821006" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1997_Iris%20recognition%20an%20emerging%20biometric%20technology_Wildes.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="571C9339BD2F81A5E3B863F931AFA853D1B9B3FAA197435097E2B592CD1353D0">
    <pdf_title>Iris Recognition: An Emerging Biometric Technology</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2006_Review of iris recognition cameras, systems, and _Du.pdf" ID="ID_1958036411" CREATED="1377498876217" MODIFIED="1377498876218" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2006_Review%20of%20iris%20recognition%20cameras,%20systems,%20and%20_Du.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="6F9771E1B433D25FC195B43164117CD1925C988F5B366C3CE243419BCF23">
    <pdf_title>Review of iris recognition: cameras, systems, and their applications</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2013_Implementation of Reliable Open Source IRIS Recogn_Ikhar et al..pdf" ID="ID_51265576" CREATED="1377498876220" MODIFIED="1377498876221" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2013_Implementation%20of%20Reliable%20Open%20Source%20IRIS%20Recogn_Ikhar%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="201FA0D6995DE1B4D721D5B58346C338A498A14C53570578267A0F7B5114353">
    <pdf_title>Implementation of Reliable Open Source</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2013_A survey on prominent iris recognition systems_George and Anand Deva Durai.pdf" ID="ID_1964546288" CREATED="1377498876223" MODIFIED="1377498876223" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2013_A%20survey%20on%20prominent%20iris%20recognition%20systems_George%20and%20Anand%20Deva%20Durai.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="D85082F927EE5595CB12967AD7E3CB9518152C4CD17FB2FD03D30A46F309E">
    <pdf_title>A Survey on Prominent Iris Recognition Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2010_The UBIRIS. v2 A database of visible wavelength i_Proenca et al..pdf" ID="ID_1181940343" CREATED="1377498876226" MODIFIED="1377498876226" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2010_The%20UBIRIS.%20v2%20A%20database%20of%20visible%20wavelength%20i_Proenca%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="F85146DF2894C4D8B9428FC95B421B1EB5C3FA6682E8E8DBACD7879D9AAE9A">
    <pdf_title>The UBIRIS.v2: A Database of Visible Wavelength Iris Images Captured</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2013_A Critical Survey of Iris Based Recognition System_Abbasi et al..pdf" ID="ID_1260907123" CREATED="1377498876229" MODIFIED="1377498876229" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2013_A%20Critical%20Survey%20of%20Iris%20Based%20Recognition%20System_Abbasi%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="3835F2703BAF8BB8E758FD1D73EA9DAE1D6F178AA37A5E44A486BAA1183A04C">
    <pdf_title>A Critical Survey of Iris Based Recognition Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2005_Off-angle iris recognition using bi-orthogonal wav_Abhyankar et al..pdf" ID="ID_302244874" CREATED="1377588779748" MODIFIED="1377588779748" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_Off-angle%20iris%20recognition%20using%20bi-orthogonal%20wav_Abhyankar%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="76951AC913D42DA68DF74784581C26A99F3979AD4972DD029998F865B785473">
    <pdf_title>Off-angle Iris Recognition Using Bi-orthogonal Wavelet Network System</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2006_Image quality assessment for iris biometric_Kalka et al..pdf" ID="ID_1837357752" CREATED="1377588779748" MODIFIED="1377588779748" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2006_Image%20quality%20assessment%20for%20iris%20biometric_Kalka%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="DE9DD5B8E562C370C4E291443BCEAD920BA7BADD6E2A43B8CA3A47E762F99">
    <pdf_title>Nathan D. Kalka, Jinyu Zuo, Natalia A. Schmid, Bojan Cukic Lane Department of Computer Science and Electrical Engineering kalka, jinyuz, natalias, cukic@csee.wvu.edu</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2011_Impact of out-of-focus blur on iris recognition_Sazonova et al..pdf" ID="ID_640806407" CREATED="1377588779764" MODIFIED="1377588779764" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Impact%20of%20out-of-focus%20blur%20on%20iris%20recognition_Sazonova%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="D0A6AFF6B4AB32F7FE60783715981CC4B29838BEBD44E1946534CBFD8C94F83">
    <pdf_title>Impact of out-of-focus blur on iris recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2010_Iris image segmentation and sub-optimal images_Matey et al..pdf" ID="ID_1483157427" CREATED="1377588779764" MODIFIED="1377588779764" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2010_Iris%20image%20segmentation%20and%20sub-optimal%20images_Matey%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="291300997CB6275E71B6F4A75521A926DC65AF4C83BC4528DC8A6A7345EA">
    <pdf_title>Image and Vision Computing</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2007_An Iris Image Quality Assessment Method Based on L_Wan et al..pdf" ID="ID_614731848" CREATED="1377588779842" MODIFIED="1377588779842" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_An%20Iris%20Image%20Quality%20Assessment%20Method%20Based%20on%20L_Wan%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="AF891F0E2DB3EE6D2E35D56D5D5F4E73F2A59F633E5549CBF706073E6FFF6DA">
    <pdf_title>&#xb3;&#xb3; &#xb3;&#xb3;</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2011_Iris Quality Calibration and Evaluation (IQCE) Pe_Tabassi et al..pdf" FOLDED="true" ID="ID_1085296108" CREATED="1377588779842" MODIFIED="1378109069789" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<node TEXT="One question is how closely the impairment in our synthetic data models the impairment in the images captured with a capture device that produces iris images with the same iris diameter as our synthetic data. In a real-world scenario, spatial sampling rate is affected by several factors such as optical characteristic of the camera (e.g., MTF), focus, diffraction, subject-camera distance and their relative motion. In our study, all these factors stay almost constant, and only sensor pixel density varie..." ID="ID_1012926872" CREATED="1377588779873" MODIFIED="1377588779873" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="84" object_number="2192" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The earlier academic publications on iris recognition [6, 24] used circle-&#xfb01;tting methods to estimate the IRIS SHAPE . However, the circularity assumption is not always true; consequently, the accuracy of these methods drops when dealing with iris images with off-axis angle or non-circular for other reasons (including intrinsically non-circle irises). There are many published technical papers documenting methods for detection of iris-sclera boundary (as part of iris segmentation) [8], and some do not m..." ID="ID_648089504" CREATED="1377588779857" MODIFIED="1377588779857" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="135" object_number="2195" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Defocus blur can result from many sources, but in general, defocus occurs when the object (an iris in this case) is outside the depth of &#xfb01;eld of the camera. The further an object is from the focal plane the higher the degree of defocus. Depth of &#xfb01;eld is affected by aperture size, the smaller the aperture size the greater the depth of &#xfb01;eld." ID="ID_153956287" CREATED="1377588779842" MODIFIED="1377588779842" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="172" object_number="2196" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2005_A novel iris recognition system using morphologica_Poursaberi and Araabi.pdf" ID="ID_112152083" CREATED="1377588779904" MODIFIED="1377588779904" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_A%20novel%20iris%20recognition%20system%20using%20morphologica_Poursaberi%20and%20Araabi.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="A0C531D5366E887281FF92A94E53BC3C1FDFFFDFF299FFA9C4F3F151D05412CD">
    <pdf_title>A Novel Iris Recognition System Using Morphological Edge Detector and Wavelet Phase Features</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2007_On Techniques for Angle Compensation in Nonideal I_Schuckers et al..pdf" ID="ID_511922715" CREATED="1377588779920" MODIFIED="1377588779920" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_On%20Techniques%20for%20Angle%20Compensation%20in%20Nonideal%20I_Schuckers%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="7D2BD7397C5A4B6635E080E0BED298111510ABA252909F5A78F6878C77F360ED">
    <pdf_title>On Techniques for Angle Compensation in Nonideal Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2006_Iris Recognition An Analysis of the Aliasing Prob_Proenca and Alexandre.pdf" FOLDED="true" ID="ID_1211039910" CREATED="1377753275209" MODIFIED="1377753275209" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2006_Iris%20Recognition%20An%20Analysis%20of%20the%20Aliasing%20Prob_Proenca%20and%20Alexandre.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="20CAAF5A19366A361AF45EEDC37161D946E88C8A6CA41340A0E4123B40C6743">
    <pdf_title>Iris Recognition: An Analysis of the Aliasing Problem in the Iris Normalization Stage</pdf_title>
</pdf_annotation>
<node TEXT="Published in IEEE Proceedings of the 2006 International Conference on Computational Intelligence and Security - &#xd;&#xa;CIS 2006, Guangzhou, China, November 3-6, 2006, vol. 2, pag. 1771-1774, ISBN: 1-4244-0604-8." ID="ID_649437636" CREATED="1377753275218" MODIFIED="1377753275218" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2006_Iris%20Recognition%20An%20Analysis%20of%20the%20Aliasing%20Prob_Proenca%20and%20Alexandre.pdf">
<pdf_annotation type="COMMENT" page="1" object_number="163" generation_number="0" document_hash="20CAAF5A19366A361AF45EEDC37161D946E88C8A6CA41340A0E4123B40C6743">
    <pdf_title>Iris Recognition: An Analysis of the Aliasing Problem in the Iris Normalization Stage</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2007_FRVT 2006 and ICE 2006 large-scale results_Phillips et al..pdf" FOLDED="true" ID="ID_1363406465" CREATED="1378104623921" MODIFIED="1378104623922" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_FRVT%202006%20and%20ICE%202006%20large-scale%20results_Phillips%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="B2A53B0B65E57BD1D17DF232C4847582CC050541486EC7A77C626F9CCD2D69A">
    <pdf_title>FRVT 2006 and ICE 2006 Large-Scale Results</pdf_title>
</pdf_annotation>
<node TEXT="Final Cover Sheet for FRVT 2006 and ICE 2006 Report.pdf" ID="ID_140995816" CREATED="1378104623963" MODIFIED="1378104623964" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_FRVT%202006%20and%20ICE%202006%20large-scale%20results_Phillips%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="1" object_number="365" generation_number="0" document_hash="B2A53B0B65E57BD1D17DF232C4847582CC050541486EC7A77C626F9CCD2D69A">
    <pdf_title>FRVT 2006 and ICE 2006 Large-Scale Results</pdf_title>
</pdf_annotation>
</node>
<node TEXT="FRVT2006andICE2006_LargeScaleReport_07_03_29.pdf" ID="ID_1960122901" CREATED="1378104623914" MODIFIED="1378104623915" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_FRVT%202006%20and%20ICE%202006%20large-scale%20results_Phillips%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="2" object_number="366" generation_number="0" document_hash="B2A53B0B65E57BD1D17DF232C4847582CC050541486EC7A77C626F9CCD2D69A">
    <pdf_title>FRVT 2006 and ICE 2006 Large-Scale Results</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2009_Overview of the multiple biometrics grand challeng_Phillips et al..pdf" ID="ID_493374514" CREATED="1378104624079" MODIFIED="1378104624080" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2009_Overview%20of%20the%20multiple%20biometrics%20grand%20challeng_Phillips%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="BDF0F881328E8DC73BDE5A82D59F278AC0334A86181335E14B1D4744D16039F">
    <pdf_title>Overview of the Multiple Biometrics Grand Challenge</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2008_The iris challenge evaluation 2005_Phillips et al..pdf" ID="ID_1905661722" CREATED="1378104624092" MODIFIED="1378148046686" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2008_The%20iris%20challenge%20evaluation%202005_Phillips%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="F4396E459693A2D4B9F35667BF4C2ADAC6E34B3452163DACF4CD2164637B0">
    <pdf_title>The Iris Challenge Evaluation 2005</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2011_Robust iris recognition baseline for the grand cha_Lee et al..pdf" ID="ID_1088748760" CREATED="1378158042723" MODIFIED="1378160988752" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Robust%20iris%20recognition%20baseline%20for%20the%20grand%20cha_Lee%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="EFDFC06A9F837385B15E2DACB8C18589F5A373B790421355E96FC21A918">
    <pdf_title>Robust Iris Recognition Baseline for the Grand Challenge</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2006_Iris recognition algorithm using modified log-gabo_Yao et al..PDF" ID="ID_673231045" CREATED="1378169066610" MODIFIED="1378169066614" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2006_Iris%20recognition%20algorithm%20using%20modified%20log-gabo_Yao%20et%20al..PDF">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="10AF6961C92EF8D784111F7EA3C7A83D2F9F4545EC2D3442684E7D23198A3B">
    <pdf_title>Iris Recognition Algorithm Using Modified Log-Gabor Filters</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2013_VASIR An Open-Source Research Platform for Advanc_Lee et al..pdf" FOLDED="true" ID="ID_1652409307" CREATED="1378169066640" MODIFIED="1378169066640" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2013_VASIR%20An%20Open-Source%20Research%20Platform%20for%20Advanc_Lee%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="6718BBC9A972BF0F1FF6BC0DDC06F61AEA44FFB4D2B1DCBE26DBC46E1BC4A22">
    <pdf_title>VASIR: An Open-Source Research Platform for Advanced Iris Recognition Technologies</pdf_title>
</pdf_annotation>
<node TEXT="Several groups [10] have studied how to determine the focus of an image, e.g. analyzing the sharpness of the pupil and iris boundary, calculating the total high frequency power in the 2D Fourier spectrum, a variation of the Sum Modulus Difference (SMD) filter, etc. Spatial domain filters [22,23] are a direct way to capture image texture properties. This method measures the focus by calculating the edge density per unit area. Fine textures (in-focus) tend to have a higher density of edges per unit ar..." ID="ID_906708350" CREATED="1378183689503" MODIFIED="1378183689503" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2013_VASIR%20An%20Open-Source%20Research%20Platform%20for%20Advanc_Lee%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="12" object_number="2110" generation_number="0" document_hash="6718BBC9A972BF0F1FF6BC0DDC06F61AEA44FFB4D2B1DCBE26DBC46E1BC4A22">
    <pdf_title>VASIR: An Open-Source Research Platform for Advanced Iris Recognition Technologies</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2009_An automated video-based system for iris recogniti_Lee et al..pdf" ID="ID_1494633331" CREATED="1378169066657" MODIFIED="1378169066657" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2009_An%20automated%20video-based%20system%20for%20iris%20recogniti_Lee%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="DFC5A8BB78A3BC199469E2927A3EE86D67A7EB39839308F8FDF295C4AC3803C">
    <pdf_title>An Automated Video-Based System for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2011_The state-of-the-art in iris biometric cryptosyste_Rathgeb and Uhl.pdf" FOLDED="true" ID="ID_1010398129" CREATED="1378882592636" MODIFIED="1378882812497" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_The%20state-of-the-art%20in%20iris%20biometric%20cryptosyste_Rathgeb%20and%20Uhl.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="EAB0A88271ABE886780C169CF672A16CE251F8B5FC098CF9E554E224B2AEFD9">
    <pdf_title>The State-of-the-Art in Iris Biometric Cryptosystems</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<node TEXT="Once the pupil and iris circles are localized, the area between them is transformed to a normalized rectangular texture of 512 &#xd7; 64 pixel, according to the &#x201c;rubbersheet&#x201d; approach by Daugman (Daugman, 2004)." ID="ID_1300879848" CREATED="1378882592718" MODIFIED="1378882592719" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_The%20state-of-the-art%20in%20iris%20biometric%20cryptosyste_Rathgeb%20and%20Uhl.pdf">
<pdf_annotation type="BOOKMARK" page="12" object_number="211" generation_number="0" document_hash="EAB0A88271ABE886780C169CF672A16CE251F8B5FC098CF9E554E224B2AEFD9">
    <pdf_title>The State-of-the-Art in Iris Biometric Cryptosystems</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2000_Biometric decision landscapes_Daugman.pdf" ID="ID_731274548" CREATED="1378882592790" MODIFIED="1378882592791" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2000_Biometric%20decision%20landscapes_Daugman.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="731A466B7557829DC4191526CE7F3BF82037517CAA128A556988BCD5B6B6F">
    <pdf_title>Technical Report</pdf_title>
</pdf_annotation>
</node>
<node TEXT="2001_Alternatives of the statistical evaluation of the _Machala and Pospisil.pdf" ID="ID_1373345889" CREATED="1378882592825" MODIFIED="1378882592825" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2001_Alternatives%20of%20the%20statistical%20evaluation%20of%20the%20_Machala%20and%20Pospisil.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="7A306623D552D8368E15A8E18A6CFF96F426E8F7CDE6386BB9CB2ED525F9737">
    <pdf_title>Alternatives of the statistical evaluation of the human iris structure</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="book_chapters" FOLDED="true" ID="ID_1812072019" CREATED="1377165905090" MODIFIED="1377165911113">
<node TEXT="@" FOLDED="true" ID="ID_1318328171" CREATED="1377165913582" MODIFIED="1377165930236">
<attribute NAME="mon_incoming_folder" VALUE="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/" OBJECT="java.net.URI|workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/"/>
<attribute NAME="mon_mindmap_folder" VALUE="@@library_mindmaps@@"/>
<attribute NAME="mon_auto" VALUE="2" OBJECT="java.lang.Integer|2"/>
<attribute NAME="mon_subdirs" VALUE="2" OBJECT="java.lang.Integer|2"/>
<attribute NAME="mon_flatten_dirs" VALUE="0" OBJECT="java.lang.Integer|0"/>
<node TEXT="2013_A Survey of Iris Biometrics Research 2008&#x2013;2010_Bowyer et al..pdf" ID="ID_439642055" CREATED="1377165930596" MODIFIED="1377190943946" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_A%20Survey%20of%20Iris%20Biometrics%20Research%202008&#x2013;2010_Bowyer%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="3044859131E339C39CE5346C1EF26912B3C76F2E326244BC260A850CCC13CF8">
    <pdf_title>A Survey of Iris Biometrics Research: 2008-2010</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2013_Optics of Iris Imaging Systems_Ackerman.pdf" FOLDED="true" ID="ID_560418861" CREATED="1377165930740" MODIFIED="1382495153360" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Chapter from M.J. Burge and K.W. Bowyer (eds.), Handbook of Iris Recognition, Advances
    </p>
    <p>
      in Computer Vision and Pattern Recognition, DOI 10.1007/978-1-4471-4402-1__19,
    </p>
    <p>
      &#169; Springer-Verlag London 2013
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#ccffcc"/>
<node TEXT="It should be 2*d_o ?? It has to be!!" ID="ID_59996198" CREATED="1377165930931" MODIFIED="1377165930931" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="COMMENT" page="5" object_number="526" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="...and you have aliasing of the PSF" ID="ID_159144987" CREATED="1377165930848" MODIFIED="1377165930848" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="COMMENT" page="14" object_number="570" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Chapter 19: Optics of Iris Imaging Systems" FOLDED="true" ID="ID_45866220" CREATED="1377165930782" MODIFIED="1377165930783" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="1" object_number="473" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
<node TEXT="19.1 Introduction" ID="ID_1521940455" CREATED="1377165930959" MODIFIED="1377165930960" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="1" object_number="490" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="19.2 Review of Photographic Concepts" FOLDED="true" ID="ID_1548614084" CREATED="1377165930781" MODIFIED="1377165930782" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="3" object_number="479" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
<node TEXT="19.2.1 Geometrical Optics" FOLDED="true" ID="ID_149898868" CREATED="1377165930780" MODIFIED="1377165930781" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="3" object_number="485" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
<node TEXT="19.2.1.1 Focal Length of a Lens" ID="ID_1923959225" CREATED="1377165930866" MODIFIED="1377165930867" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="3" object_number="489" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="19.2.1.2 Object-Referred Pixel Size and Field of View" ID="ID_236973104" CREATED="1377165930895" MODIFIED="1377165930896" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="4" object_number="488" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="19.2.1.3 F-Number and Lens Aperture" ID="ID_1823009541" CREATED="1377165930879" MODIFIED="1377165930880" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="5" object_number="487" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="19.2.1.4 Depth of Field" ID="ID_920204640" CREATED="1377165930798" MODIFIED="1377165930798" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="6" object_number="486" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="19.2.2 Spatial Resolution" FOLDED="true" ID="ID_855869780" CREATED="1377165930816" MODIFIED="1377165930816" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="8" object_number="482" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
<node TEXT="19.2.2.1 Diffraction Fundamentally Limits Spatial Resolution" ID="ID_460081590" CREATED="1377165930835" MODIFIED="1377165930835" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="9" object_number="484" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="19.2.2.2 Lens Quality Practically Limits Spatial Resolution" ID="ID_994913683" CREATED="1377165930814" MODIFIED="1377165930815" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="14" object_number="483" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="19.2.3 Signal and Noise" ID="ID_922051315" CREATED="1377165930908" MODIFIED="1377165930909" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="17" object_number="481" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="19.2.4 Trade-Offs and Constraints" ID="ID_378364327" CREATED="1377165930920" MODIFIED="1377165930920" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="20" object_number="480" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="19.3 Camera Design" FOLDED="true" ID="ID_1085042013" CREATED="1377165931069" MODIFIED="1377165931069" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="21" object_number="476" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
<node TEXT="19.3.1 0.3-m Iris Imaging System" ID="ID_1301735497" CREATED="1377165931091" MODIFIED="1377165931091" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="22" object_number="478" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="19.3.2 3-m Iris Imaging System" ID="ID_1600751364" CREATED="1377165931080" MODIFIED="1377165931081" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="24" object_number="477" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="19.4 Epilogue: Requirements of an Iris Recognition System" ID="ID_970186215" CREATED="1377165931115" MODIFIED="1377165931115" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="25" object_number="475" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="References" ID="ID_296422595" CREATED="1377165931105" MODIFIED="1377165931105" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="BOOKMARK" page="26" object_number="474" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="A useful concept in comparing the size of features in an image to the&#xd;&#xa;corresponding features of the object is the object-referred pixel size Lorp, de&#xfb01;ned as&#xd;&#xa;the dimension on the object which is imaged onto a single pixel on the imager" ID="ID_562745838" CREATED="1382470815050" MODIFIED="1382470815050" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="4" object_number="578" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="circle of confusion&#x201d;" ID="ID_1034311597" CREATED="1382470815103" MODIFIED="1382470815103" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="6" object_number="590" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="If we allow images to be taken outside the&#xd;&#xa;DoF, defocus will degrade spatial resolution so this might be a situation that would&#xd;&#xa;bene&#xfb01;t from an autofocus mechanism, despite its complexity and cost" ID="ID_1863855640" CREATED="1382470815146" MODIFIED="1382470815146" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="23" object_number="609" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="1 m/s with a component of velocity&#xd;&#xa;perpendicular to the optical axis of up to 0.1 m/s." ID="ID_16569704" CREATED="1382470815161" MODIFIED="1382470815161" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="24" object_number="613" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="ith 3.5- &#x3bc; m pixel pitch." ID="ID_571747852" CREATED="1382470815174" MODIFIED="1382470815174" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="24" object_number="617" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="In any case, catching an in-focus image is a challenge for such a system." ID="ID_353185028" CREATED="1382470815185" MODIFIED="1382470815186" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="25" object_number="621" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" A current ISO/IEC proposal for MTF of an iris imaging system suggests a minimum&#xd;&#xa;of 2 line pairs/mm on an object with at least 60% contrast." ID="ID_1864440557" CREATED="1384323611862" MODIFIED="1384323611862" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="22" object_number="605" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2008_Iris Recognition_Daugman.pdf" ID="ID_1582810741" CREATED="1377165931062" MODIFIED="1378113989037" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20Recognition_Daugman.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="9C8188B07C944AE8359693C9619D21366E4AFCB127933CE1EB96FE1577A097">
    <pdf_title>Iris Recognition</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2011_Recent Trends in Iris Recognition_Birgale and Kokare.pdf" ID="ID_1290766653" CREATED="1377457037512" MODIFIED="1378118902732" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
</node>
<node TEXT="2008_Iris recognition in less constrained environments_Matey et al..pdf" FOLDED="true" ID="ID_616433603" CREATED="1377498876804" MODIFIED="1382496051494" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<node TEXT="Ease of use, ease of deployment, and cost are also critical factors in determining whether a biometric identi&#xfb01;cation method is useful. Ease of use and deployment are dominated by the extent of the constraints that the system imposes on the subject using the system. " ID="ID_1358253695" CREATED="1378145029868" MODIFIED="1378145029881" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="1" object_number="263" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
<node TEXT="This is in the object space." ID="ID_1574413520" CREATED="1378397410197" MODIFIED="1378397410197" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf">
<pdf_annotation type="COMMENT" page="12" object_number="278" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Iris recognition is, arguably, either the most or one of the most accurate methods for identi&#xfb01;cation of human beings that has ever been deployed." ID="ID_638607453" CREATED="1384323611858" MODIFIED="1384323611858" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf">
<pdf_annotation type="BOOKMARK" page="1" object_number="268" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2009_Iris recognition&#x2013;beyond one meter_Matey and Kennell.pdf" FOLDED="true" ID="ID_1736066645" CREATED="1377498876813" MODIFIED="1378399089646" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf">
<pdf_annotation type="PDF_FILE" object_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
<edge COLOR="#ccffcc"/>
<node TEXT="100 mm" ID="ID_1503242732" CREATED="1378397410211" MODIFIED="1378397410212" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf">
<pdf_annotation type="HIGHLIGHTED_TEXT" page="15" object_number="284" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="cannot ignore 1 in the denominator .... it is 90 mm." ID="ID_1655013837" CREATED="1378397410201" MODIFIED="1378397410201" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf">
<pdf_annotation type="COMMENT" page="15" object_number="287" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
</node>
<node TEXT="videos" FOLDED="true" ID="ID_987124572" CREATED="1378425951538" MODIFIED="1378425956764">
<node TEXT="" ID="ID_1978804308" CREATED="1378425959785" MODIFIED="1378425959785"/>
<node TEXT="others" FOLDED="true" ID="ID_346446511" CREATED="1378425973026" MODIFIED="1378425979574">
<node TEXT="CESCA - The Effect of Contact Lenses on Iris Recognition Accuracy by Kevin Bowyer" ID="ID_332899832" CREATED="1378426602410" MODIFIED="1378426658572" LINK="workspace:/https:/vimeo.com/65163810"/>
</node>
</node>
</node>
<node TEXT="Other terminologies" POSITION="right" ID="ID_1426394497" CREATED="1378060911895" MODIFIED="1378061239598" MOVED="1378061124619">
<edge COLOR="#006666" WIDTH="2"/>
<node TEXT="Verification (1:1 matching)" FOLDED="true" ID="ID_754421159" CREATED="1378060926015" MODIFIED="1378060984989">
<node TEXT="Am I who I say I am?" ID="ID_5463518" CREATED="1378060960440" MODIFIED="1378060996459"/>
<node TEXT="Ex applications: Trusted Traveler Card, ATM access, etc" ID="ID_1639537262" CREATED="1378060973691" MODIFIED="1378061023531"/>
</node>
<node TEXT="Identification (1:N matching)" FOLDED="true" ID="ID_1058223984" CREATED="1378060941119" MODIFIED="1378061037222">
<node TEXT="Does the iris match to one of those in a database?" ID="ID_1961029768" CREATED="1378061039692" MODIFIED="1378061057551"/>
<node TEXT="Ex. applications: Watch list, identifying suspects in survellance video, etc" ID="ID_1065790957" CREATED="1378061058393" MODIFIED="1378061082456"/>
</node>
<node TEXT="Recognition = Verification + Identification" ID="ID_1381593214" CREATED="1378060948665" MODIFIED="1378061097116"/>
<node TEXT="Biometric template" ID="ID_1868262504" CREATED="1378364930759" MODIFIED="1378364967990"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An object that summarizes and encapsulates biometric information in a uniform way to enable easy comparison of biometrics collected at different times or with different subjects.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Match score" FOLDED="true" ID="ID_1951389181" CREATED="1378364967982" MODIFIED="1378364972434">
<node TEXT="A measure of similarity (dissimilarity) between two biometric templates." ID="ID_647064592" CREATED="1378364980901" MODIFIED="1378364985606"/>
</node>
</node>
<node TEXT="Definitions" POSITION="right" ID="ID_585068357" CREATED="1377975992293" MODIFIED="1378061214838">
<edge COLOR="#00ffff" WIDTH="2"/>
<node TEXT="inter-class variability" ID="ID_1375403181" CREATED="1378061292313" MODIFIED="1378061407830"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      General challenge in pattern recognition:
    </p>
    <p>
      
    </p>
    <p>
      To tolerate inter-class patten variability (some times called distortions) while maintaining intra-class discrimination.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="intra-class variability" ID="ID_1764444807" CREATED="1378061300546" MODIFIED="1378061481298"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      General challenge in pattern recognition:
    </p>
    <p>
      
    </p>
    <p>
      To tolerate inter-class patten variability (some times called distortions) while maintaining intra-class discrimination.
    </p>
    <p>
      
    </p>
    <p>
      Reasons for intra-class variability in Iris recognition:
    </p>
    <p>
      ====================================
    </p>
    <p>
      eyelid occlusion, eyelashes, off-axis gaze, mis-focus, etc.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="decidability" FOLDED="true" ID="ID_936840890" CREATED="1378089509168" MODIFIED="1378090971303"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      [From &quot;How Iris recognition works&quot;, John Daugman]
    </p>
    <p>
      
    </p>
    <p>
      the &quot;decidability&quot; index d' measures how well separated the two distributions (inter-class and intra-class) are, since recognition errors would be caused by their overlap. The decidability index takes into account the mean and standard deviation of the intra-class and inter-class distributions.
    </p>
    <p>
      
    </p>
    <p>
      The higher the decidability, the greater the separation of intra-class and inter-class distributions, which allows for more accurate recognitions.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<node TEXT="equation" ID="ID_595556952" CREATED="1378089763564" MODIFIED="1378090446602">
<hook EQUATION="d&apos; = \frac{\mu_1 - \mu_2}{\sqrt{(\sigma_1^2 - \sigma_2^2)/2}}" NAME="plugins/latex/LatexNodeHook.properties"/>
</node>
<node TEXT="distance measure ... between inter-class and intra-class variability" ID="ID_1309045714" CREATED="1378090727194" MODIFIED="1378090766587"/>
</node>
<node TEXT="Performance measurement" FOLDED="true" ID="ID_1919465236" CREATED="1377974983636" MODIFIED="1378060194454" MOVED="1378090974482">
<node TEXT="False match or False accept" FOLDED="true" ID="ID_1831421599" CREATED="1377978060414" MODIFIED="1378060390683"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      If an iris (from the probe) is matched or accept but in reality it shouldn't match the iris (from the gallery) i.e. the probe iris and the gallery iris doesn't belong to the same subject.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="False Accept Rate (FAR)" ID="ID_1440661134" CREATED="1378060410868" MODIFIED="1378118457464"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The percentage of Fase Accept
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      Measures the probability of an individual being wrongly identified as another individual [*, **].
    </p>
    <p>
      
    </p>
    <p>
      FAR = NFA/NIVA [***]
    </p>
    <p>
      
    </p>
    <p>
      NFA - Number of False Acceptances
    </p>
    <p>
      NIVA - Number of Imposter Verification Attempts
    </p>
    <p>
      FAR - The measure of likelihood that the biometric security system would incorrectly accept that an attempt by an unauthorized user.
    </p>
    <p>
      
    </p>
    <p>
      Also see Masek, page 36 for more details.
    </p>
    <p>
      
    </p>
    <p>
      *** Recent Trends in Iris Recognition, 2011
    </p>
    <p>
      ** Recognition of human iris patterns for biometric identification, Masek, 2003
    </p>
    <p>
      * Biometric decision landscapes, J. Daugman, 2000
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Also known as Type II Error" ID="ID_990746665" CREATED="1378097366246" MODIFIED="1378097373251"/>
<node TEXT="False match rate (FMR)" ID="ID_956067787" CREATED="1378108195528" MODIFIED="1378121186909" MOVED="1378121245915"/>
</node>
<node TEXT="False Reject" FOLDED="true" ID="ID_84077435" CREATED="1378060456312" MODIFIED="1378060505009"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      If a rejected iris image and the gallery image are from the same subject.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="False Reject Rate (FRR)" FOLDED="true" ID="ID_1437483705" CREATED="1377975317948" MODIFIED="1378115323732" MOVED="1378060464793"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Percent of false reject.
    </p>
    <p>
      
    </p>
    <p>
      Also known as Type I error [*, **], measures the probability of&#160;&#160;an&#160;&#160;enrolled&#160;&#160;individual&#160;&#160;not&#160;&#160;being&#160;&#160;identified&#160;&#160;by&#160;&#160;the&#160;&#160;system.
    </p>
    <p>
      
    </p>
    <p>
      The fraction of access attempts by a legitimately enrolled individual that are nevertheless rejected [***].
    </p>
    <p>
      
    </p>
    <p>
      FRR = NFR/NEVA
    </p>
    <p>
      
    </p>
    <p>
      &#8211; NFR Number of False Rejections.
    </p>
    <p>
      &#8211; NEVA Number of Imposter Veri&#64257;cation Attempts.
    </p>
    <p>
      &#8211; FRR The measure of likelihood that the biometric security system would incorrectly reject that an attempt by an authorized user.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      Also see Masek, page 36 for more details.
    </p>
    <p>
      
    </p>
    <p>
      *** Recent Trends in Iris Recognition, 2011
    </p>
    <p>
      ** Recognition of human iris patterns for biometric identification, Masek, 2003
    </p>
    <p>
      * Biometric decision landscapes, J. Daugman, 2000
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Several metrics exist when measuring the erformance of biometric systems. Widely used factors include False Rejection Rate (FRR), False Acceptance Rate (FAR), and Equal Error Rate (EER) (Jain et al., 2004). " ID="ID_1052991262" CREATED="1378882592796" MODIFIED="1378882592797" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_The%20state-of-the-art%20in%20iris%20biometric%20cryptosyste_Rathgeb%20and%20Uhl.pdf" MOVED="1378882679899">
<pdf_annotation type="BOOKMARK" page="3" object_number="208" generation_number="0" document_hash="EAB0A88271ABE886780C169CF672A16CE251F8B5FC098CF9E554E224B2AEFD9">
    <pdf_title>The State-of-the-Art in Iris Biometric Cryptosystems</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Also known as Type I Error" ID="ID_661117577" CREATED="1378097321671" MODIFIED="1378097328804"/>
<node TEXT="False Non-Match Rate (FNMR)" FOLDED="true" ID="ID_963311575" CREATED="1378108173386" MODIFIED="1378121201434" MOVED="1378121236802">
<node TEXT="5.3 Biometric error rates" ID="ID_588815371" CREATED="1378108369336" MODIFIED="1378108369336" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf" MOVED="1378108391332">
<pdf_annotation type="BOOKMARK" page="32" object_number="2198" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Verification rate (VR)" FOLDED="true" ID="ID_1146538181" CREATED="1378148009590" MODIFIED="1378148016490">
<node TEXT=" veri&#xfb01;cation rate (VR). A successful veri&#xfb01;cation occurs when the system correctly matches two iris images of an individual above threshold." ID="ID_1245936343" CREATED="1378147853877" MODIFIED="1378147853877" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2008_The%20iris%20challenge%20evaluation%202005_Phillips%20et%20al..pdf" MOVED="1378148023174">
<pdf_annotation type="BOOKMARK" page="3" object_number="229" generation_number="0" document_hash="F4396E459693A2D4B9F35667BF4C2ADAC6E34B3452163DACF4CD2164637B0">
    <pdf_title>The Iris Challenge Evaluation 2005</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="ROC (Receiver Operating Characteristics) curve" FOLDED="true" ID="ID_1552351713" CREATED="1378060573134" MODIFIED="1378062280838"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An ROC curve plots the trade off between the FAR and the FRR.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Receivers Operating Curves" ID="ID_1099372810" CREATED="1378118468513" MODIFIED="1378118468513" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1378118505398">
<pdf_annotation type="BOOKMARK" page="6" object_number="155" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Detection of Error Trade-off (DET)" FOLDED="true" ID="ID_1257926622" CREATED="1378115039381" MODIFIED="1378115062782">
<node TEXT="Detection of Error Trade-o&#xfb00;" ID="ID_1715883303" CREATED="1378118468543" MODIFIED="1378118468543" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1378118499933">
<pdf_annotation type="BOOKMARK" page="6" object_number="156" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Equal Error Rate (EER)" ID="ID_7278288" CREATED="1377975330624" MODIFIED="1384245872520" MOVED="1378060536092"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The equal error rate (ERR) is objtained when the FAR equals FRR in the ROC curve.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Failure to entroll rate (FTER)" FOLDED="true" ID="ID_719329903" CREATED="1378121125700" MODIFIED="1378121159867">
<node TEXT="[FTER] The failure to enroll rate is the probability that we will be unable to make a measurement on a cooperative subject chosen from the entire population of possible subjects. This is typically the result of some condition or defect of the subject, although it can be a fault or feature of the biometric system." ID="ID_1173192871" CREATED="1378145030145" MODIFIED="1378145030145" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf" MOVED="1382495745833">
<pdf_annotation type="BOOKMARK" page="4" object_number="270" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Failure to acquire rate (FTAR)" FOLDED="true" ID="ID_1996312022" CREATED="1378121160709" MODIFIED="1378121174781">
<node TEXT="[FTAR] The failure to acquire rate is the probability that we will not be able to make an adequate measurement on a cooperative individual who has already been successfully enrolled in a biometric system. The FTAR is strongly in&#xfb02;uenced by the degree of subject cooperation and the ambient conditions under which the measurement is made." ID="ID_15518057" CREATED="1378145030110" MODIFIED="1378145030110" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf" MOVED="1382495759844">
<pdf_annotation type="BOOKMARK" page="4" object_number="271" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Image Specific Error rates" FOLDED="true" ID="ID_823440009" CREATED="1378108398822" MODIFIED="1378108421328">
<node TEXT="5.4 Image-speci&#xfb01;c error rates" ID="ID_1212808215" CREATED="1377588779873" MODIFIED="1377588779873" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf" MOVED="1378108414125">
<pdf_annotation type="BOOKMARK" page="33" object_number="2191" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
<node TEXT="AIQM" FOLDED="true" ID="ID_42836589" CREATED="1378158978502" MODIFIED="1378158983527">
<node TEXT="Automatic Image Quality Measurement" ID="ID_1204553402" CREATED="1378158985032" MODIFIED="1378159003300"/>
</node>
</node>
<node TEXT="Outlier Population" ID="ID_545712100" CREATED="1378150483561" MODIFIED="1378157329401"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The percentage of people who cannot use the biometric because they do not have the characteristics.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="standoff" FOLDED="true" ID="ID_348392441" CREATED="1378096808812" MODIFIED="1378096815378">
<node TEXT="[Definition] Stando&#xfb00; is the distance between the subject and the iris image acquisition device." ID="ID_385944664" CREATED="1378145030039" MODIFIED="1378145030040" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf" MOVED="1382495653372">
<pdf_annotation type="BOOKMARK" page="1" object_number="266" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Stand-off distance: The stand-off distance is the distance between the front of the lens and the subject." ID="ID_1697494948" CREATED="1376337784354" MODIFIED="1376337784354" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Unconstrained%20iris%20acquisition%20and%20recognition%20usi_Venugopalan%20and%20Savvides.pdf" MOVED="1382580771660">
<pdf_annotation type="BOOKMARK" page="2" object_number="452" generation_number="0" document_hash="1814EAFF7CF576952EF6CD1D7214532E7857331672695E2365C9B0EAFAE130">
    <pdf_title>Unconstrained Iris Acquisition and Recognition using COTS PTZ Camera</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="capture volume" FOLDED="true" ID="ID_664736940" CREATED="1378120320752" MODIFIED="1378120325959">
<node TEXT="[Definition] The capture volume is the 3D volume in which the subject eye must be placed to enable the system to capture an image of suf&#xfb01;cient quality for iris recognition." ID="ID_774392481" CREATED="1378397410265" MODIFIED="1378397410265" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398812288">
<pdf_annotation type="BOOKMARK" page="21" object_number="292" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Definition of CAPTURE VOLUME: Together, a volume with lateral dimensions (measured perpendicular to the optical axis) equal to that of the &#xfb01;eld of view and with axial dimension (measured along the optical axis) equal to that of the depth of &#xfb01;eld de&#xfb01;nes a capture volume. " ID="ID_276877777" CREATED="1382470815209" MODIFIED="1382470815209" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_Optics%20of%20Iris%20Imaging%20Systems_Ackerman.pdf" MOVED="1382495376642">
<pdf_annotation type="BOOKMARK" page="8" object_number="602" generation_number="0" document_hash="681F3144959C3960302B5C2C68F73CEDF66D35EE6158D74BC2CA9CB1B4EA03">
    <pdf_title>Optics of Iris Imaging Systems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[Definition] The capture volume is the volume in which we can be reasonably assured of being able to capture an iris image of su&#xfb03;cient quality for iris recognition, if the other constraints are met." ID="ID_251723588" CREATED="1378145029920" MODIFIED="1378145029921" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf" MOVED="1382495685409">
<pdf_annotation type="BOOKMARK" page="2" object_number="267" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Capture volume: A simple metric for the required degree of cooperation is the capture volume in four dimensions. The capture volume is the three-dimensional spatial volume into which an eye must be placed and held for some period of time (the fourth dimension) in order for the system to reliably capture an iris image of sufficient quality for iris recognition." ID="ID_110928680" CREATED="1382576743172" MODIFIED="1382576743173" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20on%20the%20Move%20Acquisition%20of%20Images%20for%20Iris%20R_Matey%20et%20al..pdf" MOVED="1382576883903">
<pdf_annotation type="BOOKMARK" page="3" object_number="179" generation_number="0" document_hash="E1EAD91BC8AA56E2908D8926546F8AA5C8A099A32B7051D89839C2889159AC5">
    <pdf_title>Iris on the Move: Acquisition of Images for Iris Recognition in</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Instantanesous capture volume (I need to define it)" FOLDED="true" ID="ID_1212013203" CREATED="1382580194046" MODIFIED="1382580211719">
<node TEXT="This is important distinction from other &quot;large capture volume&quot; based systems" ID="ID_543676408" CREATED="1382580614249" MODIFIED="1382580641089"/>
<node TEXT="What are the advantages of large instantaneous capture volume over PTZ, tracking and focusing systems?" ID="ID_1708645486" CREATED="1382580847035" MODIFIED="1382580901108"/>
</node>
<node TEXT="residence time" FOLDED="true" ID="ID_379653874" CREATED="1378120454375" MODIFIED="1378120460656">
<node TEXT="[Definition] Residence time is the time for which the subject eye must remain in the capture volume. This must be at least as large as the frame acquisition time for the sensor." ID="ID_1447551931" CREATED="1378397410253" MODIFIED="1378397410254" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398827831">
<pdf_annotation type="BOOKMARK" page="21" object_number="293" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[Definition] Residence time is the length of time that the subject&#x2019;s iris must remain within the capture volume to assure capture" ID="ID_1694298997" CREATED="1378145030077" MODIFIED="1378145030078" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf" MOVED="1382495716311">
<pdf_annotation type="BOOKMARK" page="2" object_number="269" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="non-ideal iris" ID="ID_1034466684" CREATED="1378096819491" MODIFIED="1378096826192"/>
<node TEXT="non-orthogonal iris" FOLDED="true" ID="ID_78443723" CREATED="1378096827982" MODIFIED="1378096836998">
<node TEXT="A non-orthogonal iris image is defined as an image where the iris is not looking directly into the camera [1-3]" FOLDED="true" ID="ID_786312064" CREATED="1377290630125" MODIFIED="1377290630125" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_Collection%20and%20Segmentation%20of%20NonOrthogonal%20Irise_Ruth%20M.%20Gaunt.pdf" MOVED="1377291134419">
<pdf_annotation type="BOOKMARK" page="1" object_number="230" generation_number="0" document_hash="EFA1E48511C54D8574589672EE338E8BA6843F19C1E27CFD9B6B39C6CD9E7BCF">
    <pdf_title>Collection and Segmentation of Non-Orthogonal Irises for Iris Recognition</pdf_title>
</pdf_annotation>
<node TEXT="This [creation of the database of non-orthogonal iris images] is accomplished by having the subject face the camera and move  his or her  eyes  to specific  points  which  correspond  to known  off-axis  angles while iris images  are  being captured;" ID="ID_594886525" CREATED="1377290630157" MODIFIED="1377290630157" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2005_Collection%20and%20Segmentation%20of%20NonOrthogonal%20Irise_Ruth%20M.%20Gaunt.pdf" MOVED="1377291162649">
<pdf_annotation type="BOOKMARK" page="1" object_number="231" generation_number="0" document_hash="EFA1E48511C54D8574589672EE338E8BA6843F19C1E27CFD9B6B39C6CD9E7BCF">
    <pdf_title>Collection and Segmentation of Non-Orthogonal Irises for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Gaze-angle" FOLDED="true" ID="ID_71765759" CREATED="1378108106579" MODIFIED="1378108109714">
<node TEXT="GAZE ANGLE is the deviation of the optical axis of the subject&#x2019;s iris from the optical axis of the camera. This occurs when the subject does not look directly into the camera &#x2013; either because the gaze is averted or the head is rotated or tilted. Off-axis images are a well known challenge for iris recognition systems." ID="ID_1501420685" CREATED="1377588779889" MODIFIED="1384239961099" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf" MOVED="1378108119846">
<pdf_annotation type="BOOKMARK" page="13" object_number="2187" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Iris SIZE" FOLDED="true" ID="ID_1348953895" CREATED="1378108437481" MODIFIED="1378108442999">
<node TEXT="IRIS SIZE is de&#xfb01;ned as the number of pixels across the iris radius, when the iris boundary is modeled by a circle. Irises too small or too large increase the likelihood of FNMR and FMR." ID="ID_912557513" CREATED="1377588779889" MODIFIED="1377588779889" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Iris%20Quality%20Calibration%20and%20Evaluation%20(IQCE)%20Pe_Tabassi%20et%20al..pdf" MOVED="1378108453961">
<pdf_annotation type="BOOKMARK" page="15" object_number="2188" generation_number="0" document_hash="83CAE6EC8F9F34A1187353D2438A7395E6198E1AD6A49685F6AD6B1DAAA23">
    <pdf_title>IREX II - IQCE</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="IOM" FOLDED="true" ID="ID_560152692" CREATED="1378158660848" MODIFIED="1378158663406">
<node TEXT="Iris On the Move" ID="ID_1403269819" CREATED="1378158667446" MODIFIED="1378158673219"/>
<node TEXT="It is also used as a generic term to mean Iris capture at a distance..." FOLDED="true" ID="ID_1983233910" CREATED="1378158673709" MODIFIED="1378158688873">
<node TEXT="video-frame captured at a distance (IOM system)" ID="ID_738158327" CREATED="1378160628165" MODIFIED="1378160628166" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Robust%20iris%20recognition%20baseline%20for%20the%20grand%20cha_Lee%20et%20al..pdf" MOVED="1378160759995">
<pdf_annotation type="BOOKMARK" page="5" object_number="157" generation_number="0" document_hash="EFDFC06A9F837385B15E2DACB8C18589F5A373B790421355E96FC21A918">
    <pdf_title>Robust Iris Recognition Baseline for the Grand Challenge</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="SvsS, VvsS, VvsV" FOLDED="true" ID="ID_223635174" CREATED="1378160776065" MODIFIED="1378160785148">
<node TEXT="SvsS matching, a classical still-image is matched against other classical still-images of the same person that were captured by the same device" ID="ID_1174382655" CREATED="1378160628184" MODIFIED="1378160628184" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Robust%20iris%20recognition%20baseline%20for%20the%20grand%20cha_Lee%20et%20al..pdf" MOVED="1378160796686">
<pdf_annotation type="BOOKMARK" page="5" object_number="158" generation_number="0" document_hash="EFDFC06A9F837385B15E2DACB8C18589F5A373B790421355E96FC21A918">
    <pdf_title>Robust Iris Recognition Baseline for the Grand Challenge</pdf_title>
</pdf_annotation>
</node>
<node TEXT="VvsS means that the video-frame captured at a distance (IOM system) is compared to classical still-images, captured by a different camera" ID="ID_143923218" CREATED="1378160628104" MODIFIED="1378160628108" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Robust%20iris%20recognition%20baseline%20for%20the%20grand%20cha_Lee%20et%20al..pdf" MOVED="1378160811106">
<pdf_annotation type="BOOKMARK" page="5" object_number="159" generation_number="0" document_hash="EFDFC06A9F837385B15E2DACB8C18589F5A373B790421355E96FC21A918">
    <pdf_title>Robust Iris Recognition Baseline for the Grand Challenge</pdf_title>
</pdf_annotation>
</node>
<node TEXT="VvsV matching, the extracted iris region of distant-video frames is matched to other frames either from the same video or different video sequences of the same person." ID="ID_43707734" CREATED="1378160628235" MODIFIED="1378160628235" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Robust%20iris%20recognition%20baseline%20for%20the%20grand%20cha_Lee%20et%20al..pdf" MOVED="1378160824280">
<pdf_annotation type="BOOKMARK" page="5" object_number="160" generation_number="0" document_hash="EFDFC06A9F837385B15E2DACB8C18589F5A373B790421355E96FC21A918">
    <pdf_title>Robust Iris Recognition Baseline for the Grand Challenge</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Iris recognition system" POSITION="left" ID="ID_819606126" CREATED="1377191125238" MODIFIED="1377191217549">
<edge COLOR="#ff00ff" WIDTH="2"/>
<node TEXT="Why is Iris recognition a promising biometric technique?" FOLDED="true" ID="ID_1429247282" CREATED="1377191138431" MODIFIED="1377193458382">
<node TEXT="1. Iris over other biometric" FOLDED="true" ID="ID_466484459" CREATED="1378403896941" MODIFIED="1378404410017">
<node TEXT="Iris recognition systems, in particular, are gaining interest because the iris&#x2019;s rich texture offers a strong biometric cue for recognizing individuals.1" ID="ID_1796544575" CREATED="1377159275648" MODIFIED="1377159275648" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1378403911043">
<pdf_annotation type="BOOKMARK" page="1" object_number="471" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
<node TEXT="A good biometric is characterised by use of a feature that is; highly unique &#x2013; so that the chance of any two people having the same characteristic will be minimal, stable &#x2013; so that the feature does not change over time, and be easily captured &#x2013; in order to provide convenience to the user, and prevent misrepresentation of the feature. " ID="ID_804943022" CREATED="1377753275264" MODIFIED="1377753275265" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378404031370">
<pdf_annotation type="BOOKMARK" page="6" object_number="8370" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="uniqueness and complexity" FOLDED="true" ID="ID_1827394958" CREATED="1377193612532" MODIFIED="1377458275857">
<node TEXT="We investigated the randomness and uniqueness of human iris patterns by mathematically comparing 2.3 million di&#xfb02;erent pairs of eye images. The phase structure of each iris pattern was extracted by demodula-" ID="ID_257039628" CREATED="1377457834175" MODIFIED="1378403950301" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2001_Epigenetic%20randomness,%20complexity%20and%20singularity%20_Daugman%20and%20Downing.pdf" MOVED="1378403973475">
<pdf_annotation type="BOOKMARK" page="1" object_number="105" generation_number="0" document_hash="C23547EB6AEA2F8EF1E572215B6B22CFA87E83C4B9D2ED5A3A8994943E8329A">
    <pdf_title>7 1 &quot;@E:F/#</pdf_title>
</pdf_annotation>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      We investigated the randomness and uniqueness of human iris patterns by mathematically comparing 2.3 million different pairs of eye images. The phase structure of each iris pattern was extracted by demodulation with quadrature wavelets spanning several scales of analysis. The resulting distribution of phase sequence variation among different eyes was precisely binomial, revealing 244 independent degrees of freedom. <font color="#ff0000">This amount of statistical variability corresponds to an entropy (information density) of about 3.2 bits mm^-2 over the iris</font>.<font color="#ff0000">&#160;It implies that the probability of two diferent irides agreeing by chance in more than 70% of their phase sequence is about one in 7 billion</font>. We also compared images of genetically identical irides, from the left and right eyes of 324- persons, and from monozygotic twins. Their relative phase sequence variation generated the same statistical distribution as did unrelated eyes. This indicates that apart from overall form and colour, iris patterns are determined epigenetically by random events in the morphogenesis of this tissue. The resulting diversity, and the combinatorial complexity created by so many dimensions of random variation, mean that the failure of a simple test of statistical independence performed on iris patterns can serve as a reliable rapid basis for automatic personal identi&#64257;cation.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="The process is based on the unique nature and extreme richness of the human iris. The multiple features produce a non-duplicable organ with more than 400 degrees of freedom, or measurable variables. The IriScan process typically uses about 200 of these to create a code which can be compared to an entire database in milliseconds, producing a positive identification with&#xd;&#x201c;imposter odds&#x201d; as high as 1 in 10^34" ID="ID_944358590" CREATED="1378166875206" MODIFIED="1378166875207" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1996_Iris%20recognition%20technology_Williams.pdf" MOVED="1378404354100">
<pdf_annotation type="BOOKMARK" page="1" object_number="83" generation_number="0" document_hash="40A7AB19C41AECB319A5C6D23E181EE668A1ABF88AB631CADA3FC71E61F5855">
    <pdf_title>Iris Recognition Technology</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="This biometric doesn&apos;t change over time" FOLDED="true" ID="ID_1749529408" CREATED="1377458269361" MODIFIED="1377458291342">
<node TEXT="Compared with other biometric features such as face and fingerprint, iris patterns are more stable and reliable [1-2]" ID="ID_1908751322" CREATED="1377229881538" MODIFIED="1377229881538" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_A%20new%20approach%20to%20iris%20pattern%20recognition_Du%20et%20al..pdf" MOVED="1378403874325">
<pdf_annotation type="BOOKMARK" page="1" object_number="592" generation_number="0" document_hash="8EDE319D14DFED3E79E798CDD3B20DE75CF549CA9B9EC6B712F652D2054BA83">
    <pdf_title>A New Approach to Iris Pattern Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="relatively protected internal organ" FOLDED="true" ID="ID_1354577296" CREATED="1377458291788" MODIFIED="1377458314221">
<node TEXT="The iris is a protected internal organ of the eye, located behind the cornea and the aqueous humour, but in front of the lens. A visible property of the iris and the fingerprint is the random morphogenesis of their minutiae. The phenotypic expression even of two irises with the same genetic genotype (as in identical twins, or the pair possessed by one individual) have uncorrelated minutiae. The iris texture has no genetic penetrance in the expression and is chaotic. In these respects the uniquene..." ID="ID_1414334853" CREATED="1377422595844" MODIFIED="1377422595845" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2000_The%20human%20iris%20structure%20and%20its%20usages_Muron%20and%20Pospisil.pdf" MOVED="1378403950290">
<pdf_annotation type="BOOKMARK" page="1" object_number="377" generation_number="0" document_hash="CECD1CA79160AA1C60BAEE70D2A558BE362BCDAB5DBAC18A6768D5F2F17">
    <pdf_title>1 . I n t r o d u c t i o n</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Although small (11 mm) and sometimes problematic to image, the iris has the great mathematical advantage that its pattern variability among different persons is enormous. In addition, as an internal (yet externally visible) organ of the eye, the iris is well protected from the environment, and stable over time." ID="ID_1095435019" CREATED="1378104624578" MODIFIED="1378104624579" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378404054410">
<pdf_annotation type="BOOKMARK" page="1" object_number="117" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="from a statistical decision theory standpoint" FOLDED="true" ID="ID_1058533473" CREATED="1378403826260" MODIFIED="1378403837008">
<node TEXT="w.r.t. intra-class and inter-class variability" FOLDED="true" ID="ID_781320987" CREATED="1378106991369" MODIFIED="1378107004670" MOVED="1378403840046">
<node TEXT="Defination: As in all pattern recognition problems, the key issue is the relation between interclass and intra-class variability: objects can be reliably classi&#xfb01;ed only if the variability among different instances of a given class is less than the variability between different classes." ID="ID_318873461" CREATED="1378104624537" MODIFIED="1378325181030" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107009735">
<pdf_annotation type="BOOKMARK" page="1" object_number="116" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="the statistical probability that two irises would be identical by random chance is calculated at approximately 1 in 10^52" ID="ID_1671675202" CREATED="1378166875145" MODIFIED="1378166875146" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1996_Iris%20recognition%20technology_Williams.pdf" MOVED="1378404235151">
<pdf_annotation type="BOOKMARK" page="1" object_number="86" generation_number="0" document_hash="40A7AB19C41AECB319A5C6D23E181EE668A1ABF88AB631CADA3FC71E61F5855">
    <pdf_title>Iris Recognition Technology</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Biometric templates from the most widely used algorithm have approximately 250 degrees of freedom [4] in the context of a binomial model for the imposter distribution" ID="ID_1342286295" CREATED="1378397410193" MODIFIED="1378397410193" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378404261195">
<pdf_annotation type="BOOKMARK" page="3" object_number="274" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="the  decision confidence levels correspond formally to a conditional false accept probability  of one  in  about  10^31." ID="ID_828320823" CREATED="1378260158891" MODIFIED="1378260158891" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1993_High%20confidence%20visual%20recognition%20of%20persons%20by%20a_Daugman.pdf" MOVED="1378404366885">
<pdf_annotation type="BOOKMARK" page="1" object_number="191" generation_number="0" document_hash="EAD7EAA881C7FEEC7C52AD1EF6FD287451F59F8F633724ECE68BDCFBD4147">
    <pdf_title>High Confidence Visual Recognition of Persons a Test of Statistical Independence</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="2. iris anatomy" FOLDED="true" ID="ID_376470020" CREATED="1378234306430" MODIFIED="1378404426089" LINK="#ID_1127094603">
<node TEXT="Morphogenetic  randomness  in  the  texture expressed phenotypically in the iris trabecular meshwork ensures that  a  test  of  statistical  independence  on  two  coded  patterns originating from different eyes is passed almost certainly, whereas the same test is  failed almost certainly when the compared codes originate from the same eye." ID="ID_819727885" CREATED="1378260158860" MODIFIED="1378260158860" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1993_High%20confidence%20visual%20recognition%20of%20persons%20by%20a_Daugman.pdf" MOVED="1378403935383">
<pdf_annotation type="BOOKMARK" page="1" object_number="189" generation_number="0" document_hash="EAD7EAA881C7FEEC7C52AD1EF6FD287451F59F8F633724ECE68BDCFBD4147">
    <pdf_title>High Confidence Visual Recognition of Persons a Test of Statistical Independence</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The uniqueness of iris pattern comes from the richness of texture details in iris images, such as  freckles,  coronas,  crypts,  furrows,  etc. The  randomly  distributed  and  irregularly  shaped microstructures of iris pattern make the human iris one of the  most informative biometric traits. " ID="ID_223717990" CREATED="1377209869637" MODIFIED="1377209869637" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2012_Comparative%20Analysis%20for%20Iris%20Recognition_Khaladkar%20and%20Ganorkar.pdf" MOVED="1378403943986">
<pdf_annotation type="BOOKMARK" page="1" object_number="408" generation_number="0" document_hash="25E241EE74363B4387E7A82A6CD848C02C29424A33AE2577FA7803FD46A">
    <pdf_title>Comparative Analysis for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Its complex pattern can contain many distinctive features such as arching ligaments, furrows, ridges, crypts, rings, corona, freckles, and a zigzag collarette, some of which may be seen in Figure 1." ID="ID_1655267578" CREATED="1378104624500" MODIFIED="1378104624500" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378404064303">
<pdf_annotation type="BOOKMARK" page="2" object_number="119" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="iris patterns are determined epigenetically by random events in the morphogenesis of this tissue" ID="ID_1051504532" CREATED="1378322312428" MODIFIED="1378322314759" MOVED="1378404381645"/>
</node>
<node TEXT="Tidbits @ refs." ID="ID_1279959762" CREATED="1377193619869" MODIFIED="1377193635570">
<edge COLOR="#333333" WIDTH="thin"/>
</node>
</node>
<node TEXT="Different parts to Iris recognition" FOLDED="true" ID="ID_1570475751" CREATED="1376336090940" MODIFIED="1376336102837" MOVED="1377191187449">
<node TEXT="1. Acquisition" FOLDED="true" ID="ID_235502017" CREATED="1376336106343" MODIFIED="1377192761502">
<node TEXT="Techniques employed" FOLDED="true" ID="ID_1888861192" CREATED="1376336209633" MODIFIED="1376336214656">
<node TEXT="HFOV + NFOV" ID="ID_1645885096" CREATED="1376336216381" MODIFIED="1376338314375"/>
<node TEXT="HFOV + NFOV on PTU" ID="ID_1629879534" CREATED="1376336230326" MODIFIED="1376338317994"/>
</node>
<node TEXT="Illumination" FOLDED="true" ID="ID_320123753" CREATED="1376336250303" MODIFIED="1376336253876">
<node TEXT="active NIR illum." FOLDED="true" ID="ID_622343396" CREATED="1376331462054" MODIFIED="1378398528825" MOVED="1377193376658">
<node TEXT="emphasize iris textures, greater contrast" ID="ID_672584968" CREATED="1376331523165" MODIFIED="1376331552830"/>
<node TEXT="[Effect of NIR illumination] the limbic boundary itself usually has extremely soft contrast when long wavelength NIR illumination is used." ID="ID_230643788" CREATED="1378104624266" MODIFIED="1378104624266" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107260935">
<pdf_annotation type="BOOKMARK" page="2" object_number="126" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Tidbits @ refs." FOLDED="true" ID="ID_1833707634" CREATED="1377190359998" MODIFIED="1377197296866">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT="(Illumination) Although current commercial iris biometrics systems all use near-infrared (NIR) illumination, and most research assumes NIR imaging similar to that used in current commercial sensors, Proenca [154] argues for visible wavelength imaging as the more appropriate means to achieve &#x201c;at a distance&#x201d; and &#x201c;on the move&#x201d; imaging." ID="ID_1633821265" CREATED="1377165930640" MODIFIED="1377209997337" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2013_A%20Survey%20of%20Iris%20Biometrics%20Research%202008&#x2013;2010_Bowyer%20et%20al..pdf" MOVED="1377190396346">
<pdf_annotation type="BOOKMARK" page="3" object_number="174" generation_number="0" document_hash="3044859131E339C39CE5346C1EF26912B3C76F2E326244BC260A850CCC13CF8">
    <pdf_title>A Survey of Iris Biometrics Research: 2008-2010</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Near-infrared (NIR) images of the iris&#x2019;s anterior surface exhibit complex patterns that computer systems can use to recognize individuals. Because NIR lighting can pen-etrate the iris&#x2019;s surface, it can reveal the intricate texture details that are present even in dark-colored irides." ID="ID_834761186" CREATED="1377159275632" MODIFIED="1377159275632" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1377197287846">
<pdf_annotation type="BOOKMARK" page="1" object_number="479" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[Structure of Iris and influence of illumination wavelength] The striated trabecular meshwork of elastic pectinate ligament creates the predominant texture under visible light, whereas in the near infrared (NIR) wavelengths used for unobtrusive imaging at distances of up to 1 meter, deeper and somewhat more slowly modulated stromal features dominate the iris pattern. In NIR wavelengths, even darkly pigmented irises reveal rich and complex features." ID="ID_1811372085" CREATED="1378104624181" MODIFIED="1378104624182" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378106793973">
<pdf_annotation type="BOOKMARK" page="2" object_number="121" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Essentially all commercial iris recognition system use active illumination in some form." ID="ID_1305149273" CREATED="1378397410186" MODIFIED="1378397410186" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378397687191">
<pdf_annotation type="BOOKMARK" page="12" object_number="277" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Dark and light irises are more similar in their light re&#xfb02;ecting and absorbing properties in the NIR than they are in the visible because the absorption of the melanin drops off in the NIR. Hence, the structural details of a dark iris show much better contrast in the NIR than in the visible." ID="ID_290872235" CREATED="1378397410179" MODIFIED="1378397410179" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398469767">
<pdf_annotation type="BOOKMARK" page="12" object_number="278" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" The melanin spectrum drives us to longer wavelengths." ID="ID_261442890" CREATED="1378397410174" MODIFIED="1378397410174" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398490575">
<pdf_annotation type="BOOKMARK" page="12" object_number="279" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The silicon absorption spectrum drives us toward shorter wavelengths." ID="ID_368342957" CREATED="1378397410218" MODIFIED="1378397410218" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398499581">
<pdf_annotation type="BOOKMARK" page="12" object_number="280" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="So, by design or not, commercial systems in the 720&#x2013;900 nm regime appear to be operating close to the optimum wavelength for providing contrast and structure de&#xfb01;nition in the iris, consistent with signal/noise issues in the sensor." ID="ID_1881960675" CREATED="1378397410208" MODIFIED="1378397410208" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398518780">
<pdf_annotation type="BOOKMARK" page="13" object_number="281" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" the structure is normally imaged in the near infrared (NIR) between 700 and 900 nm." ID="ID_1754286547" CREATED="1378145030221" MODIFIED="1378145030221" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20recognition%20in%20less%20constrained%20environments_Matey%20et%20al..pdf" MOVED="1382495800875">
<pdf_annotation type="BOOKMARK" page="5" object_number="272" generation_number="0" document_hash="3AED409FA06069A1C58130804EE4AAF4BD2FB8C9798A4B3DF6A4A53F9C41">
    <pdf_title>Iris Recognition in Less Constrained Environments</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
</node>
<node TEXT="Focusing" FOLDED="true" ID="ID_1864174747" CREATED="1378107066218" MODIFIED="1378107069464">
<node TEXT="Daugman&apos;s method" FOLDED="true" ID="ID_1117450122" CREATED="1378107070995" MODIFIED="1378107075954">
<node TEXT="Focus assessment was performed in real-time (faster than video frame rate) by measuring the total high-frequency power in the 2D Fourier spectrum of each frame, and seeking to maximize this quantity either by moving an active lens or by providing audio feedback to Subjects to adjust their range appropriately." ID="ID_501684038" CREATED="1378104624207" MODIFIED="1378104624208" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107088133">
<pdf_annotation type="BOOKMARK" page="1" object_number="123" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Tidbits @ refs." FOLDED="true" ID="ID_1320805835" CREATED="1377192335381" MODIFIED="1377193411176">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT="1. The acquisition module obtains a 2D image of the eye using a monochromatic CCD camera sensitive to the NIR light spectrum." ID="ID_931122928" CREATED="1377163530424" MODIFIED="1377163530424" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1377192974757">
<pdf_annotation type="BOOKMARK" page="2" object_number="513" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="2. Localization &amp; Segmentation" FOLDED="true" ID="ID_1072967932" CREATED="1376447050257" MODIFIED="1377984522164">
<edge COLOR="#ffcc33"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      From &quot;How Iris recognition Works&quot;, dougman
    </p>
    <p>
      The result of all these localization operations is the isolation of iris tissue from other image regions,
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Techniques employed" FOLDED="true" ID="ID_1711588003" CREATED="1376447057627" MODIFIED="1376447180486">
<edge WIDTH="thin"/>
<node TEXT="Integro-differential operator (Daugman)" FOLDED="true" ID="ID_176748854" CREATED="1377192071163" MODIFIED="1377210548116"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      ...invented by Daugman [Daugman 1993, High Confidence ...]
    </p>
  </body>
</html>
</richcontent>
<node TEXT="assumption" FOLDED="true" ID="ID_1206232245" CREATED="1377197539391" MODIFIED="1377294981420">
<node TEXT="both pupil and iris boundaries are circular" ID="ID_1448971715" CREATED="1377294987290" MODIFIED="1377294998776"/>
<node TEXT="performance degrades for low contrast images" ID="ID_1255149067" CREATED="1377295003976" MODIFIED="1377295018960"/>
</node>
<node TEXT="Tidbits @ refs" FOLDED="true" ID="ID_877605311" CREATED="1377197542176" MODIFIED="1377197561112">
<edge COLOR="#333333"/>
<node TEXT="The integro-differential operator (used in segmentation) searches for a &#xd;circular boundary with radius r and center (x0, y0) that exhibits a maximum change in radial pixel intensity across its boundary." ID="ID_1001448046" CREATED="1377159275998" MODIFIED="1377159275999" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1377197551833">
<pdf_annotation type="BOOKMARK" page="3" object_number="493" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The integro-differential can be seen as a variation of the Hough transform, since it too makes use of first derivatives of the image and performs a search to find geometric parameters. Since it works with raw derivative information, it does not suffer from the &#xd;thresholding problems of the Hough transform. However, the algorithm can fail where there is noise in the eye image, such as from reflections, since it works only on a local scale. " ID="ID_386631820" CREATED="1377753275230" MODIFIED="1377753275231" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378105050509">
<pdf_annotation type="BOOKMARK" page="11" object_number="8377" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="All three parameters de&#xfb01;ning the pupillary circle must be estimated separately from those of the iris." ID="ID_1984758299" CREATED="1378104624246" MODIFIED="1378104624246" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107234081">
<pdf_annotation type="BOOKMARK" page="1" object_number="125" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Edge detection and Circular Hough transform (Wildes method)" FOLDED="true" ID="ID_1145595984" CREATED="1377205188092" MODIFIED="1377295075881">
<node TEXT="xxx" ID="ID_377881493" CREATED="1377210123522" MODIFIED="1377210125299"/>
<node TEXT="Tidbits @ refs" FOLDED="true" ID="ID_1752491666" CREATED="1377210125604" MODIFIED="1377210258751">
<edge COLOR="#333333"/>
<node TEXT="An alternative  segmentation  method,  proposed  by  Wildes [5, i.e. Iris recognition: an emerging ... 1997],  implements  an edge detection  operator  and  the Hough  transform. " ID="ID_1115345908" CREATED="1377209869558" MODIFIED="1377209869558" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2012_Comparative%20Analysis%20for%20Iris%20Recognition_Khaladkar%20and%20Ganorkar.pdf" MOVED="1377210154888">
<pdf_annotation type="BOOKMARK" page="1" object_number="410" generation_number="0" document_hash="25E241EE74363B4387E7A82A6CD848C02C29424A33AE2577FA7803FD46A">
    <pdf_title>Comparative Analysis for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Wildes et al. &amp; Kong &amp; Zhang  also make use  of  the  parabolic  Hough  transform  to  detect  the  eyelids, approximating the upper and lower eyelids with parabolic arcs, which are represented as;  (-(x-h_j)sin &#x3b8;_j + (y - k_j) cos &#x3b8;_j)^2 = a_j ((x-h_j)cos &#x3b8;_j + (y - k_j)sin &#x3b8;_j)  (2.2)  where `a_j` controls the curvature, (h_j, k_j) is the peak of the parabola and &#x3b8;_j is the angle of rotation relative to the x-axis." ID="ID_848781148" CREATED="1377753275242" MODIFIED="1377753275243" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378104970700">
<pdf_annotation type="BOOKMARK" page="9" object_number="8375" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Canny edge detection &amp; circular Hough transforms" FOLDED="true" ID="ID_1238234122" CREATED="1377205786803" MODIFIED="1377205801270">
<node TEXT="xxx" ID="ID_729543712" CREATED="1377210231700" MODIFIED="1377210233731"/>
<node TEXT="Tidbits @ refs" FOLDED="true" ID="ID_1793252647" CREATED="1377210234246" MODIFIED="1377210269788">
<edge COLOR="#333333"/>
<node TEXT="Masek&#x2019;s  algorithm  [8. ie. Libor Masek, 2003, Recog of human iris patterns ...]  implements Canny edge detection and a  circular Hough transform to  segment  the  iris. " ID="ID_1603538697" CREATED="1377209869518" MODIFIED="1377209869520" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2012_Comparative%20Analysis%20for%20Iris%20Recognition_Khaladkar%20and%20Ganorkar.pdf" MOVED="1377210244286">
<pdf_annotation type="BOOKMARK" page="1" object_number="411" generation_number="0" document_hash="25E241EE74363B4387E7A82A6CD848C02C29424A33AE2577FA7803FD46A">
    <pdf_title>Comparative Analysis for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" The Canny method [18] was applied to this image for edge detection. " ID="ID_205367029" CREATED="1377229881566" MODIFIED="1377229881566" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_A%20new%20approach%20to%20iris%20pattern%20recognition_Du%20et%20al..pdf" MOVED="1377230118891">
<pdf_annotation type="BOOKMARK" page="4" object_number="594" generation_number="0" document_hash="8EDE319D14DFED3E79E798CDD3B20DE75CF549CA9B9EC6B712F652D2054BA83">
    <pdf_title>A New Approach to Iris Pattern Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Binary thresholding and morphological transforms" FOLDED="true" ID="ID_1575356215" CREATED="1377210311923" MODIFIED="1377210324120">
<node TEXT="xxx" ID="ID_245140071" CREATED="1377210326556" MODIFIED="1377210327696"/>
<node TEXT="Adaptive thresholding" ID="ID_1654167728" CREATED="1377301070233" MODIFIED="1377301151391"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      For example &quot;A new approach to Iris Pattern Recognition&quot; by Du, Ives, Etter et al.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Tidbits @ refs" FOLDED="true" ID="ID_53349101" CREATED="1377210328520" MODIFIED="1377210486517">
<edge COLOR="#333333"/>
<node TEXT="Kennell  et  al  [12] proposed a segmentation technique with simple binary thresholding  and  morphological  transformations  to detect the pupil." ID="ID_284745364" CREATED="1377209869617" MODIFIED="1377209869618" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2012_Comparative%20Analysis%20for%20Iris%20Recognition_Khaladkar%20and%20Ganorkar.pdf" MOVED="1377210433490">
<pdf_annotation type="BOOKMARK" page="1" object_number="412" generation_number="0" document_hash="25E241EE74363B4387E7A82A6CD848C02C29424A33AE2577FA7803FD46A">
    <pdf_title>Comparative Analysis for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Mira and Mayer [13] also implement thresholding  and  morphological  transformations  to detect  the  iris  boundaries." ID="ID_1980945212" CREATED="1377209869601" MODIFIED="1377209869601" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2012_Comparative%20Analysis%20for%20Iris%20Recognition_Khaladkar%20and%20Ganorkar.pdf" MOVED="1377210472935">
<pdf_annotation type="BOOKMARK" page="1" object_number="413" generation_number="0" document_hash="25E241EE74363B4387E7A82A6CD848C02C29424A33AE2577FA7803FD46A">
    <pdf_title>Comparative Analysis for Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Neural-network" ID="ID_721115920" CREATED="1377301281666" MODIFIED="1377301511578"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Liam and Chekima's method &quot;Iris recognition using self-organizing neural network&quot;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Bit-Planes extraction + binary morphological operations and thresholding using local image statistics" FOLDED="true" ID="ID_305160248" CREATED="1377301570593" MODIFIED="1377314443173"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Papers:
    </p>
    <p>
      1. Iris pattern extraction using bit planes and standard deviations
    </p>
    <p>
      2. non-orthogonal iris segmentation .. bonney
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Can address non-orthogoal iris segmentation" ID="ID_854558627" CREATED="1377314473704" MODIFIED="1378113945670"/>
</node>
<node TEXT="active contours" FOLDED="true" ID="ID_1557146364" CREATED="1377192197037" MODIFIED="1377192201897">
<node TEXT="xxx" ID="ID_464237586" CREATED="1377197359662" MODIFIED="1377197361183"/>
<node TEXT="Tidbits @ refs." FOLDED="true" ID="ID_602193701" CREATED="1377197361702" MODIFIED="1377197377027">
<edge COLOR="#333333"/>
<node TEXT=" The integro- differential operator is the traditional detection mechanism, although more recent work has promoted the use of active contours to account for nonconic boundary attributes." ID="ID_1386723797" CREATED="1377159275899" MODIFIED="1377159275899" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1377197406683">
<pdf_annotation type="BOOKMARK" page="2" object_number="484" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
<node TEXT="An excellent way to achieve all of these goals is to describe the iris inner and outer boundaries in terms of &#x201c;active contours&#x201d; based on discrete Fourier series expansions of the contour data. [to adddress problems of iris boundary occlussions, and noncircular pupil and iris boundaries...]" ID="ID_1063024373" CREATED="1378113486141" MODIFIED="1378113486141" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_New%20Methods%20in%20Iris%20Recognition_Daugman.pdf" MOVED="1378113625585">
<pdf_annotation type="BOOKMARK" page="2" object_number="115" generation_number="0" document_hash="19BB4386435CF593679AA8E5C1AF8889D52156A1117BACC06F3031DAC485B6">
    <pdf_title>New Methods in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Active contours -- An excellent way to achieve all of these goals (relaxed constraints on the shape of inner and outer boundary of iris, occlusions, reflections and smoothness constraint) is to describe the iris inner and outer boundaries in terms of &#x201c;Active Contours&#x201d; based on discrete Fourier series expansions of the contour data. By employing Fourier components whose frequencies are integer multiples of 1/(2&#x3c0;), closure, orthogonality, and completeness are ensured. Selecting the number of frequency components allows control over the degree of smoothness that is imposed, and over the &#xfb01;delity of the approximation. In essence, truncating..." ID="ID_738502279" CREATED="1377289323290" MODIFIED="1377289323290" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20Recognition_Daugman.pdf" MOVED="1378113932390">
<pdf_annotation type="BOOKMARK" page="5" object_number="163" generation_number="0" document_hash="9C8188B07C944AE8359693C9619D21366E4AFCB127933CE1EB96FE1577A097">
    <pdf_title>Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="More recent works has promoted the use of active contours to account for nonconic boundary attributes." ID="ID_116630931" CREATED="1378118468402" MODIFIED="1378118468403" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1378118547182">
<pdf_annotation type="BOOKMARK" page="3" object_number="146" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Shah et al. [52] proposed geodesic active contours (GACs) to extract the iris from the surrounding structures." ID="ID_1865799188" CREATED="1378118468376" MODIFIED="1378118468376" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1378118572227">
<pdf_annotation type="BOOKMARK" page="3" object_number="148" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Tidbits @ refs." FOLDED="true" ID="ID_854841483" CREATED="1377192318925" MODIFIED="1377192413348">
<edge COLOR="#333333"/>
<node TEXT="2. The segmentation module localizes the iris&#x2019;s spatial extent in the eye image by isolating it from other structures in its vicinity, such as the sclera, pupil, eyelids, and eyelashes.                                                                " ID="ID_1365867159" CREATED="1377163530402" MODIFIED="1377193018914" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1377192380750">
<pdf_annotation type="BOOKMARK" page="2" object_number="514" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Localization - The inner and the outer boundaries of the iris are calculated." ID="ID_1759089625" CREATED="1377023441642" MODIFIED="1377023441642" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_Comparison%20of%20iris%20recognition%20algorithms_Vatsa%20et%20al..pdf" MOVED="1377192400522">
<pdf_annotation type="BOOKMARK" page="2" object_number="90" generation_number="0" document_hash="748D2A67CA287F101A73A476DDDD88E93D7EF47777AE6ED9AA1CA519CF1785">
    <pdf_title>iris</pdf_title>
</pdf_annotation>
</node>
<node TEXT="There  are  a  number  of  problems  with  the  Hough  transform  method.  First  of  all,  it requires  threshold  values  to  be  chosen  for  edge  detection,  and  this  may  result  in critical edge points being removed, resulting in failure to detect circles/arcs. Secondly, the Hough transform is computationally intensive due to its &#x2018;brute-force&#x2019; approach, and thus may not be suitable for real time applications." ID="ID_43419439" CREATED="1377753275225" MODIFIED="1377753275225" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378105017499">
<pdf_annotation type="BOOKMARK" page="10" object_number="8376" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The inference of eyelashes and their exclusion from the&#xd;IrisCode can be handled by statistical estimation methods that essentially depend on determining whether the distribution of iris pixels is multimodal. If the lower tail of the iris pixel histogram supports a hypothesis of multimodal mixing, then an appropriate threshold can be computed, and pixels outside it can be excluded from in&#xfb02;uencing the IrisCode." ID="ID_22919204" CREATED="1378113486118" MODIFIED="1378113486118" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_New%20Methods%20in%20Iris%20Recognition_Daugman.pdf" MOVED="1378113547051">
<pdf_annotation type="BOOKMARK" page="5" object_number="112" generation_number="0" document_hash="19BB4386435CF593679AA8E5C1AF8889D52156A1117BACC06F3031DAC485B6">
    <pdf_title>New Methods in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="These processes may collectively be called segmentation. Precision in assigning the true inner and outer iris boundaries, even if they are partly invisible, is important because the mapping of the iris in a dimensionless (i.e., size invariant and pupil dilation invariant) coordinate system is critically dependent on this. Inaccuracy in&#xd;the detection, modeling, and representation of these boundaries can cause different mappings of the iris pattern in its extracted description, and such differences could cause failures to match." ID="ID_216614844" CREATED="1378113486158" MODIFIED="1378113486158" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2007_New%20Methods%20in%20Iris%20Recognition_Daugman.pdf" MOVED="1378113581826">
<pdf_annotation type="BOOKMARK" page="1" object_number="114" generation_number="0" document_hash="19BB4386435CF593679AA8E5C1AF8889D52156A1117BACC06F3031DAC485B6">
    <pdf_title>New Methods in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Precision in assigning the true inner and outer iris boundaries, even if they are partly invisible, is important because the mapping of the iris in a dimensionless (size-invariant and pupil dilation-invariant) coordinate system is critically dependent on this. Inaccuracy in the detection, modelling, and representation of these boundaries can cause di&#xfb00;erent mappings of the iris pattern in its extracted description, and such di&#xfb00;erences could cause failures to match." ID="ID_609218462" CREATED="1377289323252" MODIFIED="1377289323252" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20Recognition_Daugman.pdf" MOVED="1378113964727">
<pdf_annotation type="BOOKMARK" page="4" object_number="162" generation_number="0" document_hash="9C8188B07C944AE8359693C9619D21366E4AFCB127933CE1EB96FE1577A097">
    <pdf_title>Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Proenca [43, 45], presented a segmentation method that can handle degraded images acquired in less constrained conditions." ID="ID_70938733" CREATED="1378118468351" MODIFIED="1378118468352" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1378118600746">
<pdf_annotation type="BOOKMARK" page="3" object_number="149" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[Just putting this reference ... use this as a reference for pointing people to look for lit. in iris segmentation methods] Proenca [43, 45], presented a segmentation method that can handle degraded images acquired in less constrained conditions. Smereka [53] proposed a methodology with a capability of reliably segmenting non-ideal imagery, which is simultaneously a&#xfb00;ected with such factors as specular re&#xfb02;ection, blur, lighting variation, occlusion, and o&#xfb00;-angle images. The adap-&#xd;tive fuzzy leader clustering (AFLC) architecture is a hybrid neural-fuzzy system, which learns on-line in a stable and e&#xfb03;cient manner. It is prop..." ID="ID_1152066477" CREATED="1378118468481" MODIFIED="1378118468481" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1378118613880">
<pdf_annotation type="BOOKMARK" page="4" object_number="150" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Techniques to improve performance" FOLDED="true" ID="ID_1527356316" CREATED="1377192450556" MODIFIED="1377192527604" MOVED="1377192475285">
<edge WIDTH="thin"/>
<node TEXT="multi-spectral" ID="ID_1300179207" CREATED="1376447086028" MODIFIED="1376447131752" MOVED="1377192460385"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Some papers also discusses the use of multi-spectral bands (red, green, blue and NIR) for example ...this helps in simplifying the iris segmentation task.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="3. Normalization (unwrapping)" FOLDED="true" ID="ID_394825803" CREATED="1377163738332" MODIFIED="1380607035675">
<edge COLOR="#ffcc33"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      QUOTE: from &quot;Iris Recognition&quot;, Dougman, 2008 (Book chapter)
    </p>
    <p>
      The type of transformation is &quot;shape-flexible, size-invariant, and pupil dilation-invariant, dimensionless coordinate system for the iris portion of the image I(x,y) can be represented by the normalized mapping:
    </p>
    <p>
      
    </p>
    <p>
      I(x(r,theta), y(r,theta)) --&gt; I(r,theta)
    </p>
    <p>
      
    </p>
    <p>
      where the dimensionless parameter r [0,1] spans the unit interval and
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      [See the matrix representation (equation 4.4) in the PDF document]
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Techniques employed" FOLDED="true" ID="ID_612597585" CREATED="1377192511772" MODIFIED="1377192533656">
<edge WIDTH="thin"/>
<node TEXT="Daugman&apos;s Rubber sheet model" FOLDED="true" ID="ID_293811044" CREATED="1377204936039" MODIFIED="1377204947370">
<node TEXT="In this way the iris region is modelled as a flexible rubber sheet anchored at the iris boundary with the pupil centre as the reference point." ID="ID_492409431" CREATED="1378104624073" MODIFIED="1378104624073" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378105150768">
<pdf_annotation type="BOOKMARK" page="18" object_number="8379" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="A number of data points are selected along each radial line and this is defined as the radial resolution. The  number  of  radial  lines  going  around  the  iris  region  is  defined  as  the  angular resolution." ID="ID_977983826" CREATED="1378104624060" MODIFIED="1378104624060" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378105255976">
<pdf_annotation type="BOOKMARK" page="19" object_number="8382" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The homogeneous rubber sheet model assigns to each point on the iris, regardless of its size and pupillary dilation, a pair of real coordinates (r, &#x3b8;) where r is on the unit interval [0, 1] and &#x3b8; is angle [0, 2&#x3c0;]" ID="ID_761437842" CREATED="1378106461331" MODIFIED="1378106461331" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107997409">
<pdf_annotation type="BOOKMARK" page="6" object_number="131" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[Rotation invariance] However, it would not be invariant to the orientation of the iris within the image plane. The most ef&#xfb01;cient way to achieve iris recognition with orientation invariance is not to rotate the image itself using the Euler matrix, but rather to compute the iris phase code in a single canonical orientation and then to compare this very compact representation at many discrete orientations by cyclic scrolling of its angular variable." ID="ID_518239702" CREATED="1378106461366" MODIFIED="1378106461366" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378108011796">
<pdf_annotation type="BOOKMARK" page="6" object_number="133" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[Normalization] This coordinate system can be described as doubly-dimensionless: the polar variable, angle, is inherently dimensionless, but in this case the radial variable is also dimensionless, because it ranges from the pupillary boundary to the limbus always as a unit interval [0, 1]." ID="ID_1235763273" CREATED="1378106461317" MODIFIED="1378106461317" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378108017538">
<pdf_annotation type="BOOKMARK" page="6" object_number="130" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The homogeneous rubber sheet model assigns to  each point in  the  iris,  regardless  of size  and  pupillary  dilation,  a  pair of dimensionless  real  coordinates  (r, \theta)  where  r  lies on  the  unit interval  [0,1]  and  \theta  is the  usual angular quantity that is cyclic over [0,2pi]. " ID="ID_1669719784" CREATED="1378260158938" MODIFIED="1378260158938" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1993_High%20confidence%20visual%20recognition%20of%20persons%20by%20a_Daugman.pdf" MOVED="1378260344173">
<pdf_annotation type="BOOKMARK" page="5" object_number="194" generation_number="0" document_hash="EAD7EAA881C7FEEC7C52AD1EF6FD287451F59F8F633724ECE68BDCFBD4147">
    <pdf_title>High Confidence Visual Recognition of Persons a Test of Statistical Independence</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Wildes" FOLDED="true" ID="ID_317479801" CREATED="1378105105029" MODIFIED="1378105109196">
<node TEXT="[Normalization step] The  Wildes  et  al.  system  employs  an  image  registration  technique,  which geometrically warps a newly acquired image,   into alignment with a selected database image " ID="ID_318449862" CREATED="1378104624045" MODIFIED="1378104624046" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378105171704">
<pdf_annotation type="BOOKMARK" page="18" object_number="8380" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The Wildes et al. system uses an image-registration technique to compensate for both scaling and rotation." ID="ID_100162935" CREATED="1378233826706" MODIFIED="1378233826706" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1997_Iris%20recognition%20an%20emerging%20biometric%20technology_Wildes.pdf" MOVED="1378234421656">
<pdf_annotation type="BOOKMARK" page="10" object_number="99" generation_number="0" document_hash="571C9339BD2F81A5E3B863F931AFA853D1B9B3FAA197435097E2B592CD1353D0">
    <pdf_title>Iris Recognition: An Emerging Biometric Technology</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="[Normalization method of Virtual Circles] In the Boles [8] system, iris images are first scaled to have constant diameter so that when comparing two images, one is considered as the reference image. This works differently  to  the  other  techniques,  since  normalisation  is  not  performed  until attempting to match two iris regions, rather than performing normalisation and saving the  result  for  later  comparisons." ID="ID_478206748" CREATED="1378104624052" MODIFIED="1378104624052" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378105187376">
<pdf_annotation type="BOOKMARK" page="18" object_number="8381" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="The localization of the iris and the coordinate system described above achieve invariance to the 2D position and size of the iris, and to the dilation of the pupil within the iris." ID="ID_476887265" CREATED="1378106461351" MODIFIED="1378106461352" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107932732">
<pdf_annotation type="BOOKMARK" page="6" object_number="132" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Tidbits @ refs." FOLDED="true" ID="ID_789371685" CREATED="1377192537136" MODIFIED="1377192587740">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT="3.The normalization module (also known as iris unwrapping) invokes a geometric normalization scheme to transform the segmented iris  image  from  cartesian  coordinates  to  polar coordinates." ID="ID_1693258766" CREATED="1377163530374" MODIFIED="1380607082202" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1377192569384">
<pdf_annotation type="BOOKMARK" page="2" object_number="515" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Normalization - Iris of different people may be captured in different size, for the same person also size may vary because of the variation in illumination and other factors." ID="ID_553938467" CREATED="1377023441636" MODIFIED="1377023441636" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_Comparison%20of%20iris%20recognition%20algorithms_Vatsa%20et%20al..pdf" MOVED="1377193041943">
<pdf_annotation type="BOOKMARK" page="2" object_number="93" generation_number="0" document_hash="748D2A67CA287F101A73A476DDDD88E93D7EF47777AE6ED9AA1CA519CF1785">
    <pdf_title>iris</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The normalisation process will produce iris regions, which have the same constant dimensions, so that two photographs of the same  iris under different conditions will have characteristic  features  at  the same spatial location. " ID="ID_468903619" CREATED="1378104624067" MODIFIED="1378104624067" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378105119386">
<pdf_annotation type="BOOKMARK" page="17" object_number="8378" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="the creation of a size-invariant representation." ID="ID_1903487794" CREATED="1378104624450" MODIFIED="1378104624450" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378106679181">
<pdf_annotation type="BOOKMARK" page="1" object_number="118" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="4. Encoding" FOLDED="true" ID="ID_34799563" CREATED="1377163764513" MODIFIED="1377192783282">
<edge COLOR="#ffcc33"/>
<node TEXT="Techniques employed" FOLDED="true" ID="ID_433831309" CREATED="1377192645260" MODIFIED="1378114878519">
<edge WIDTH="thin"/>
<node TEXT="Multi-scale Gabor filters" FOLDED="true" ID="ID_1413939715" CREATED="1377205836073" MODIFIED="1377205852147">
<node TEXT="Daugman" FOLDED="true" ID="ID_336388190" CREATED="1378107330696" MODIFIED="1378107334504">
<node TEXT="I(&#x3c1;, &#x3c6;) is the raw iris image in a dimensionless polar coordinate system that is size- and translation-invariant, and which also corrects for pupil dilation as explained in a later section; &#x3b1; and &#x3b2; are the multi-scale 2D wavelet size parameters, spanning an 8-fold range from 0.15mm to 1.2mm on the iris; &#x3c9; is wavelet frequency, spanning 3 octaves in inverse proportion to &#x3b2;; and (r_0 , &#x3b8;_0 ) represent the polar coordinates of each region of iris for which the phasor coordinates h_{Re,Im} are computed." ID="ID_1743958778" CREATED="1378104624283" MODIFIED="1378104624283" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107348873">
<pdf_annotation type="BOOKMARK" page="3" object_number="127" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="now an equal number of masking bits are also computed to signify whether any iris region is obscured by eyelids, contains any eyelash occlusions, specular re&#xfb02;ections, boundary artifacts of hard contact lenses, or poor signal-to-noise ratio and thus should be ignored in the demodulation code as artifact." ID="ID_782383385" CREATED="1378104624299" MODIFIED="1378104624299" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107414299">
<pdf_annotation type="BOOKMARK" page="3" object_number="128" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Only phase information is used for recognizing irises because amplitude information is not very dis-&#xd;criminating, and it depends upon extraneous factors such as imaging contrast, illumination, and camera gain." ID="ID_891043481" CREATED="1378104624322" MODIFIED="1378104624322" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107429986">
<pdf_annotation type="BOOKMARK" page="3" object_number="129" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="We  will  exploit  these  self-similarity  properties  of  2-D  Gabor  filters  in  analyzing  iris textures across  multiple scales to  construct identifying codes, " ID="ID_736944978" CREATED="1378260158954" MODIFIED="1378260158954" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1993_High%20confidence%20visual%20recognition%20of%20persons%20by%20a_Daugman.pdf" MOVED="1378260284440">
<pdf_annotation type="BOOKMARK" page="4" object_number="193" generation_number="0" document_hash="EAD7EAA881C7FEEC7C52AD1EF6FD287451F59F8F633724ECE68BDCFBD4147">
    <pdf_title>High Confidence Visual Recognition of Persons a Test of Statistical Independence</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Rotation  invariance  to  correct  for  head  tilt  and  cyclovergence  of the  eye  within  its  orbit  is  achieved  in  a  subsequent stage  of  analysis  of  the  iris  code  itself. " ID="ID_173706456" CREATED="1378260158923" MODIFIED="1378260158923" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1993_High%20confidence%20visual%20recognition%20of%20persons%20by%20a_Daugman.pdf" MOVED="1378260308168">
<pdf_annotation type="BOOKMARK" page="5" object_number="195" generation_number="0" document_hash="EAD7EAA881C7FEEC7C52AD1EF6FD287451F59F8F633724ECE68BDCFBD4147">
    <pdf_title>High Confidence Visual Recognition of Persons a Test of Statistical Independence</pdf_title>
</pdf_annotation>
</node>
<node TEXT="An array of 128 &#xd7; 8 locations in angle and radius, respectively, are then selected. At each of these locations, a sine-like and a cosine-like Gabor wavelet is multiplied (in the dot product sense) against the normalized image. These sample the amount of sine-like and cosine-like signal in the bandwidth of the Gabor wavelet and over the spatial extent of the wavelet. The ratio of the two samples gives the tangent of the local phase angle. The local phase angle is then digitized to two bits and the bits are assembled into an array of 256x8 bits." ID="ID_1019780462" CREATED="1378397410239" MODIFIED="1378397410239" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398784104">
<pdf_annotation type="BOOKMARK" page="19" object_number="291" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="" FOLDED="true" ID="ID_127679698" CREATED="1378325189287" MODIFIED="1378325189287" MOVED="1378404310504">
<node ID="ID_1046829573" CREATED="1378325227691" MODIFIED="1378325227691"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    By retaining only the sign of the Gabor filter output, the Representational approach that is used by Daugman yields a remarkably <b><font color="#ff0000">parsimonious</font></b> representation of an iris. Indeed, <u>a representation with a size of 256 bytes can be accommodated on the magnetic stripe affixed to the back of standard credit/debit cards</u>. In contrast, the <u>Wildes et al. representation is derived directly from the filtered image for size on the order of the number of bytes in the iris region of the originally captured image</u>.
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="This algorithm [Masek&apos;s] is somewhat similar to Daugman&#x2019;s use of Log-Gabor &#xfb01;lters, but it works only on rows as opposed to the 2-dimensional &#xfb01;lters used by Daugman." ID="ID_1815874361" CREATED="1378882592760" MODIFIED="1378882592760" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_The%20state-of-the-art%20in%20iris%20biometric%20cryptosyste_Rathgeb%20and%20Uhl.pdf" MOVED="1378882785619">
<pdf_annotation type="BOOKMARK" page="13" object_number="213" generation_number="0" document_hash="EAB0A88271ABE886780C169CF672A16CE251F8B5FC098CF9E554E224B2AEFD9">
    <pdf_title>The State-of-the-Art in Iris Biometric Cryptosystems</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="log Gabor filters (Masek)" FOLDED="true" ID="ID_1008286329" CREATED="1377209461705" MODIFIED="1378107381541">
<node TEXT="He uses just one (as opposed to multi-scale) log Gabor filter" ID="ID_831056777" CREATED="1378107353997" MODIFIED="1378107374561"/>
<node TEXT="Feature encoding was implemented by convolving the normalised iris pattern with 1D Log-Gabor wavelets. " ID="ID_1442923658" CREATED="1378104624031" MODIFIED="1378104624032" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378107592937">
<pdf_annotation type="BOOKMARK" page="27" object_number="8385" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The rows of the 2D normalised pattern are taken as the 1D signal, each row corresponds to a circular ring on the iris region. The angular direction is taken rather than the radial one,  which  corresponds  to  columns  of  the  normalised  pattern,  since  maximum independence occurs in the angular direction. " ID="ID_1323798067" CREATED="1378104624039" MODIFIED="1378104624039" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378107632187">
<pdf_annotation type="BOOKMARK" page="27" object_number="8386" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="[from summary] the optimum encoding of iris features was with one 1D Log-Gabor filter with a bandwidth given by a &#x3c3;/f of 0.5 =&gt; Just one filter used ...  The centre wavelength of this filter was found to be dependent on the data set used. A centre wavelength of 12.0 pixels provided optimum  decidability  for  the  &#x2018;LEI-a&#x2019;,  while  18.0  pixels  proved  optimal  for  the &#x2018;CASIA-a&#x2019; data set." ID="ID_268795533" CREATED="1378104624131" MODIFIED="1378104624131" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378107679742">
<pdf_annotation type="BOOKMARK" page="45" object_number="8391" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The total number of bits in the template will be the angular  resolution  times  the  radial  resolution,  times  2,  times  the  number  of  filters used." ID="ID_1012647793" CREATED="1378104623982" MODIFIED="1378104623983" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378107718409">
<pdf_annotation type="BOOKMARK" page="27" object_number="8387" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="An optimum template size with radial resolution of 20 pixels, and angular  resolution  of  240  pixels  was  chosen  for  both  data  sets.  These  parameters generate  a  biometric  template  that  contains  9600  bits  of  information. [((240*2)*20)*1 = 9600]" ID="ID_1619296085" CREATED="1378104624125" MODIFIED="1378104624125" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378107784189">
<pdf_annotation type="BOOKMARK" page="45" object_number="8392" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Haar wavelets" ID="ID_1026955459" CREATED="1377209469262" MODIFIED="1377209472741"/>
<node TEXT="Adaptive Thresholding" FOLDED="true" ID="ID_1588166856" CREATED="1377230236966" MODIFIED="1377230242250">
<node TEXT="xxx" ID="ID_145381437" CREATED="1377230249158" MODIFIED="1377230250998"/>
<node TEXT="Tidbits @ refs." FOLDED="true" ID="ID_983415901" CREATED="1377230251450" MODIFIED="1377230257792">
<node TEXT="An iris identification algorithm is proposed based on adaptive thresholding." ID="ID_1001290301" CREATED="1377229881556" MODIFIED="1377229881556" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_A%20new%20approach%20to%20iris%20pattern%20recognition_Du%20et%20al..pdf" MOVED="1377230278366">
<pdf_annotation type="BOOKMARK" page="1" object_number="595" generation_number="0" document_hash="8EDE319D14DFED3E79E798CDD3B20DE75CF549CA9B9EC6B712F652D2054BA83">
    <pdf_title>A New Approach to Iris Pattern Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Correlation filters" FOLDED="true" ID="ID_1748278799" CREATED="1378114740151" MODIFIED="1378114744696">
<node TEXT=" A recognition system can use the unwrapped iris directly to compare two irides by using &#xfb01;lters like the correlation &#xfb01;lters. But, this is not suggestible as it requires more time and memory." ID="ID_104695960" CREATED="1378118468433" MODIFIED="1378118468433" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1378118668631">
<pdf_annotation type="BOOKMARK" page="4" object_number="151" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="PCA and ICA" FOLDED="true" ID="ID_107348699" CREATED="1378114842785" MODIFIED="1378114846644">
<node TEXT=" Schmid and Nicolo [79] worked on Principle Component Analysis (PCA) and Independent Component Analysis (ICA) Encoding for iris recognition." ID="ID_1540053536" CREATED="1378118468458" MODIFIED="1378118468458" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1378118683029">
<pdf_annotation type="BOOKMARK" page="4" object_number="152" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Zero crossing of Gabor wavelets" FOLDED="true" ID="ID_1589922346" CREATED="1380611023517" MODIFIED="1380611033395">
<node TEXT="Boashash  and Boles  [3] have  given  a new  approach  based on  zero-crossings  [4].  They  first  localized  and normalized the iris by using edge detection and other well known computer  vision  algorithms. The  zero-crossings of  the  wavelet transform  are  then  calculated  at  various  resolution  levels over concentric circles on the iris. The resulting one dimensional  (ID) signals are then  compared  with the  model  features using different dissimilarity function. This system can handle noisy conditions as wella s variations in illumination." ID="ID_1857910055" CREATED="1380610961736" MODIFIED="1380610961770" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_Comparison%20of%20iris%20recognition%20algorithms_Vatsa%20et%20al..pdf" MOVED="1380611061505">
<pdf_annotation type="BOOKMARK" page="2" object_number="110" generation_number="0" document_hash="748D2A67CA287F101A73A476DDDD88E93D7EF47777AE6ED9AA1CA519CF1785">
    <pdf_title>iris</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Tidbits @ refs." FOLDED="true" ID="ID_1034482094" CREATED="1377192652292" MODIFIED="1377192915001">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT=" 4. The encoding module uses a feature-extraction routine to produce a binary code. " ID="ID_885451585" CREATED="1377163530349" MODIFIED="1377163530349" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1377192664223">
<pdf_annotation type="BOOKMARK" page="2" object_number="516" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Feature extraction - Iris provides abundant texture information. A feature vector is formed which consists of the ordered sequence of features extracted from the various representation of the iris images." ID="ID_1482958507" CREATED="1377023441627" MODIFIED="1377023441627" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_Comparison%20of%20iris%20recognition%20algorithms_Vatsa%20et%20al..pdf" MOVED="1377193057229">
<pdf_annotation type="BOOKMARK" page="2" object_number="96" generation_number="0" document_hash="748D2A67CA287F101A73A476DDDD88E93D7EF47777AE6ED9AA1CA519CF1785">
    <pdf_title>iris</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Encoding algorithms generally perform a multiresolution analysis of the  iris by applying wavelet filters and examining the ensuing  response. In a commonly used encoding mechanism, 2D  Gabor wavelets are first used to extract the local phasor in- formation of the iris texture....[From Ross, 2010, Iris recognition, The Path forward]" ID="ID_247171208" CREATED="1377197764294" MODIFIED="1378107321726"/>
<node TEXT="The combinatorial complexity of this phase information across different persons spans about 249 degrees of freedom and generates a discrimination entropy of about 3.2 bits/mm^2 over the iris, enabling real-time decisions about personal identity with extremely high con&#xfb01;dence." ID="ID_1999604235" CREATED="1378104624339" MODIFIED="1378104624339" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378106887293">
<pdf_annotation type="BOOKMARK" page="1" object_number="115" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Researchers have also designed other types of encoding and matching schemes, based on discrete cosine transforms [81], ordinal features [82], phase based [83, 84] and scale-invariant feature transforms." ID="ID_1887382221" CREATED="1378118468610" MODIFIED="1378118468610" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1378118884176">
<pdf_annotation type="BOOKMARK" page="5" object_number="154" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" Representation: The distinctive spatial characteristics of the human iris are manifest at a variety of scales. For example, distinguishing structures range from the overall shape of the iris to the distribution of tiny crypts and detailed texture. To capture this range of spatial detail, it is advantageous to make use of a multiscale representation. Both of the iris-recognition systems (Daguman&apos;s and Wildes&apos;) under discussion make use of bandpass image decompositions to avail themselves of multiscale information. " ID="ID_765017084" CREATED="1378233826686" MODIFIED="1378233826686" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1997_Iris%20recognition%20an%20emerging%20biometric%20technology_Wildes.pdf" MOVED="1378234452727">
<pdf_annotation type="BOOKMARK" page="10" object_number="100" generation_number="0" document_hash="571C9339BD2F81A5E3B863F931AFA853D1B9B3FAA197435097E2B592CD1353D0">
    <pdf_title>Iris Recognition: An Emerging Biometric Technology</pdf_title>
</pdf_annotation>
</node>
<node TEXT="the Tan group has presented local ordinal measures as a unifying principle for many of the algorithms [24]." ID="ID_760311571" CREATED="1378397410242" MODIFIED="1378398741777" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2009_Iris%20recognition&#x2013;beyond%20one%20meter_Matey%20and%20Kennell.pdf" MOVED="1378398682155">
<icon BUILTIN="password"/>
<pdf_annotation type="BOOKMARK" page="18" object_number="290" generation_number="0" document_hash="B686A877CFD15A5BE7761CBB1AE9DBB5F9C28D09DAF7594C9665E32A76933D7">
    <pdf_title>Iris Recognition &#x2013; Beyond One Meter</pdf_title>
</pdf_annotation>
</node>
<node TEXT="In the feature extraction stage we employ custom implementations of two different algorithms used to extract binary iris-codes. The &#xfb01;rst one was proposed by Ma et al. (Ma et al., 2004). Within this approach the texture is divided into 10 stripes to obtain 5 one-dimensional signals, each one averaged from the pixels of 5 adjacent rows, hence, the upper 512 &#xd7; 50 pixel of preprocessed iris textures are analyzed. A dyadic wavelet transform is then performed on each of the resulting 10 signals, and two &#xfb01;xed  two &#xfb01;xed subbands are selected from each transform resulting in a total number of 20 subbands. In each subband all local minima and maxima above a adequate threshold are located, and a bit-code alternating between 0 and 1 at each extreme point is extracted. Utilizing 512 bits per signal, the &#xfb01;nal code comprises a total number of 512 &#xd7; 20 = 10240 bits." ID="ID_1938838559" CREATED="1378882592772" MODIFIED="1378882592772" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_The%20state-of-the-art%20in%20iris%20biometric%20cryptosyste_Rathgeb%20and%20Uhl.pdf" MOVED="1378882754312">
<pdf_annotation type="BOOKMARK" page="12" object_number="212" generation_number="0" document_hash="EAB0A88271ABE886780C169CF672A16CE251F8B5FC098CF9E554E224B2AEFD9">
    <pdf_title>The State-of-the-Art in Iris Biometric Cryptosystems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Although a recognition system can use the unwrapped  iris directly to &#xd; compare two irides (using correlation filters,  for example), most &#xd; systems first use a feature extraction  routine to encode the iris&#x2019;s &#xd; textural content. Encoding algo- rithms generally perform a &#xd; multiresolution analysis of the  iris by applying wavelet filters and &#xd; examining the ensuing  response. In a commonly used encoding mechanism, &#xd; 2D  Gabor wavelets are first used to extract the local phasor in- &#xd; formation of the iris texture...." ID="ID_1880242682" CREATED="1377159275737" MODIFIED="1377197758116" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1380604242301">
<pdf_annotation type="BOOKMARK" page="3" object_number="506" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="5. Matching / Recognition" FOLDED="true" ID="ID_1592664807" CREATED="1376336115790" MODIFIED="1378114875489">
<edge COLOR="#ffcc00"/>
<node TEXT="Techniques employed" FOLDED="true" ID="ID_776004662" CREATED="1376336132470" MODIFIED="1376336326670">
<edge COLOR="#ffcc00" WIDTH="thin"/>
<node TEXT="Similarity score" FOLDED="true" ID="ID_1267597775" CREATED="1378148171578" MODIFIED="1378148176760">
<node TEXT="In the veri&#xfb01;cation task, an algorithm compares a query image q_j to a target image t_i and produces a similarity score s_ij ... a verification occurs if s_ij is greater than or equal to a threshold &#x3c4;. The threshold &#x3c4; is the system&#x2019;s operating point.  The verification performance is measured in terms of False accept rate (FAR) and verification rate (VR)" ID="ID_867518167" CREATED="1378147853839" MODIFIED="1378147853839" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2008_The%20iris%20challenge%20evaluation%202005_Phillips%20et%20al..pdf" MOVED="1378148197953">
<pdf_annotation type="BOOKMARK" page="3" object_number="227" generation_number="0" document_hash="F4396E459693A2D4B9F35667BF4C2ADAC6E34B3452163DACF4CD2164637B0">
    <pdf_title>The Iris Challenge Evaluation 2005</pdf_title>
</pdf_annotation>
</node>
<node TEXT="A similarity score is a measure of the sameness of identity of the individuals appearing in two iris images. A large similarity score implies that the identi&#xfb01;es are more likely to be the same. Algorithms could report either a similarity score or distance measure. Distance measures, where a small value indicates sameness of identity" ID="ID_1209388356" CREATED="1378147853897" MODIFIED="1378147853897" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2008_The%20iris%20challenge%20evaluation%202005_Phillips%20et%20al..pdf" MOVED="1378148211879">
<pdf_annotation type="BOOKMARK" page="3" object_number="228" generation_number="0" document_hash="F4396E459693A2D4B9F35667BF4C2ADAC6E34B3452163DACF4CD2164637B0">
    <pdf_title>The Iris Challenge Evaluation 2005</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Hamming distance measures" FOLDED="true" ID="ID_127574697" CREATED="1377204835062" MODIFIED="1377204841101">
<node TEXT=" Most widely used technique for comparing two iris codes is the Hamming distance, a number corresponding to the bits that di&#xfb00;er between the two iris codes." ID="ID_597659441" CREATED="1378118468573" MODIFIED="1378118468573" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2011_Recent%20Trends%20in%20Iris%20Recognition_Birgale%20and%20Kokare.pdf" MOVED="1378118711256">
<pdf_annotation type="BOOKMARK" page="4" object_number="153" generation_number="0" document_hash="2C1608EE2971B63110CCD3C5F3DBAA8F5EE62FFA39B216AE7674EB64C61CB">
    <pdf_title>29 Recent Trends in Iris Recognition</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Euclidian distance measures" ID="ID_272134007" CREATED="1377204877297" MODIFIED="1377204979487"/>
</node>
<node TEXT="Techniques to improve performance" FOLDED="true" ID="ID_1875458600" CREATED="1377204855767" MODIFIED="1377204865173">
<node TEXT="Face &amp; person tracking" ID="ID_659589190" CREATED="1376336144551" MODIFIED="1376336169351" MOVED="1377204868652"/>
</node>
<node TEXT="Tidbits @ refs." FOLDED="true" ID="ID_1580770424" CREATED="1377192833341" MODIFIED="1377192891722">
<edge COLOR="#333333" WIDTH="thin"/>
<node TEXT="5. The matching module determines how closely the produced code matches the encoded features stored in the database." ID="ID_1267745235" CREATED="1377163530285" MODIFIED="1377163530285" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1377192937405">
<pdf_annotation type="BOOKMARK" page="2" object_number="517" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Matching - The feature vectors are classified through different thresholding techniques like  Hamming Distance, weight vector and winner selection, dissimilarity function, etc." ID="ID_657101796" CREATED="1377023441619" MODIFIED="1377023441619" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_Comparison%20of%20iris%20recognition%20algorithms_Vatsa%20et%20al..pdf" MOVED="1377193073633">
<pdf_annotation type="BOOKMARK" page="2" object_number="99" generation_number="0" document_hash="748D2A67CA287F101A73A476DDDD88E93D7EF47777AE6ED9AA1CA519CF1785">
    <pdf_title>iris</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Current  approaches  to  iris  pattern  recognition  include:  the  2-D  Gabor  wavelet  approach  by Daugman  [3],  the  Laplacian  parameter approach  by  Wildes  et  al.  [4],  zero-crossings  of  the  1-D wavelet  transform at  various  resolution  levels  by  Boles  et  al.  [5],  the  Independent Component Analysis  (ICA)  approach  by  Huang  et  al.  [6],  the  texture  analysis  using  multi-channel  Gabor filtering and wavelet transform by Zhu et al. [7], the circular symmetric filter  approach by Ma et al. [8],  the self-organizing  neural  network  approach  by  Liam  et  al.  [9],  and  the  one-dimensional approach by Du et al. [10]." ID="ID_229388496" CREATED="1377229881509" MODIFIED="1377229881511" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_A%20new%20approach%20to%20iris%20pattern%20recognition_Du%20et%20al..pdf" MOVED="1377230002426">
<pdf_annotation type="BOOKMARK" page="1" object_number="593" generation_number="0" document_hash="8EDE319D14DFED3E79E798CDD3B20DE75CF549CA9B9EC6B712F652D2054BA83">
    <pdf_title>A New Approach to Iris Pattern Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The recognition principle is the failure of a test of statistical independence on iris phase structure encoded by multi-scale quadrature wavelets." ID="ID_1627524604" CREATED="1378104624393" MODIFIED="1378104624393" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378106547162">
<pdf_annotation type="BOOKMARK" page="1" object_number="113" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT="In order to account for rotational inconsistencies, when the Hamming distance of two templates is calculated, one template is shifted left and right bit-wise and a number of Hamming distance values are calculated from successive shifts. This bit-wise shifting in  the  horizontal  direction  corresponds  to  rotation  of  the  original  iris  region  by  an angle given by the angular resolution used. If an angular resolution of 180 is used, each shift will correspond to a rotation of 2 degrees in t..." ID="ID_878190577" CREATED="1378104624018" MODIFIED="1378104624018" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378107747034">
<pdf_annotation type="BOOKMARK" page="29" object_number="8389" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The Hamming distance was chosen as a metric for recognition, since bit-wise  comparisons  were necessary.  The  Hamming  distance  algorithm  employed also incorporates noise masking, so that only significant bits are used in calculating the Hamming distance between two iris templates." ID="ID_1947227388" CREATED="1378104623992" MODIFIED="1378104623992" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378107762522">
<pdf_annotation type="BOOKMARK" page="28" object_number="8388" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The statistical data and theory presented above show that we can perform iris recognition successfully just by a test of statistical independence. Any two different irises are statistically &#x201c;guaranteed&#x201d; to pass this test of independence, and any two images that fail this test (i.e. produce a HD &#x2264; 0.32) must be images of the same iris. Thus, it is the unique failure of the test of independence, that is the basis for iris recognition." ID="ID_825015524" CREATED="1378106461283" MODIFIED="1378106461284" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107830189">
<pdf_annotation type="BOOKMARK" page="7" object_number="135" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Tidbits from references" FOLDED="true" ID="ID_741051812" CREATED="1377162434800" MODIFIED="1377162570148">
<edge COLOR="#666666" WIDTH="thin"/>
<node TEXT="ELEMENTS OF A RECOGNITION SYSTEM &#xd;As Figure 2 shows, most iris recognition systems consist of five basic modules leading to a decision:" ID="ID_490852191" CREATED="1377163530287" MODIFIED="1377163530287" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2010_Iris%20recognition%20The%20path%20forward_Ross.pdf" MOVED="1377163661490">
<pdf_annotation type="BOOKMARK" page="2" object_number="483" generation_number="0" document_hash="2748A936486C92FF1C9CF957BAC96A8CA7E8CBC115BD5944D30443C3AEFD3">
    <pdf_title>IRIS RECOGNITION:</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Human iris identification process is basically divided into four steps:" ID="ID_1214867292" CREATED="1377023441531" MODIFIED="1377023441531" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_Comparison%20of%20iris%20recognition%20algorithms_Vatsa%20et%20al..pdf" MOVED="1377165731819">
<pdf_annotation type="BOOKMARK" page="2" object_number="87" generation_number="0" document_hash="748D2A67CA287F101A73A476DDDD88E93D7EF47777AE6ED9AA1CA519CF1785">
    <pdf_title>iris</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The results show that the Daugman&#x2019;s algorithm gave the highest accuracy of 99.9%" ID="ID_316881200" CREATED="1377023441440" MODIFIED="1377023441441" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_Comparison%20of%20iris%20recognition%20algorithms_Vatsa%20et%20al..pdf" MOVED="1377314685780">
<pdf_annotation type="BOOKMARK" page="1" object_number="75" generation_number="0" document_hash="748D2A67CA287F101A73A476DDDD88E93D7EF47777AE6ED9AA1CA519CF1785">
    <pdf_title>iris</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Daugman&apos;s algorithm is based on IrisCodes. For the preprocessing step i.e., inner and outer boundaries of the iris are located. Integro-differential operators are then used to detect the centre and diameter of the iris, then the pupil is also detected using the differential operators, for conversion from Cartesian to polar transform, rectangular representation of the required area is made. Feature extraction algorithm uses the modified comples valued 2-D Gabor wavelets. For matching, Hamming Distance has been calculated by the use of the Boolean Exclusive - OR operator and for the perfect match give the hamming distance equal to 0 is obtained." ID="ID_198280593" CREATED="1377023441541" MODIFIED="1377023441541" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2004_Comparison%20of%20iris%20recognition%20algorithms_Vatsa%20et%20al..pdf" MOVED="1377314717171">
<pdf_annotation type="BOOKMARK" page="2" object_number="106" generation_number="0" document_hash="748D2A67CA287F101A73A476DDDD88E93D7EF47777AE6ED9AA1CA519CF1785">
    <pdf_title>iris</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Iris recognition begins with &#xfb01;nding an iris in an image, demarcating its inner and outer boundaries at pupil and sclera, detecting the upper and lower eyelid boundaries if they occlude, and detecting and excluding any superimposed eyelashes, or re&#xfb02;ections from the cornea or eyeglasses. These processes may collectively be called segmentation. " ID="ID_1983874903" CREATED="1377289323271" MODIFIED="1377289323272" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/bookchapters/2008_Iris%20Recognition_Daugman.pdf" MOVED="1378109346083">
<pdf_annotation type="BOOKMARK" page="4" object_number="161" generation_number="0" document_hash="9C8188B07C944AE8359693C9619D21366E4AFCB127933CE1EB96FE1577A097">
    <pdf_title>Iris Recognition</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The adjustable decision threshold can then be set at an HD of .32, the mathematical crossover point (the point where the robability of a False Reject is approximately the same as the probability of a False Accept)." ID="ID_479914346" CREATED="1378166875163" MODIFIED="1378166875163" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1996_Iris%20recognition%20technology_Williams.pdf" MOVED="1378167041749">
<pdf_annotation type="BOOKMARK" page="4" object_number="137" generation_number="0" document_hash="40A7AB19C41AECB319A5C6D23E181EE668A1ABF88AB631CADA3FC71E61F5855">
    <pdf_title>Iris Recognition Technology</pdf_title>
</pdf_annotation>
</node>
<node TEXT="To complete the preprocessing the contrast of the resulting iris texture is enhanced applying histogram stretching methods." ID="ID_1301842364" CREATED="1378882592743" MODIFIED="1378882592744" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_The%20state-of-the-art%20in%20iris%20biometric%20cryptosyste_Rathgeb%20and%20Uhl.pdf" MOVED="1378882712679">
<pdf_annotation type="BOOKMARK" page="3" object_number="210" generation_number="0" document_hash="EAB0A88271ABE886780C169CF672A16CE251F8B5FC098CF9E554E224B2AEFD9">
    <pdf_title>The State-of-the-Art in Iris Biometric Cryptosystems</pdf_title>
</pdf_annotation>
</node>
<node TEXT="In this work we use an Iridian implementation of the Daugman algorithm. In this algorithm, the iris code is generated by performing a dot product between complex Gabor wavelets and an N x M grid of locations on the normalized image. The phase angles of resulting complex dot products are then quantized to 2 bits and assembled into the iris code as an N x M array of 2-bit cells [The American Scientist article by Daugman]" ID="ID_1485639736" CREATED="1382576743223" MODIFIED="1382576743223" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_acquisition/2006_Iris%20on%20the%20Move%20Acquisition%20of%20Images%20for%20Iris%20R_Matey%20et%20al..pdf" MOVED="1382577241568">
<pdf_annotation type="BOOKMARK" page="2" object_number="193" generation_number="0" document_hash="E1EAD91BC8AA56E2908D8926546F8AA5C8A099A32B7051D89839C2889159AC5">
    <pdf_title>Iris on the Move: Acquisition of Images for Iris Recognition in</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
<node TEXT="Example systems" FOLDED="true" ID="ID_1588601717" CREATED="1378234145330" MODIFIED="1378234150818">
<node TEXT="Daugman&apos;s system" FOLDED="true" ID="ID_556201310" CREATED="1378234152567" MODIFIED="1378234160981">
<node TEXT="[description of the Daugman&apos;s system] The Daugman system captures images with the iris diameter typically between 100 and 200 pixels from a distance of 15&#x2013;46 cm using a 330-mm lens. [In visible wavelength] Due to the need to keep the illumination level relatively low for operator comfort, the optical aperture cannot be too small (e.g., -stop 11). Therefore, both systems have fairly small depths of &#xfb01;eld, approximately 1 cm. Video rate capture is exploited by both systems." ID="ID_1151801415" CREATED="1378233826597" MODIFIED="1378234206913" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1997_Iris%20recognition%20an%20emerging%20biometric%20technology_Wildes.pdf" MOVED="1378234195362">
<pdf_annotation type="BOOKMARK" page="4" object_number="97" generation_number="0" document_hash="571C9339BD2F81A5E3B863F931AFA853D1B9B3FAA197435097E2B592CD1353D0">
    <pdf_title>Iris Recognition: An Emerging Biometric Technology</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Wildes&apos; system" FOLDED="true" ID="ID_215424543" CREATED="1378234161860" MODIFIED="1378234176909">
<node TEXT="[description of the Wildes&apos; system] the Wildes et al. system images the iris with approximately 256 pixels across the diameter from 20 cm using an 80-mm lens. [in visible wavelength] Due to the need to keep the illumination level relatively low for operator comfort, the optical aperture cannot be too small (e.g., -stop 11). Therefore, both systems (Daugman&apos;s and Wildes&apos;) have fairly small depths of &#xfb01;eld, approximately 1 cm. Video rate capture is exploited by both systems." ID="ID_852267041" CREATED="1378233826618" MODIFIED="1378233826618" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1997_Iris%20recognition%20an%20emerging%20biometric%20technology_Wildes.pdf" MOVED="1378234199113">
<pdf_annotation type="BOOKMARK" page="4" object_number="98" generation_number="0" document_hash="571C9339BD2F81A5E3B863F931AFA853D1B9B3FAA197435097E2B592CD1353D0">
    <pdf_title>Iris Recognition: An Emerging Biometric Technology</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="IrisScan System 2000 (1995)" ID="ID_1176552538" CREATED="1378364443142" MODIFIED="1378364460423"/>
<node TEXT="OKI IrisPass(R) - S (1998)" ID="ID_48039453" CREATED="1378364461944" MODIFIED="1378364480135"/>
<node TEXT="LG 2200 (1999)" ID="ID_109516152" CREATED="1378364481296" MODIFIED="1378364489198"/>
<node TEXT="Sensar R1 (1999)" ID="ID_597870588" CREATED="1378364489778" MODIFIED="1378364500477"/>
<node TEXT="Iridian Authenticam (2000)" ID="ID_194382892" CREATED="1378364500958" MODIFIED="1378364515365"/>
<node TEXT="Panasonic BM-ET-100 Authenticam (2001)" ID="ID_691310647" CREATED="1378364515805" MODIFIED="1378364534811"/>
<node TEXT="LG 3000 (2001)" ID="ID_426789043" CREATED="1378364535203" MODIFIED="1378364543129"/>
<node TEXT="OKI IrisPass - WG (2002)" ID="ID_1748588523" CREATED="1378364543604" MODIFIED="1378364552958"/>
<node TEXT="Panasonic BM-ET-500 (2002)" ID="ID_1605837256" CREATED="1378364553471" MODIFIED="1378364570829"/>
<node TEXT="IrisGuard H-100 (2003)" ID="ID_1285502165" CREATED="1378364571110" MODIFIED="1378364582809"/>
<node TEXT="Securimetrics Pier (TM) 2.2 (2003)" ID="ID_300183387" CREATED="1378364583260" MODIFIED="1378364599772"/>
<node TEXT="Securimetrics (TM) 2.3 (2003)" ID="ID_1280645955" CREATED="1378364600208" MODIFIED="1378364616448"/>
<node TEXT="OKI IrisPass - H (2004)" ID="ID_1325914336" CREATED="1378364616776" MODIFIED="1378364627227"/>
<node TEXT="Panasonic BM-ET-300 (2004)" ID="ID_523545330" CREATED="1378364627660" MODIFIED="1378364644860"/>
<node TEXT="LG 4000 (2006)" ID="ID_262738476" CREATED="1378364645950" MODIFIED="1378364655578"/>
<node TEXT="OKI IrisPass(R) - M (2005)" ID="ID_58575028" CREATED="1378364656064" MODIFIED="1378364673838"/>
<node TEXT="Sarnoff Corporation Iris On the Move (IOM) (2005)" ID="ID_1221684468" CREATED="1378364674374" MODIFIED="1378364696769"/>
<node TEXT="Securimetrics HIIDE (2005)" ID="ID_755987325" CREATED="1378364697379" MODIFIED="1378364711033"/>
<node TEXT="IriTech Neoris 2000 (2006)" ID="ID_855593181" CREATED="1378364717508" MODIFIED="1378364741318"/>
<node TEXT="Jiris JCP1000 (2006)" ID="ID_209214248" CREATED="1378364742409" MODIFIED="1378364753464"/>
<node TEXT="Panasonic BM-ET-330 (2006)" ID="ID_1965376448" CREATED="1378364753928" MODIFIED="1378364765551"/>
<node TEXT="Global Rainmakers Hbox (2007)" ID="ID_296407658" CREATED="1378364765875" MODIFIED="1378364783158"/>
<node TEXT="Panasonic BM-ET-200 (2007)" ID="ID_110471115" CREATED="1378364783588" MODIFIED="1378364796789"/>
<node TEXT="IrisGuard AD-100 (2008)" ID="ID_1444726576" CREATED="1378364797368" MODIFIED="1378364807101"/>
<node TEXT="Sarnoff/SRI IOM PassPort&#x2122; Portal System" ID="ID_1785792476" CREATED="1378626245724" MODIFIED="1378626700097" LINK="http://www.sri.com/engage/products-solutions/iom-passport-portal-system"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      
    </p>
    <h2 style="line-height: 26px; font-variant: normal; margin-left: 0px; word-spacing: 0px; margin-right: 0px; text-align: start; padding-left: 0px; font-family: arial, helvetica, sans-serif; font-size: 22px; color: rgb(155, 178, 1); white-space: normal; margin-top: 0px; margin-bottom: 10px; font-style: normal; font-weight: normal; text-indent: 0px; padding-bottom: 0px; letter-spacing: normal; padding-right: 0px; padding-top: 0px; text-transform: none">
      Specifications: Indoor IOM PassPort
    </h2>
    <p style="line-height: 1.5em; font-variant: normal; margin-left: 0px; word-spacing: 0px; margin-right: 0px; text-align: start; font-family: arial, helvetica, sans-serif; font-size: 12px; color: rgb(83, 88, 98); white-space: normal; margin-top: 0px; margin-bottom: 0; font-style: normal; font-weight: normal; text-indent: 0px; letter-spacing: normal; text-transform: none">
      <strong>Dimensions &amp; Weight</strong>
    </p>
    <table cellspacing="0" class="spec-table" cellpadding="0" style="line-height: 16px; font-variant: normal; margin-left: 0px; word-spacing: 0px; margin-right: 0px; text-align: start; font-family: arial, helvetica, sans-serif; font-size: 12px; color: rgb(83, 88, 98); white-space: normal; margin-top: 0px; margin-bottom: 0; font-style: normal; font-weight: normal; text-indent: 0px; letter-spacing: normal; width: 606px; text-transform: none" border="0">
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Complete System
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          <p style="line-height: 1.5em; margin-bottom: 0; margin-left: 0px; margin-top: 0px; margin-right: 0px">
            137 cm (W) x 381 cm (D) x 213.35 cm (H), 150 kg<br/>(54 in x 150 in x 84 in, 330 lb)
          </p>
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Camera Cabinet
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          30.5 cm (W) x 45.75 cm (L) x 172.75 cm (H), 34 kg<br/>(12 in x 18 in x 68 in, 75 lb)
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Illuminator Towers (2)
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          35.5 cm (W) x 45.75 cm (L) x 213.35 cm (H), 34 kg<br/>(14 in x 18 in x 84 in, 75 lb)
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Entry Stanchions (2)
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          35.5 cm (W) x 35.5 cm (L) x 101.5 cm (H), 12.5 kg<br/>(14 in x 14 in x 40 in, 27.5 lb)
        </td>
      </tr>
    </table>
    <p style="line-height: 1.5em; font-variant: normal; margin-left: 0px; word-spacing: 0px; margin-right: 0px; text-align: start; font-family: arial, helvetica, sans-serif; font-size: 12px; color: rgb(83, 88, 98); white-space: normal; margin-top: 0px; margin-bottom: 0; font-style: normal; font-weight: normal; text-indent: 0px; letter-spacing: normal; text-transform: none">
      <strong>Performance</strong>
    </p>
    <table class="spec-table" cellspacing="0" cellpadding="0" style="line-height: 16px; font-variant: normal; margin-left: 0px; word-spacing: 0px; margin-right: 0px; text-align: start; font-family: arial, helvetica, sans-serif; font-size: 12px; color: rgb(83, 88, 98); white-space: normal; margin-top: 0px; margin-bottom: 0; font-style: normal; font-weight: normal; text-indent: 0px; letter-spacing: normal; width: 606px; text-transform: none" border="0">
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          <b>Standoff Distance </b>
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          <b>3 m (10 ft)</b>
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          <b>Capture Volume </b>
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          <b>50 cm (W) x 50 cm (H) x 20 cm (D)<br/>(20 in x 20 in x 8 in)</b>
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Iris Identification Speed
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          &lt; 1 sec
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Subject Motion
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Longitudinal
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Throughput
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          30 people per minute
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Power Requirements
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          <p style="line-height: 1.5em; margin-bottom: 0; margin-left: 0px; margin-top: 0px; margin-right: 0px">
            120 VAC; 2 A; 250 W max
          </p>
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Operating Conditions
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          -1&#176; to 38&#176; (30&#176; to 100&#176; F)
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Interface
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Runs standalone or via Ethernet (10/100/1000 Mbps)
        </td>
      </tr>
    </table>
    <span style="float: none; line-height: 16px; font-variant: normal; word-spacing: 0px; text-align: start; font-size: 12px; font-family: arial, helvetica, sans-serif; color: rgb(83, 88, 98); white-space: normal; font-style: normal; font-weight: normal; display: inline !important; text-indent: 0px; letter-spacing: normal; text-transform: none"><font face="arial, helvetica, sans-serif" color="rgb(83, 88, 98)" size="12px">- See more at: http://www.sri.com/engage/products-solutions/iom-passport-portal-system#sthash.oZ6iuii8.dpuf</font></span>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Sarnoff/SRI IOM PassThru&#x2122; Drive-up Iris Recognition System" ID="ID_1963203238" CREATED="1378626700047" MODIFIED="1378626913661"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <h2 style="line-height: 26px; font-variant: normal; margin-left: 0px; word-spacing: 0px; margin-right: 0px; text-align: start; padding-left: 0px; font-family: arial, helvetica, sans-serif; font-size: 22px; color: rgb(155, 178, 1); white-space: normal; margin-top: 0px; margin-bottom: 10px; font-style: normal; font-weight: normal; text-indent: 0px; padding-bottom: 0px; letter-spacing: normal; padding-right: 0px; padding-top: 0px; text-transform: none">
      Specifications
    </h2>
    <table cellspacing="0" class="spec-table" cellpadding="0" style="line-height: 16px; font-variant: normal; margin-left: 0px; word-spacing: 0px; margin-right: 0px; text-align: start; font-family: arial, helvetica, sans-serif; font-size: 12px; color: rgb(83, 88, 98); white-space: normal; margin-top: 0px; margin-bottom: 0; font-style: normal; font-weight: normal; text-indent: 0px; letter-spacing: normal; width: 722px; text-transform: none" border="0">
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Unit Height
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          236 cm (93 in)
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Unit Width<br/>&#160;
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          71 cm (28 in)<br/>&#160;
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Unit Depth
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          76 cm (30 in)
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Weight
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          180 kg (400 lb)<br/><em>including environmental enclosure</em>
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Standoff Distance
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          55 to 90 cm (22 to 36 in)
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Capture Volume
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          30.5 cm (W) x 86 cm (H) x 35 cm (D) (12 in x 34 in x 14 in)
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Iris Identification Speed
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          &lt; 1 sec
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Subject Motion
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Random
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Throughput
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          5 vehicles per minute
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Power Requirements
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          120/240 volts; 10 amps; 1000 watts max
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Operating Conditions
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Temperature: -20&#176; to 50&#176; C (-4&#176; to 122&#176; F) Lighting: Varied<br/>Meets IP67 requirements
        </td>
      </tr>
      <tr style="border-top-width: 1px">
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Interface
        </td>
        <td style="line-height: 16px; padding-left: 0px; font-size: 12px; padding-bottom: 8px; padding-top: 8px; font-family: arial, helvetica, sans-serif; padding-right: 12px">
          Ethernet
        </td>
      </tr>
    </table>
    <span style="float: none; line-height: 16px; font-variant: normal; word-spacing: 0px; text-align: start; font-size: 12px; font-family: arial, helvetica, sans-serif; color: rgb(83, 88, 98); white-space: normal; font-style: normal; font-weight: normal; display: inline !important; text-indent: 0px; letter-spacing: normal; text-transform: none"><font face="arial, helvetica, sans-serif" color="rgb(83, 88, 98)" size="12px">- See more at: http://www.sri.com/engage/products-solutions/iom-pass-thru-drive-up-iris-recognition-system#sthash.uKKeorhw.dpuf</font></span>
  </body>
</html>
</richcontent>
</node>
<node TEXT="I SCAN&#x2122; 2 Dual Iris Capture Scanner from CrossMatch Technologies" ID="ID_434021497" CREATED="1378626913630" MODIFIED="1378627078433"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <a href="http://www.crossmatch.com/i-scan-2.php">http://www.crossmatch.com/i-scan-2.php </a>
    </p>
    <p>
      <a href="http://www.crossmatch.com/i-scan-2.php">
</a>    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="IrisID iCAM 4000 series" ID="ID_1769389787" CREATED="1378627078424" MODIFIED="1378627294334"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <span style="float: none; line-height: 18px; font-variant: normal; word-spacing: 0px; text-align: left; font-family: Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal; color: rgb(68, 68, 68); font-style: normal; font-weight: normal; display: inline !important; text-indent: 0px; letter-spacing: normal; background-color: rgb(255, 255, 255); text-transform: none"><font face="Arial, Helvetica, sans-serif" color="rgb(68, 68, 68)" size="12px">formerly LG Electronics Iris Technology Division</font></span>&#160;<a href="http://www.irisid.com/irisaccess4000">
</a>    </p>
    <p>
      <a href="http://www.irisid.com/irisaccess4000">http://www.irisid.com/irisaccess4000 </a>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="IrisID iCAM 7000 series" ID="ID_1022279607" CREATED="1378627133009" MODIFIED="1378627297132"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <span style="float: none; line-height: 18px; font-variant: normal; word-spacing: 0px; text-align: left; font-family: Arial, Helvetica, sans-serif; font-size: 12px; white-space: normal; color: rgb(68, 68, 68); font-style: normal; font-weight: normal; display: inline !important; text-indent: 0px; letter-spacing: normal; background-color: rgb(255, 255, 255); text-transform: none"><font face="Arial, Helvetica, sans-serif" color="rgb(68, 68, 68)" size="12px">formerly LG Electronics Iris Technology Division</font></span>&#160;<a href="http://www.irisid.com/irisaccess7000">
</a>    </p>
    <p>
      <a href="http://www.irisid.com/irisaccess7000">http://www.irisid.com/irisaccess7000 </a>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="NIST Iris Imaging Platform" ID="ID_1358162062" CREATED="1378850117875" MODIFIED="1378850175750"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      What is the NIST Iris imaging platfrom that Philip D. Wasserman refers to in his slides???
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Standards" FOLDED="true" ID="ID_999887139" CREATED="1378260703302" MODIFIED="1378260705433">
<node TEXT="ISO/IEC 19794-6:2011" FOLDED="true" ID="ID_1268654922" CREATED="1378260731322" MODIFIED="1378850104263"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      <b><font color="#ff6633">IRIS IMAGE DATA FORMAT STANDARD</font></b>
    </p>
    <p>
      
    </p>
    <p>
      <font size="3">Information technology -- Biometric data interchange formats -- Part 6: Iris image data</font>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <b><font size="3">Abstract:</font></b>
    </p>
    <p>
      
    </p>
    <p style="letter-spacing: normal; font-variant: normal; text-align: start; margin-top: 0px; margin-right: 0px; padding-bottom: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; line-height: 19px; border: 0px; padding-right: 0px; vertical-align: baseline; font-size: 14px; font-style: normal; text-indent: 0px; padding-top: 0px; margin-bottom: 0; margin-left: 0px; font-weight: normal; color: rgb(64, 64, 64); padding-left: 0px; word-spacing: 0px; white-space: normal; text-transform: none">
      <font size="3">ISO/IEC 19794-6:2011 specifies iris image interchange formats for biometric enrolment, verification and identification systems. The image information might be stored as </font>
    </p>
    <ul style="letter-spacing: normal; font-variant: normal; text-align: start; margin-top: 0px; margin-right: 0px; padding-bottom: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; line-height: 19px; border: 0px; padding-right: 0px; vertical-align: baseline; font-size: 14px; font-style: normal; text-indent: 0px; padding-top: 0px; margin-bottom: 0; margin-left: -10px; font-weight: normal; color: rgb(64, 64, 64); padding-left: 24px; word-spacing: 0px; white-space: normal; text-transform: none">
      <li style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; vertical-align: baseline; padding-right: 0px; margin-top: 0px; font-size: inherit; border: 0px; font-variant: inherit; line-height: inherit; padding-bottom: 0px; font-family: inherit; font-weight: normal; font-style: inherit; padding-top: 0px; padding-left: 0px">
        <font size="3">an array of intensity values optionally compressed with ISO/IEC 15948 or ISO/IEC 15444, or </font>
      </li>
      <li style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; vertical-align: baseline; padding-right: 0px; margin-top: 0px; font-size: inherit; border: 0px; font-variant: inherit; line-height: inherit; padding-bottom: 0px; font-family: inherit; font-weight: normal; font-style: inherit; padding-top: 0px; padding-left: 0px">
        <font size="3">an array of intensity values optionally compressed with ISO/IEC 15948 or ISO/IEC 15444 that might be cropped around the iris, with the iris at the centre, and which might incorporate region-of-interest masking of non-iris regions. </font>
      </li>
    </ul>
    <p style="letter-spacing: normal; font-variant: normal; text-align: start; margin-top: 0px; margin-right: 0px; padding-bottom: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; line-height: 19px; border: 0px; padding-right: 0px; vertical-align: baseline; font-size: 14px; font-style: normal; text-indent: 0px; padding-top: 0px; margin-bottom: 0; margin-left: 0px; font-weight: normal; color: rgb(64, 64, 64); padding-left: 0px; word-spacing: 0px; white-space: normal; text-transform: none">
      
    </p>
    <p style="letter-spacing: normal; font-variant: normal; text-align: start; margin-top: 0px; margin-right: 0px; padding-bottom: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; line-height: 19px; border: 0px; padding-right: 0px; vertical-align: baseline; font-size: 14px; font-style: normal; text-indent: 0px; padding-top: 0px; margin-bottom: 0; margin-left: 0px; font-weight: normal; color: rgb(64, 64, 64); padding-left: 0px; word-spacing: 0px; white-space: normal; text-transform: none">
      <font size="3">ISO/IEC 19794-6:2011 </font><font size="3" color="#ff0000">does not establish</font>
    </p>
    <ul style="letter-spacing: normal; font-variant: normal; text-align: start; margin-top: 0px; margin-right: 0px; padding-bottom: 0px; font-family: Helvetica Neue, Helvetica, Arial, sans-serif; line-height: 19px; border: 0px; padding-right: 0px; vertical-align: baseline; font-size: 14px; font-style: normal; text-indent: 0px; padding-top: 0px; margin-bottom: 0; margin-left: -10px; font-weight: normal; color: rgb(64, 64, 64); padding-left: 24px; word-spacing: 0px; white-space: normal; text-transform: none">
      <li style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; vertical-align: baseline; padding-right: 0px; margin-top: 0px; font-size: inherit; border: 0px; font-variant: inherit; line-height: inherit; padding-bottom: 0px; font-family: inherit; font-weight: normal; font-style: inherit; padding-top: 0px; padding-left: 0px">
        <font size="3">requirements on the optical specifications of cameras, </font>
      </li>
      <li style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; vertical-align: baseline; padding-right: 0px; margin-top: 0px; font-size: inherit; border: 0px; font-variant: inherit; line-height: inherit; padding-bottom: 0px; font-family: inherit; font-weight: normal; font-style: inherit; padding-top: 0px; padding-left: 0px">
        <font size="3">requirements on photometric properties of iris images, or </font>
      </li>
      <li style="margin-right: 0px; margin-bottom: 0px; margin-left: 0px; vertical-align: baseline; padding-right: 0px; margin-top: 0px; font-size: inherit; border: 0px; font-variant: inherit; line-height: inherit; padding-bottom: 0px; font-family: inherit; font-weight: normal; font-style: inherit; padding-top: 0px; padding-left: 0px">
        <font size="3">requirements on enrolment processes, workflow and use of iris equipment.</font>
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <font size="3">However, according to &quot;Depth of Field for Forensic Biometric Imaging,&quot; by Philip D. Wasserman of NIST, the ISO/IEC19794-6 Iris image data, Annex A, Iris image capture, states that the MTF is specified as a minimum of 60% response at 2 to 4 line pairs per millimeter, ( lp/mm)</font>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="ISO/IEC19794-6 Iris image data, Annex A, Iris image capture" ID="ID_723812311" CREATED="1378270363383" MODIFIED="1378270374554"/>
</node>
<node TEXT="ISO/IEC 29794&#x2010;6" FOLDED="true" ID="ID_1936399991" CREATED="1378310746980" MODIFIED="1378314244944"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      iris&#160;image&#160;quality&#160;standard&#160;(SC&#160;37&#160;N&#160;3331)
    </p>
    <p>
      
    </p>
    <p>
      Iris&#160;image&#160;quality&#160;standard&#160;establishing&#160;normative&#160;requirements&#160;on&#160;iris&#160;images&#160;and&#160;<b><font color="#ff0000">thereby&#160;requirements&#160;on&#160;cameras</font></b>.&#160;&#160;Expected&#160;completion:&#160;Late&#160;2012.
    </p>
    <p>
      ----------
    </p>
    <p>
      
    </p>
    <p>
      ISO/IEC 29794 is a Multi&#8208;part&#160;biometric&#160;sample&#160;quality&#160;standard.
    </p>
    <p>
      Part - 1: Framework
    </p>
    <p>
      Part - 4: Finger Image Data
    </p>
    <p>
      Part - 5: Face Image Data
    </p>
    <p>
      Part - 6: Iris Image Data
    </p>
    <p>
      ----------
    </p>
    <p>
      Part -6, Iris image quality standard, Initiated by ISO/IEC&#160;JTC&#160;1&#160;SC&#160;37 in&#160;July&#160;2009
    </p>
    <p>
      --------
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <b>Scope ::</b>&#160;iris&#160;image&#160;sample&#160;quality&#160;document&#160;establishes
    </p>
    <p>
      - terms&#160;and&#160;definitions&#160;that&#160;are&#160;&#160;useful&#160;in&#160;the&#160;specification,&#160;characterization&#160; and&#160;test&#160;of&#160;iris&#160;image&#160;quality,
    </p>
    <p>
      - methods&#160;used&#160;to&#160;characterize&#160;and&#160;assess&#160;the&#160;quality&#160;of&#160;iris&#160;images,
    </p>
    <p>
      - normative&#160;requirements&#160;on&#160;software&#160;and&#160;hardware&#160;producing&#160;an&#160;iris&#160;image,&#160; and
    </p>
    <p>
      - normative&#160;requirements&#160;on&#160;software&#160;and&#160;hardware&#160;measuring&#160;utility&#160;of&#160;iris&#160; images.
    </p>
    <p>
      
    </p>
    <p>
      Outside&#160;the&#160;scope&#160;are
    </p>
    <p>
      - performance&#160;assessment&#160;of&#160;specific&#160;quality&#160;algorithms,&#160;and
    </p>
    <p>
      - standardization&#160;of&#160;specific&#160;quality&#160;algorithms.&#160;
    </p>
    <p>
      &#8230;&#160;is&#160;organized&#160;by&#160;the&#160;distinction&#160;of&#160;quality&#160;covariates&#160;related&#160;to:&#160;1)&#160;the&#160;design&#160;and&#160; implementation&#160;of&#160;the&#160;image&#160;acquisition&#160;equipment&#160;and&#160;environment&#160;(6.2),&#160; and&#160;2)&#160;subject&#8208;specific&#160;or&#160;subject&#8208;influenced/controlled&#160;factors&#160;6.3).
    </p>
    <p>
      
    </p>
    <p>
      Source: Presentation by Elham tabassi, NIST, 2009 [<a href="http://biometrics.org/bc2009/presentations/tuesday/Tabassi%20MR%2014%20Tue%20935-1000.pdf">http://biometrics.org/bc2009/presentations/tuesday/Tabassi%20MR%2014%20Tue%20935-1000.pdf</a>]
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Initiated by ISO/IEC JTC 1 SC 37 (SC 37 N 3331) in July 2009" ID="ID_732985013" CREATED="1378310828679" MODIFIED="1378312750018"/>
<node TEXT="Scope" FOLDED="true" ID="ID_1723420860" CREATED="1378312751391" MODIFIED="1378312752934">
<node TEXT="Iris image quality standard" ID="ID_1562004434" CREATED="1378312755039" MODIFIED="1378312756574"/>
</node>
<node TEXT="covariates" FOLDED="true" ID="ID_1818826932" CREATED="1378312966737" MODIFIED="1378313025597"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p style="text-align: start; line-height: 19.192707061767578px; margin-right: 0px; background-color: rgb(255, 255, 255); letter-spacing: normal; font-style: normal; font-size: 12.499999046325684px; text-transform: none; font-family: sans-serif; margin-bottom: 0; margin-top: 0; font-weight: normal; color: rgb(0, 0, 0); text-indent: 0px; margin-left: 0px; font-variant: normal; white-space: normal; word-spacing: 0px">
      In<span class="Apple-converted-space">&#160;</span><a title="Statistics" style="background-position: initial initial; text-decoration: none; background-repeat: repeat; color: rgb(11, 0, 128); background-image: none" href="http://en.wikipedia.org/wiki/Statistics"><font color="rgb(11, 0, 128)">statistics</font></a>, a<span class="Apple-converted-space">&#160;</span><b>covariate</b><span class="Apple-converted-space">&#160;</span>is a variable that is possibly predictive of the outcome under study. A covariate may be of direct interest or it may be a<span class="Apple-converted-space">&#160;</span><a title="Confounding" style="background-position: initial initial; text-decoration: none; background-repeat: repeat; color: rgb(11, 0, 128); background-image: none" href="http://en.wikipedia.org/wiki/Confounding"><font color="rgb(11, 0, 128)">confounding</font></a><span class="Apple-converted-space">&#160;</span>or<a title="Interaction (statistics)" style="background-position: initial initial; text-decoration: none; background-repeat: repeat; color: rgb(11, 0, 128); background-image: none" href="http://en.wikipedia.org/wiki/Interaction_(statistics)"><font color="rgb(11, 0, 128)">interacting</font></a><span class="Apple-converted-space">&#160;</span>variable.
    </p>
    <p style="text-align: start; line-height: 19.192707061767578px; margin-right: 0px; background-color: rgb(255, 255, 255); letter-spacing: normal; font-style: normal; font-size: 12.499999046325684px; text-transform: none; font-family: sans-serif; margin-bottom: 0; margin-top: 0; font-weight: normal; color: rgb(0, 0, 0); text-indent: 0px; margin-left: 0px; font-variant: normal; white-space: normal; word-spacing: 0px">
      The alternative terms<span class="Apple-converted-space">&#160;</span><a title="Explanatory variable" style="background-position: initial initial; text-decoration: none; background-repeat: repeat; color: rgb(11, 0, 128); background-image: none" class="mw-redirect" href="http://en.wikipedia.org/wiki/Explanatory_variable"><font color="rgb(11, 0, 128)">explanatory variable</font></a>,<span class="Apple-converted-space">&#160;</span><a title="Independent variable" style="background-position: initial initial; text-decoration: none; background-repeat: repeat; color: rgb(11, 0, 128); background-image: none" class="mw-redirect" href="http://en.wikipedia.org/wiki/Independent_variable"><font color="rgb(11, 0, 128)">independent variable</font></a>, or predictor, are used in a<span class="Apple-converted-space">&#160;</span><a title="Regression analysis" style="background-position: initial initial; text-decoration: none; background-repeat: repeat; color: rgb(11, 0, 128); background-image: none" href="http://en.wikipedia.org/wiki/Regression_analysis"><font color="rgb(11, 0, 128)">regression analysis</font></a>.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Iris acquisition covariates" FOLDED="true" ID="ID_1166276788" CREATED="1378313025576" MODIFIED="1378313746878"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The flowers indicate the specific covariates that may be important to consider from my thesis perspective.
    </p>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Dedicated illumination" ID="ID_708787245" CREATED="1378313041538" MODIFIED="1378313340511">
<edge WIDTH="thin"/>
</node>
<node TEXT="Defocus" ID="ID_451313258" CREATED="1378313047907" MODIFIED="1378313999419">
<icon BUILTIN="licq"/>
<icon BUILTIN="yes"/>
<icon BUILTIN="xmag"/>
<edge WIDTH="thin"/>
</node>
<node TEXT="Dynamic range" ID="ID_1266644296" CREATED="1378313050158" MODIFIED="1378313355178">
<edge WIDTH="thin"/>
</node>
<node TEXT="Motion blur" ID="ID_705524610" CREATED="1378313054526" MODIFIED="1378313357685">
<edge WIDTH="thin"/>
</node>
<node TEXT="Noise (or camera sensitivity)" ID="ID_88921125" CREATED="1378313057665" MODIFIED="1378313360549">
<edge WIDTH="thin"/>
</node>
<node TEXT="Occlusion due to specular reflections" ID="ID_1696355352" CREATED="1378313066209" MODIFIED="1378313362710">
<edge WIDTH="thin"/>
</node>
<node TEXT="Optical distortion" ID="ID_221692391" CREATED="1378313077251" MODIFIED="1378313978911">
<icon BUILTIN="licq"/>
<icon BUILTIN="yes"/>
<icon BUILTIN="xmag"/>
<edge WIDTH="thin"/>
</node>
<node TEXT="Optical Resolution" ID="ID_1213038801" CREATED="1378313083931" MODIFIED="1378313971173">
<icon BUILTIN="licq"/>
<icon BUILTIN="yes"/>
<icon BUILTIN="xmag"/>
<edge WIDTH="thin"/>
</node>
<node TEXT="Pixel aspect ratio" ID="ID_330168889" CREATED="1378313088139" MODIFIED="1378313369515">
<edge WIDTH="thin"/>
</node>
<node TEXT="Pixel sampling" ID="ID_294118198" CREATED="1378313094482" MODIFIED="1378313991715">
<icon BUILTIN="licq"/>
<icon BUILTIN="yes"/>
<icon BUILTIN="xmag"/>
<edge WIDTH="thin"/>
</node>
</node>
<node TEXT="Iris subject covariates" FOLDED="true" ID="ID_1373206911" CREATED="1378313031666" MODIFIED="1378313038184">
<node TEXT="Deviation from circularity in iris-sclera border and iris-pupil border" ID="ID_38149654" CREATED="1378313404023" MODIFIED="1378313551593">
<icon BUILTIN="licq"/>
<edge WIDTH="thin"/>
</node>
<node TEXT="Eye color" ID="ID_1665613428" CREATED="1378313436090" MODIFIED="1378313512594">
<edge WIDTH="thin"/>
</node>
<node TEXT="Eye wear" ID="ID_1129623718" CREATED="1378313439446" MODIFIED="1378313515801">
<edge WIDTH="thin"/>
</node>
<node TEXT="Intrinsic iris-pupil contrast" ID="ID_1597157253" CREATED="1378313443604" MODIFIED="1378313519026">
<edge WIDTH="thin"/>
</node>
<node TEXT="Intrinsic iris-sclera constrast" ID="ID_171281709" CREATED="1378313456628" MODIFIED="1378313522407">
<edge WIDTH="thin"/>
</node>
<node TEXT="Occlusion due to eyelash/eyelid" ID="ID_544141997" CREATED="1378313466597" MODIFIED="1378313525056">
<edge WIDTH="thin"/>
</node>
<node TEXT="Off-axis Orientation - head rotation" ID="ID_81297430" CREATED="1378313476893" MODIFIED="1378313528071">
<edge WIDTH="thin"/>
</node>
<node TEXT="Off-axis Orientation - sight direction" ID="ID_1352257748" CREATED="1378313485847" MODIFIED="1378313568562">
<icon BUILTIN="licq"/>
<edge WIDTH="thin"/>
</node>
<node TEXT="Pupil size" ID="ID_501058903" CREATED="1378313500708" MODIFIED="1378313578215">
<icon BUILTIN="licq"/>
<edge WIDTH="thin"/>
</node>
</node>
</node>
<node TEXT="quality metrics" FOLDED="true" ID="ID_170214606" CREATED="1378313757771" MODIFIED="1378313765864">
<node TEXT="Contrast" ID="ID_95132534" CREATED="1378313784304" MODIFIED="1378313894852">
<edge WIDTH="thin"/>
</node>
<node TEXT="Gray scale density" ID="ID_1410654062" CREATED="1378313787887" MODIFIED="1378314454308">
<edge WIDTH="thin"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Also called &quot;gray scale utilization&quot;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Image scale" ID="ID_1499004085" CREATED="1378313794341" MODIFIED="1378313899088">
<edge WIDTH="thin"/>
</node>
<node TEXT="Image orientation - head rotation" ID="ID_1458198708" CREATED="1378313798041" MODIFIED="1378314553322">
<icon BUILTIN="licq"/>
<edge WIDTH="thin"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Frontal gaze - azimuth, polar, roll (6.2.1-3)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Image orientation - sight direction" ID="ID_201666277" CREATED="1378313806844" MODIFIED="1378313901690">
<edge WIDTH="thin"/>
</node>
<node TEXT="Iris boundary shape" ID="ID_211746083" CREATED="1378313815337" MODIFIED="1378313903014">
<edge WIDTH="thin"/>
</node>
<node TEXT="Motion blur" ID="ID_418705058" CREATED="1378313821083" MODIFIED="1378313904182">
<edge WIDTH="thin"/>
</node>
<node TEXT="Pupil to iris ratio (6.2.14)" ID="ID_166520804" CREATED="1378313824481" MODIFIED="1378314511956">
<edge WIDTH="thin"/>
</node>
<node TEXT="Sharpness (6.2.15)" ID="ID_341076936" CREATED="1378313833258" MODIFIED="1378314524330">
<icon BUILTIN="licq"/>
<icon BUILTIN="yes"/>
<edge WIDTH="thin"/>
</node>
<node TEXT="Signal-to-noise ratio" ID="ID_1967334641" CREATED="1378313837706" MODIFIED="1378313908044">
<edge WIDTH="thin"/>
</node>
<node TEXT="Usable iris area" ID="ID_983126801" CREATED="1378313847011" MODIFIED="1378313909291">
<edge WIDTH="thin"/>
</node>
<node TEXT="Dilation variation (computed from 2 images)" ID="ID_492016192" CREATED="1378313860007" MODIFIED="1378314298399">
<edge WIDTH="thin"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Also called &quot;Dilation constancy&quot;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Illumination variation (computed from 2 images)" ID="ID_1752630266" CREATED="1378313874528" MODIFIED="1378314283804">
<edge WIDTH="thin"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Also called &quot;illumination similarity&quot;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Common usable iris area (computed from 2 images)" ID="ID_605391696" CREATED="1378313884476" MODIFIED="1378314327147">
<edge WIDTH="thin"/>
</node>
</node>
</node>
<node TEXT="ANSI INCITS 379-2004" ID="ID_1901705014" CREATED="1378262504077" MODIFIED="1378264167342"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff6633">IRIS IMAGE DATA FORMAT STANDARD </font></b>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <a href="https://www.rkb.us/standarddetail.cfm?standard_id=283">https://www.rkb.us/standarddetail.cfm?standard_id=283 </a>
    </p>
    <p>
      <a href="https://www.rkb.us/standarddetail.cfm?standard_id=283">
</a>    </p>
    <p>
      <a href="https://www.rkb.us/standarddetail.cfm?standard_id=283">
</a>    </p>
    <p>
      <span style="font-variant: normal; font-weight: normal; white-space: normal; text-indent: 0px; word-spacing: 0px; float: none; color: rgb(51, 51, 51); font-family: arial, helvetica, sans-serif; font-style: normal; line-height: normal; text-align: start; font-size: 12px; background-color: rgb(255, 255, 255); text-transform: none; letter-spacing: normal; display: inline !important"><font size="12px" color="rgb(51, 51, 51)" face="arial, helvetica, sans-serif">This Standard specifies two alternative image interchange formats for biometric authentication systems that utilize iris recognition. The first is based on a rectilinear image storage format that may be a raw, uncompressed array of intensity values or a compressed format such as that specified by the JPEG standard. Images may be monochrome or color with 256 or more intensity levels (grey or per-color), and vary in size depending on field of view and compression. Typical size is 25 -30 Kbytes for JPEG format.</font></span>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="IQCE" FOLDED="true" ID="ID_1172412698" CREATED="1378309965260" MODIFIED="1378311554241"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <h2 style="text-align: start; line-height: 24px; background-color: rgb(255, 255, 255); letter-spacing: normal; font-style: normal; font-size: 1.8em; text-transform: none; font-family: Arial, Helvetica, sans-serif; margin-bottom: 0px; margin-top: 0px; font-weight: normal; color: rgb(0, 0, 0); text-indent: 0px; font-variant: normal; white-space: normal; word-spacing: 0px">
      <font face="Tahoma" size="2">Iris Image Quality Evaluation and Calibration (IQCE) </font>
    </h2>
    <p>
      
    </p>
    <p>
      <font face="Tahoma" size="2">by NIST, this </font><font size="2" face="Tahoma" color="rgb(0, 0, 0)"><span style="line-height: 19px; text-align: start; background-color: rgb(255, 255, 255); letter-spacing: normal; float: none; font-style: normal; font-size: 12px; text-transform: none; font-family: Arial, Helvetica, sans-serif; font-weight: normal; color: rgb(0, 0, 0); text-indent: 0px; font-variant: normal; white-space: normal; display: inline !important; word-spacing: 0px">standard addresses Iris quality </span></font>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <font size="12px" face="Arial, Helvetica, sans-serif" color="rgb(0, 0, 0)"><span style="line-height: 19px; text-align: start; background-color: rgb(255, 255, 255); letter-spacing: normal; float: none; font-style: normal; font-size: 12px; text-transform: none; font-family: Arial, Helvetica, sans-serif; font-weight: normal; color: rgb(0, 0, 0); text-indent: 0px; font-variant: normal; white-space: normal; display: inline !important; word-spacing: 0px">The current working draft (SC 37 N 3331) [of </span><span class="Apple-converted-space">&#160;</span><span style="line-height: 19px; text-align: start; background-color: rgb(255, 255, 255); letter-spacing: normal; float: none; font-style: normal; font-size: 12px; text-transform: none; font-family: Arial, Helvetica, sans-serif; font-weight: normal; color: rgb(0, 0, 0); text-indent: 0px; font-variant: normal; white-space: normal; display: inline !important; word-spacing: 0px">ISO/IEC 29794-Biometric sample quality &#8211; Part 6: Iris image data ??</span><span style="line-height: 19px; text-align: start; background-color: rgb(255, 255, 255); letter-spacing: normal; float: none; font-style: normal; font-size: 12px; text-transform: none; font-family: Arial, Helvetica, sans-serif; font-weight: normal; color: rgb(0, 0, 0); text-indent: 0px; font-variant: normal; white-space: normal; display: inline !important; word-spacing: 0px">] defines 21 subject or image covariates and 12 metrics for assessing the utility of an iris image. The 12 quality metrics are mostly quantification of the covariates. IQCE will evaluate the influence of these quality metrics on iris recognition accuracy. In addition, any measure identified as being influential on accuracy will be considered. The outcome will be a refined list of quality metrics with tolerance bounds for each. </span></font>
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <font size="12px" face="Arial, Helvetica, sans-serif" color="rgb(0, 0, 0)"><span style="line-height: 19px; text-align: start; background-color: rgb(255, 255, 255); letter-spacing: normal; float: none; font-style: normal; font-size: 12px; text-transform: none; font-family: Arial, Helvetica, sans-serif; font-weight: normal; color: rgb(0, 0, 0); text-indent: 0px; font-variant: normal; white-space: normal; display: inline !important; word-spacing: 0px">Furthermore, IQCE will establish precise methods for measuring each metric. This ensures development of a clear, tested and implementable iris image quality by excluding or avoiding any over-prescriptive and non-testable statements. </span></font><b><span style="line-height: 19px; text-align: start; background-color: rgb(255, 255, 255); letter-spacing: normal; float: none; font-style: normal; font-size: 12px; text-transform: none; font-family: Arial, Helvetica, sans-serif; font-weight: normal; color: rgb(0, 0, 0); text-indent: 0px; font-variant: normal; white-space: normal; display: inline !important; word-spacing: 0px"><font size="2" face="Tahoma" color="#ff0000">The overall effect of IQCE and the ISO/IEC 29794-6 standard will be to validate and support camera imaging properties and system design.</font></span></b><font size="2" face="Tahoma" color="rgb(0, 0, 0)"><br face="Tahoma" align="start" style="line-height: 19px; background-color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none; text-indent: 0px; font-variant: normal; white-space: normal; word-spacing: 0px" size="2"/><br face="Tahoma" align="start" style="line-height: 19px; background-color: rgb(255, 255, 255); letter-spacing: normal; text-transform: none; text-indent: 0px; font-variant: normal; white-space: normal; word-spacing: 0px" size="2"/></font><font size="12px" face="Arial, Helvetica, sans-serif" color="rgb(0, 0, 0)"><span style="line-height: 19px; text-align: start; background-color: rgb(255, 255, 255); letter-spacing: normal; float: none; font-style: normal; font-size: 12px; text-transform: none; font-family: Arial, Helvetica, sans-serif; font-weight: normal; color: rgb(0, 0, 0); text-indent: 0px; font-variant: normal; white-space: normal; display: inline !important; word-spacing: 0px">In addition, IQCE aims to evaluate the effectiveness of image quality assessment algorithms (IQAAs) that produce a scalar overall image quality in predicting the recognition accuracy of particular comparison algorithms (from the supplier of the IQAA), and of other algorithms. Per the IREX I result that quality scores are not immediately interoperable, IQCE will establish a score calibration procedure for IQAAs.</span></font>
    </p>
  </body>
</html>
</richcontent>
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="80" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_126569863" STARTINCLINATION="18;15;" ENDINCLINATION="-63;-21;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<node TEXT="Image Quality Evaluation and Calibration" ID="ID_1202442831" CREATED="1378311066072" MODIFIED="1378311068812"/>
</node>
<node TEXT="IREX (NIST Iris Exchange program)" FOLDED="true" ID="ID_157028288" CREATED="1378310975905" MODIFIED="1378311937538"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <a href="http://www.nist.gov/itl/iad/ig/irex.cfm">http://www.nist.gov/itl/iad/ig/irex.cfm </a>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="IREX I" ID="ID_650211934" CREATED="1378310989857" MODIFIED="1378311517000"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <ul>
      <li>
        Formats, cropping, masking
      </li>
      <li>
        Compression limits
      </li>
      <li>
        Geometry, Margins, Radius
      </li>
      <li>
        Dilation, concentricity
      </li>
      <li>
        Concluded mid 2009
      </li>
      <li>
        Supported ISO/IEC 19794E6
      </li>
    </ul>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="IREX II" FOLDED="true" ID="ID_126569863" CREATED="1378311352345" MODIFIED="1378311717722"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <ul>
      <li>
        Iris Image Quality

        <ul>
          <li>
            De&#64257;nition
          </li>
          <li>
            Evaluation
          </li>
          <li>
            Calibration
          </li>
        </ul>
      </li>
    </ul>
    <ul>
      <li>
        Supporting ISO/IEC 29794E6
      </li>
      <li>
        Evaluation Report NIST IR 909622
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="IQCE" ID="ID_678900929" CREATED="1378311561064" MODIFIED="1378313540190">
<edge WIDTH="thin"/>
</node>
</node>
<node TEXT="IREX III" ID="ID_1303368593" CREATED="1378311355157" MODIFIED="1378311812684"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <ul>
      <li>
        1:N with N in the millions
      </li>
      <li>
        One and two eyes
      </li>
      <li>
        Cross camera interop.
      </li>
      <li>
        Timeline
      </li>
      <li>
        Started February 2011
      </li>
      <li>
        Report Fall 2011
      </li>
    </ul>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Iris Image Quality Evaluation Reading material" FOLDED="true" ID="ID_1925785" CREATED="1378312022320" MODIFIED="1378312033988">
<node TEXT="http://www.nist.gov/itl/iad/ig/iris_image_qual_reading.cfm" ID="ID_1089709462" CREATED="1378312035308" MODIFIED="1378312037637"/>
</node>
</node>
<node TEXT="misc" FOLDED="true" ID="ID_261685521" CREATED="1378346162268" MODIFIED="1378346164173">
<node TEXT="Iris synthesis" FOLDED="true" ID="ID_1987106010" CREATED="1378346166490" MODIFIED="1378349885615"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <b>QUOTE:</b>
    </p>
    <p>
      When generating synthetic iris images, the problem that one faces is to de&#64257;ne a measure of &#8220;realism.&#8221;
    </p>
    <p>
      What is the set of requirements that a synthetic iris has to satisfy to be recognized and treated as a physically collected iris image?
    </p>
    <p>
      The conclusion could be:
    </p>
    <p>
      (1) it should look like a real iris;
    </p>
    <p>
      (2) it should have the statistical characteristics of a real iris. Real iris patterns are so anatomically complex that it is nearly impossible to mathematically describe any particular one.
    </p>
    <p>
      UNQUOTE [On Generation and Analysis of Synthetic Iris Images]
    </p>
  </body>
</html>
</richcontent>
<node TEXT="PCA based" FOLDED="true" ID="ID_1158954363" CREATED="1378346183449" MODIFIED="1378346186234">
<node TEXT="Generate PCA from iris images" ID="ID_1558944073" CREATED="1378346187429" MODIFIED="1378346216366"/>
<node TEXT="Create low resolution &quot;iris&quot; patterns using the principle components" ID="ID_1774632043" CREATED="1378346216841" MODIFIED="1378346249093"/>
<node TEXT="Use super-resolution to create a higher resolution Iris image" ID="ID_1616097244" CREATED="1378346249522" MODIFIED="1378346263620"/>
</node>
<node TEXT="Markov Random Fields" ID="ID_1096359356" CREATED="1378346266867" MODIFIED="1378346273852"/>
<node TEXT="Model based, anatomy based" ID="ID_1260827053" CREATED="1378346274443" MODIFIED="1378346281362"/>
</node>
<node TEXT="Iris spoofing" ID="ID_351277745" CREATED="1378346177949" MODIFIED="1378346180450"/>
</node>
</node>
<node TEXT="Grand Challenges and Evaluations" POSITION="left" ID="ID_1882329316" CREATED="1378147878923" MODIFIED="1378147890636">
<edge COLOR="#7c007c"/>
<node TEXT="ICE 2005" FOLDED="true" ID="ID_1267991534" CREATED="1378147892045" MODIFIED="1378147894914">
<node TEXT="The primary goals of the ICE projects were to promote the development and advancement of iris recognition technology and assess its state-of-the-art capability.The ICE projects were open to academia, industry and research institutes." ID="ID_1977278746" CREATED="1378147853778" MODIFIED="1378161611854" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2008_The%20iris%20challenge%20evaluation%202005_Phillips%20et%20al..pdf" MOVED="1378147919915">
<pdf_annotation type="BOOKMARK" page="1" object_number="225" generation_number="0" document_hash="F4396E459693A2D4B9F35667BF4C2ADAC6E34B3452163DACF4CD2164637B0">
    <pdf_title>The Iris Challenge Evaluation 2005</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The Iris Challenge Evaluation (ICE) 2005 was the &#xfb01;rst iris recognition challenge problem and was modeled after the Face Recognition Grand Challenge" ID="ID_1565045320" CREATED="1378147853915" MODIFIED="1378147853915" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2008_The%20iris%20challenge%20evaluation%202005_Phillips%20et%20al..pdf" MOVED="1378147927499">
<pdf_annotation type="BOOKMARK" page="1" object_number="223" generation_number="0" document_hash="F4396E459693A2D4B9F35667BF4C2ADAC6E34B3452163DACF4CD2164637B0">
    <pdf_title>The Iris Challenge Evaluation 2005</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="ICE 2006" ID="ID_1375438638" CREATED="1378148075179" MODIFIED="1378148078113"/>
<node TEXT="Multiple Biometrics Grand Challenge (MBGC)" ID="ID_1495451865" CREATED="1378157492603" MODIFIED="1378157509368"/>
<node TEXT="Algorithms provided" FOLDED="true" ID="ID_1666198953" CREATED="1378157340044" MODIFIED="1378157346537">
<node TEXT="IrisBee baseline algorithm" FOLDED="true" ID="ID_11238150" CREATED="1378157358104" MODIFIED="1378160693536">
<node TEXT="Iris Biometric Evaluation Environment" ID="ID_1853145793" CREATED="1378178219108" MODIFIED="1378178222666"/>
<node TEXT=" IrisBEE, based on Masek&#x2019;s algorithm [2][4], was originally developed at NIST to be used as a reference implementation for such a classical-still-based iris recognition" ID="ID_361718948" CREATED="1378160628198" MODIFIED="1378160628199" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Robust%20iris%20recognition%20baseline%20for%20the%20grand%20cha_Lee%20et%20al..pdf" MOVED="1378160681238">
<pdf_annotation type="BOOKMARK" page="4" object_number="153" generation_number="0" document_hash="EFDFC06A9F837385B15E2DACB8C18589F5A373B790421355E96FC21A918">
    <pdf_title>Robust Iris Recognition Baseline for the Grand Challenge</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="ICE 2006 Algorithm B" FOLDED="true" ID="ID_1996711081" CREATED="1378157379743" MODIFIED="1378157388574">
<node TEXT="Also known as the Cambridge Cam-2 Algorithm?" ID="ID_305312376" CREATED="1378157416750" MODIFIED="1378157428758"/>
</node>
<node TEXT="VeriEye" ID="ID_1627275342" CREATED="1378157389373" MODIFIED="1378157392059"/>
<node TEXT="VASIR ((Video-based Automated System for Iris Recognition)" FOLDED="true" ID="ID_245353408" CREATED="1378158078789" MODIFIED="1378158114701">
<node TEXT=" VASIR was developed with less constrained distant-video-based iris recognition in mind." ID="ID_1388899465" CREATED="1378160628130" MODIFIED="1378160628130" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Robust%20iris%20recognition%20baseline%20for%20the%20grand%20cha_Lee%20et%20al..pdf" MOVED="1378160716799">
<pdf_annotation type="BOOKMARK" page="5" object_number="155" generation_number="0" document_hash="EFDFC06A9F837385B15E2DACB8C18589F5A373B790421355E96FC21A918">
    <pdf_title>Robust Iris Recognition Baseline for the Grand Challenge</pdf_title>
</pdf_annotation>
</node>
<node TEXT="VASIR also robustly allows performing classical-still to classical-still (SvsS),  distant-video  to  classical-still  (VvsS),  and  distant-video  to  distant-video  (VvsV)  iris recognition" ID="ID_384093792" CREATED="1378160628149" MODIFIED="1378160628149" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Robust%20iris%20recognition%20baseline%20for%20the%20grand%20cha_Lee%20et%20al..pdf" MOVED="1378160734097">
<pdf_annotation type="BOOKMARK" page="5" object_number="156" generation_number="0" document_hash="EFDFC06A9F837385B15E2DACB8C18589F5A373B790421355E96FC21A918">
    <pdf_title>Robust Iris Recognition Baseline for the Grand Challenge</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Normalization" FOLDED="true" ID="ID_330941124" CREATED="1378160847526" MODIFIED="1378160851272">
<node TEXT="[VASIR] To  facilitate  comparing  two  iris  images,  Daugman&#x2019;s  polar  coordinate-based  system  [5]  is  then employed  to  normalize  the  iris  region.  The  1D-Log-Gabor  Filter  is  used  to  process  the  feature extracting and feature encoding of the normalized iris images, as introduced by Yao et al [6]. VASIR was developed with the normalization and feature extraction based on Masek&#x2019;s algorithm [4]" ID="ID_1643625275" CREATED="1378160628215" MODIFIED="1378160628216" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Robust%20iris%20recognition%20baseline%20for%20the%20grand%20cha_Lee%20et%20al..pdf" MOVED="1378160900040">
<pdf_annotation type="BOOKMARK" page="6" object_number="161" generation_number="0" document_hash="EFDFC06A9F837385B15E2DACB8C18589F5A373B790421355E96FC21A918">
    <pdf_title>Robust Iris Recognition Baseline for the Grand Challenge</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Segmentation" FOLDED="true" ID="ID_259356965" CREATED="1378160851793" MODIFIED="1378160856991">
<node TEXT="Segmentation @ VASIR  now  applies  a  Gaussian  filter  to  the  binary  threshold  image  and  uses  morphological opening and closing later on. " ID="ID_1573243729" CREATED="1378160628286" MODIFIED="1378160628287" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Robust%20iris%20recognition%20baseline%20for%20the%20grand%20cha_Lee%20et%20al..pdf" MOVED="1378160868486">
<pdf_annotation type="BOOKMARK" page="8" object_number="162" generation_number="0" document_hash="EFDFC06A9F837385B15E2DACB8C18589F5A373B790421355E96FC21A918">
    <pdf_title>Robust Iris Recognition Baseline for the Grand Challenge</pdf_title>
</pdf_annotation>
</node>
<node TEXT="The iris boundary is segmented by using a circular Hough transform initially applied by Wildes et al [9]. We use the information of the detected pupil circle as a reference to detect the iris boundary. The eyelid curves are segmented by detecting four points and fitting two ellipses; we will refer to them as upper and lower eyelid points and left and right eyelid corners. The upper and lower eyelid points are detected by a linear Hough transform. For the left and right eyelid corners, our algorithm ..." ID="ID_668041505" CREATED="1378160628266" MODIFIED="1378160628266" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Robust%20iris%20recognition%20baseline%20for%20the%20grand%20cha_Lee%20et%20al..pdf" MOVED="1378160888314">
<pdf_annotation type="BOOKMARK" page="8" object_number="163" generation_number="0" document_hash="EFDFC06A9F837385B15E2DACB8C18589F5A373B790421355E96FC21A918">
    <pdf_title>Robust Iris Recognition Baseline for the Grand Challenge</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="Matching" FOLDED="true" ID="ID_1460526125" CREATED="1378160907934" MODIFIED="1378160910267">
<node TEXT="We therefore propose a new matching method in which the template is shifted not only left and right (horizontal) bit-wise, but also upward and downward (vertical); the Hamming distance values for these X and Y shifts are indicated by HD_X and HD_Y, respectively" ID="ID_1505613365" CREATED="1378160628253" MODIFIED="1378160628253" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2011_Robust%20iris%20recognition%20baseline%20for%20the%20grand%20cha_Lee%20et%20al..pdf" MOVED="1378160920469">
<pdf_annotation type="BOOKMARK" page="9" object_number="164" generation_number="0" document_hash="EFDFC06A9F837385B15E2DACB8C18589F5A373B790421355E96FC21A918">
    <pdf_title>Robust Iris Recognition Baseline for the Grand Challenge</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="VASIR may be used as an effective baseline for the biometrics community to evaluate their algorithm performance, and thus serves as a valuable research platform." ID="ID_1710643969" CREATED="1378183689456" MODIFIED="1378183689456" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2013_VASIR%20An%20Open-Source%20Research%20Platform%20for%20Advanc_Lee%20et%20al..pdf" MOVED="1378183738549">
<pdf_annotation type="BOOKMARK" page="1" object_number="2105" generation_number="0" document_hash="6718BBC9A972BF0F1FF6BC0DDC06F61AEA44FFB4D2B1DCBE26DBC46E1BC4A22">
    <pdf_title>VASIR: An Open-Source Research Platform for Advanced Iris Recognition Technologies</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" VASIR (Video-based Automatic System for Iris Recognition) is a state-of-the-art NIST-developed iris recognition software platform designed to systematically address these vulnerabilities." ID="ID_305798711" CREATED="1378183689487" MODIFIED="1378183689487" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2013_VASIR%20An%20Open-Source%20Research%20Platform%20for%20Advanc_Lee%20et%20al..pdf" MOVED="1378183756115">
<pdf_annotation type="BOOKMARK" page="1" object_number="2107" generation_number="0" document_hash="6718BBC9A972BF0F1FF6BC0DDC06F61AEA44FFB4D2B1DCBE26DBC46E1BC4A22">
    <pdf_title>VASIR: An Open-Source Research Platform for Advanced Iris Recognition Technologies</pdf_title>
</pdf_annotation>
</node>
<node TEXT="VASIR as a research tool that will not only provide a reference (to assess the relative performance of alternative algorithms) for the biometrics community, but will also advance (via this new emerging iris recognition paradigm) NIST&#x2019;s measurement mission." ID="ID_1500548452" CREATED="1378183689440" MODIFIED="1378183689440" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2013_VASIR%20An%20Open-Source%20Research%20Platform%20for%20Advanc_Lee%20et%20al..pdf" MOVED="1378183794226">
<pdf_annotation type="BOOKMARK" page="1" object_number="2108" generation_number="0" document_hash="6718BBC9A972BF0F1FF6BC0DDC06F61AEA44FFB4D2B1DCBE26DBC46E1BC4A22">
    <pdf_title>VASIR: An Open-Source Research Platform for Advanced Iris Recognition Technologies</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Video-based (non-ideal) iris analysis consists of capturing iris features while a person is in motion, usually at a distance, and under less-constrained environments. Given this, video-based iris recognition has the potential to be used in a much broader scope of applications and environments." ID="ID_1590045160" CREATED="1378183689425" MODIFIED="1378183689425" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2013_VASIR%20An%20Open-Source%20Research%20Platform%20for%20Advanc_Lee%20et%20al..pdf" MOVED="1378183831869">
<pdf_annotation type="BOOKMARK" page="1" object_number="2109" generation_number="0" document_hash="6718BBC9A972BF0F1FF6BC0DDC06F61AEA44FFB4D2B1DCBE26DBC46E1BC4A22">
    <pdf_title>VASIR: An Open-Source Research Platform for Advanced Iris Recognition Technologies</pdf_title>
</pdf_annotation>
</node>
</node>
</node>
</node>
<node TEXT="Thesis writeup" POSITION="left" ID="ID_1675707001" CREATED="1378061154862" MODIFIED="1378061165180">
<edge COLOR="#7c0000"/>
</node>
<node TEXT="Misc. things to know" POSITION="left" ID="ID_935408289" CREATED="1378061537121" MODIFIED="1378061543164">
<edge COLOR="#00007c"/>
<node TEXT="Biometric recognition approaches" FOLDED="true" ID="ID_1024444558" CREATED="1378061544446" MODIFIED="1378061554617">
<node TEXT="Statistical pattern recognition" FOLDED="true" ID="ID_264006247" CREATED="1378061556996" MODIFIED="1378061566846">
<node TEXT="e.g. Minimum error rate methods" ID="ID_1564749638" CREATED="1378061567877" MODIFIED="1378061577933"/>
</node>
<node TEXT="Nonparametric methods" FOLDED="true" ID="ID_1166251883" CREATED="1378061580855" MODIFIED="1378061587808">
<node TEXT="e.g. Nearest-neighbor methods" ID="ID_1009311906" CREATED="1378061588964" MODIFIED="1378061600090"/>
</node>
<node TEXT="Discriminant methods" FOLDED="true" ID="ID_1833165611" CREATED="1378061601324" MODIFIED="1378061607736">
<node TEXT="e.g. linear discriminant functions" ID="ID_175367446" CREATED="1378061608578" MODIFIED="1378061622152"/>
<node TEXT="e.g. artificial neural networks" ID="ID_1235867206" CREATED="1378061622613" MODIFIED="1378061639223"/>
<node TEXT="e.g. support vector machines" ID="ID_1184977559" CREATED="1378061639733" MODIFIED="1378061647624"/>
</node>
<node TEXT="Correlation filters" ID="ID_1796198069" CREATED="1378061649360" MODIFIED="1378062263360"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Based on 2D Fourier Transforms of biometric images.
    </p>
    <p>
      
    </p>
    <p>
      Some material:
    </p>
    <p>
      <a href="http://users.ece.cmu.edu/~kumar/Raytheon_Seminar_Oct2008.pdf">http://users.ece.cmu.edu/~kumar/Raytheon_Seminar_Oct2008.pdf </a>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Iris anatomy" POSITION="right" ID="ID_1127094603" CREATED="1378106812033" MODIFIED="1378106819006">
<edge COLOR="#007c00"/>
<node TEXT="size" FOLDED="true" ID="ID_395325102" CREATED="1378106820336" MODIFIED="1378106831027">
<node TEXT="The Pupil radius can range from 0.1 to 0.8 of the iris radius." ID="ID_958082303" CREATED="1378104624228" MODIFIED="1378104624229" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378107114055">
<pdf_annotation type="BOOKMARK" page="1" object_number="124" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" The  average diameter of the iris is 12 mm, and the pupil size can vary from 10% to 80% of the iris diameter [2]. " ID="ID_532083178" CREATED="1377753275248" MODIFIED="1377753275248" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2003_Recognition%20of%20human%20iris%20patterns%20for%20biometric%20i_Masek.pdf" MOVED="1378104861560">
<pdf_annotation type="BOOKMARK" page="6" object_number="8372" generation_number="0" document_hash="5E73E1998AF4E885C8A440FF5B80471A4321029E95120D6163966969A45A65">
    <pdf_title>Recognition of Human Iris Patterns for Biometric Identification</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="muscles" ID="ID_1606267517" CREATED="1378106832605" MODIFIED="1378106836468"/>
<node TEXT="color" FOLDED="true" ID="ID_599434848" CREATED="1378106837061" MODIFIED="1378106838560">
<node TEXT="[Iris color] Iris colour is determined mainly by the density of melanin pigment (Chedekel 1994) in its anterior layer and stroma, with blue irises resulting from an absence of pigment: long wavelength light penetrates and is absorbed by the pigment epithelium, while shorter wavelengths are re&#xfb02;ected and scattered by the stroma." ID="ID_703990625" CREATED="1378104624151" MODIFIED="1378104624151" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/2002_How%20iris%20recognition%20works_Daugman.pdf" MOVED="1378106858806">
<pdf_annotation type="BOOKMARK" page="2" object_number="120" generation_number="0" document_hash="A46371B748275F541FE38FAA5DB6E4F7DAA42DFD9192F43C073A76E4957C7">
    <pdf_title>How Iris Recognition Works</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="features" FOLDED="true" ID="ID_1811981347" CREATED="1378166967011" MODIFIED="1378166969768">
<node TEXT="The iris contains multiple collagenous fibers, contraction furrows, coronas, crypts, color, serpentine vasculature, striations, freckles, rifts, and pits." ID="ID_90125392" CREATED="1378166875183" MODIFIED="1378166875184" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1996_Iris%20recognition%20technology_Williams.pdf" MOVED="1378166980214">
<pdf_annotation type="BOOKMARK" page="2" object_number="85" generation_number="0" document_hash="40A7AB19C41AECB319A5C6D23E181EE668A1ABF88AB631CADA3FC71E61F5855">
    <pdf_title>Iris Recognition Technology</pdf_title>
</pdf_annotation>
</node>
<node TEXT="Contractile lines here can vary with the state of the pupil. Additional meridional striations result from the radiating vasculature. Other assorted variations in appearance owe to crypts (irregular atrophy of the border layer), nevi (small elevations of the border layer), and freckles (local collections of chromataphores)." ID="ID_1484915948" CREATED="1378233826638" MODIFIED="1378233826638" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1997_Iris%20recognition%20an%20emerging%20biometric%20technology_Wildes.pdf" MOVED="1378233883388">
<pdf_annotation type="BOOKMARK" page="2" object_number="93" generation_number="0" document_hash="571C9339BD2F81A5E3B863F931AFA853D1B9B3FAA197435097E2B592CD1353D0">
    <pdf_title>Iris Recognition: An Emerging Biometric Technology</pdf_title>
</pdf_annotation>
</node>
<node TEXT="In contrast, the pupillary zone can be relatively &#xfb02;at. However, it often&#xd;shows radiating spoke-like processes and a pigment frill where the posterior layer&#x2019;s heavily pigmented tissue shows at the pupil boundary." ID="ID_1361659856" CREATED="1378233826519" MODIFIED="1378233826520" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1997_Iris%20recognition%20an%20emerging%20biometric%20technology_Wildes.pdf" MOVED="1378234064312">
<pdf_annotation type="BOOKMARK" page="1" object_number="95" generation_number="0" document_hash="571C9339BD2F81A5E3B863F931AFA853D1B9B3FAA197435097E2B592CD1353D0">
    <pdf_title>Iris Recognition: An Emerging Biometric Technology</pdf_title>
</pdf_annotation>
</node>
<node TEXT="There, one &#xfb01;nds that while the general structure of the iris is genetically determined, the particulars of its minutiae are critically dependent on circumstances (e.g., the initial conditions in the embryonic precursor to the iris). Therefore, they are highly unlikely to be replicated via the&#xd;natural course of events" ID="ID_1571193130" CREATED="1378233826577" MODIFIED="1378233826578" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1997_Iris%20recognition%20an%20emerging%20biometric%20technology_Wildes.pdf" MOVED="1378234082574">
<pdf_annotation type="BOOKMARK" page="2" object_number="96" generation_number="0" document_hash="571C9339BD2F81A5E3B863F931AFA853D1B9B3FAA197435097E2B592CD1353D0">
    <pdf_title>Iris Recognition: An Emerging Biometric Technology</pdf_title>
</pdf_annotation>
</node>
<node TEXT=" Among  the  visible features  in  an  iris,  some  of  which  may  be  seen  in  the close-up  image  of  Fig.  1,  are  the  trabecular  meshwork  of connective  tissue  (pectinate  ligament),  collagenous  stromal fibres,  ciliary  processes,  contraction  furrows,  crypts,  a  serpentine  vasculature,  rings,  corona,  coloration,  and  freckles " ID="ID_1331748403" CREATED="1378260158969" MODIFIED="1378260158969" LINK="workspace:/../../Users/Indranil/Dropbox/Indranil_PHD_Resources/Literature_survey/papers/iris_recognition/1993_High%20confidence%20visual%20recognition%20of%20persons%20by%20a_Daugman.pdf" MOVED="1378260245378">
<pdf_annotation type="BOOKMARK" page="1" object_number="192" generation_number="0" document_hash="EAD7EAA881C7FEEC7C52AD1EF6FD287451F59F8F633724ECE68BDCFBD4147">
    <pdf_title>High Confidence Visual Recognition of Persons a Test of Statistical Independence</pdf_title>
</pdf_annotation>
</node>
</node>
<node TEXT="references to refer for more" FOLDED="true" ID="ID_172589268" CREATED="1378233890804" MODIFIED="1378233903409">
<node TEXT="Wolff&apos;s Anatomy of the Eye and Orbit" ID="ID_1671830246" CREATED="1378233945264" MODIFIED="1378233949976"/>
<node TEXT="Clinical Anatomy of the Eye by Richard Shell" ID="ID_1072204992" CREATED="1378233975879" MODIFIED="1378233982183"/>
<node TEXT="The eye: basic sciences in practice by John V Forrester; et al" ID="ID_1530816735" CREATED="1378350173443" MODIFIED="1378350180464"/>
<node TEXT="Physiology of the Eye  By Hugh Davson" ID="ID_1402787592" CREATED="1378233982991" MODIFIED="1378234036073"/>
<node TEXT="Miles Research on Iris Pigmentation: http://www.milesresearch.com/iris/" ID="ID_1009253151" CREATED="1378349893392" MODIFIED="1378349904892"/>
</node>
<node TEXT="reated terms" FOLDED="true" ID="ID_1717200439" CREATED="1378259423558" MODIFIED="1378259427568">
<node TEXT="Phenotype" FOLDED="true" ID="ID_675858473" CREATED="1378259429869" MODIFIED="1380650030778"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="rgb(51, 51, 51)" face="Verdana, Arial, Helvetica, sans-serif" size="small"><span style="font-size: small; text-indent: 0px; line-height: normal; text-align: left; white-space: normal; word-spacing: 0px; background-color: rgb(255, 255, 255); text-transform: none; font-variant: normal; font-weight: normal; letter-spacing: normal; color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal" class="prondelim">[</span><b><span style="font-weight: 700" class="boldface">fee</span></b><span style="font-size: small; line-height: normal; text-indent: 0px; text-align: left; word-spacing: 0px; white-space: normal; background-color: rgb(255, 255, 255); display: inline; text-transform: none; font-variant: normal; font-weight: normal; letter-spacing: normal; color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal" class="pron">-n</span></font><font face="Georgia, Verdana, Arial, Helvetica, sans-serif" color="rgb(51, 51, 51)" size="small"><i><span style="display: inline; font-family: Georgia, Verdana, Arial, Helvetica, sans-serif; font-style: italic" class="ital-inline">uh</span></i></font><font color="rgb(51, 51, 51)" face="Verdana, Arial, Helvetica, sans-serif" size="small"><span style="font-size: small; line-height: normal; text-indent: 0px; text-align: left; word-spacing: 0px; white-space: normal; background-color: rgb(255, 255, 255); display: inline; text-transform: none; font-variant: normal; font-weight: normal; letter-spacing: normal; color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal" class="pron">-tahyp</span><span style="font-size: small; line-height: normal; text-indent: 0px; text-align: left; word-spacing: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-transform: none; font-variant: normal; font-weight: normal; letter-spacing: normal; color: rgb(51, 51, 51); font-family: Verdana, Arial, Helvetica, sans-serif; font-style: normal" class="prondelim">]</span></font>
    </p>
    <p>
      1.the observable constitution of an organism.
    </p>
    <p>
      2.the appearance of an organism resulting from the interaction of the genotype and the environment.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      <font color="rgb(51, 51, 51)" face="Verdana" size="12px"><span style="font-size: 12px; line-height: 18px; text-indent: 0px; text-align: left; word-spacing: 0px; white-space: normal; background-color: rgb(255, 255, 255); display: inline !important; text-transform: none; font-variant: normal; font-weight: normal; letter-spacing: normal; color: rgb(51, 51, 51); font-family: Verdana; float: none; font-style: normal">Phenotype is determined by an individual's</span><span class="Apple-converted-space">&#160;</span></font><a style="font-style: normal; padding-bottom: 0px; margin-left: 0px; white-space: normal; font-weight: normal; color: rgb(51, 102, 204); font-variant: normal; background-color: rgb(255, 255, 255); margin-top: 0px; text-align: left; font-size: 12px; word-spacing: 0px; padding-right: 0px; line-height: 18px; font-family: Verdana; text-transform: none; margin-right: 0px; text-decoration: underline; text-indent: 0px; padding-top: 0px; padding-left: 0px; margin-bottom: 0px; letter-spacing: normal" href="http://biology.about.com/library/glossary/bldefgenotype.htm"><font color="rgb(51, 102, 204)" face="Verdana" size="12px"><u>genotype </u></font></a><span style="font-style: normal; white-space: normal; font-weight: normal; color: rgb(51, 51, 51); font-variant: normal; background-color: rgb(255, 255, 255); text-align: left; display: inline !important; font-size: 12px; float: none; word-spacing: 0px; line-height: 18px; font-family: Verdana; text-transform: none; text-indent: 0px; letter-spacing: normal"><font color="rgb(51, 51, 51)" face="Verdana" size="12px">and expressed</font></span><font color="rgb(51, 51, 51)" face="Verdana" size="12px"><span class="Apple-converted-space">&#160;</span></font><a style="font-style: normal; padding-bottom: 0px; margin-left: 0px; white-space: normal; font-weight: normal; color: rgb(51, 102, 204); font-variant: normal; background-color: rgb(255, 255, 255); margin-top: 0px; text-align: left; font-size: 12px; word-spacing: 0px; padding-right: 0px; line-height: 18px; font-family: Verdana; text-transform: none; margin-right: 0px; text-decoration: underline; text-indent: 0px; padding-top: 0px; padding-left: 0px; margin-bottom: 0px; letter-spacing: normal" href="http://biology.about.com/od/geneticsglossary/g/Genes.htm"><font color="rgb(51, 102, 204)" face="Verdana" size="12px"><u>genes</u></font></a><span style="font-style: normal; white-space: normal; font-weight: normal; color: rgb(51, 51, 51); font-variant: normal; background-color: rgb(255, 255, 255); text-align: left; display: inline !important; font-size: 12px; float: none; word-spacing: 0px; line-height: 18px; font-family: Verdana; text-transform: none; text-indent: 0px; letter-spacing: normal"><font color="rgb(51, 51, 51)" face="Verdana" size="12px">, random</font></span><font color="rgb(51, 51, 51)" face="Verdana" size="12px"><span class="Apple-converted-space">&#160;</span></font><a style="font-style: normal; padding-bottom: 0px; margin-left: 0px; white-space: normal; font-weight: normal; color: rgb(51, 102, 204); font-variant: normal; background-color: rgb(255, 255, 255); margin-top: 0px; text-align: left; font-size: 12px; word-spacing: 0px; padding-right: 0px; line-height: 18px; font-family: Verdana; text-transform: none; margin-right: 0px; text-decoration: underline; text-indent: 0px; padding-top: 0px; padding-left: 0px; margin-bottom: 0px; letter-spacing: normal" href="http://biology.about.com/od/geneticsglossary/g/Genetic-Variation.htm"><font color="rgb(51, 102, 204)" face="Verdana" size="12px"><u>genetic variation</u></font></a><span style="font-style: normal; white-space: normal; font-weight: normal; color: rgb(51, 51, 51); font-variant: normal; background-color: rgb(255, 255, 255); text-align: left; display: inline !important; font-size: 12px; float: none; word-spacing: 0px; line-height: 18px; font-family: Verdana; text-transform: none; text-indent: 0px; letter-spacing: normal"><font color="rgb(51, 51, 51)" face="Verdana" size="12px">, and environmental influences.</font></span>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="[fee-nuh-tahyp]" ID="ID_162379054" CREATED="1380650034598" MODIFIED="1380650039326"/>
<node TEXT="observable constitution of an organism" ID="ID_932316020" CREATED="1378259444337" MODIFIED="1378259463776"/>
<node TEXT="i.e. it is an organism&apos;s expressed physical traits" ID="ID_1703110957" CREATED="1380649745964" MODIFIED="1380649776501"/>
</node>
<node TEXT="morphogenesis" FOLDED="true" ID="ID_548982701" CREATED="1378259507572" MODIFIED="1378259516216">
<node TEXT="the development of structural features of an organism or part" ID="ID_1236975942" CREATED="1378259517985" MODIFIED="1378259537174"/>
</node>
<node TEXT="minutia" FOLDED="true" ID="ID_765174727" CREATED="1378259544669" MODIFIED="1378259553125">
<node TEXT="[mi - noo - shee - uh] (plural - minutiae) precise details" ID="ID_1776993980" CREATED="1378259556144" MODIFIED="1378259601228"/>
<node TEXT="e.g. in fingerprint recognition, minutia is the friction ridge characteristic that is used to individualize a fingerprint" ID="ID_1655620965" CREATED="1378260564680" MODIFIED="1378260588248"/>
</node>
<node TEXT="epigenetic" FOLDED="true" ID="ID_758166675" CREATED="1378322269396" MODIFIED="1378322272691">
<node TEXT="doesn&apos;t depend on genetics" ID="ID_1290440420" CREATED="1378322273791" MODIFIED="1378322279371"/>
<node TEXT="dependent on environment" ID="ID_1115767747" CREATED="1380650060574" MODIFIED="1380650070154"/>
</node>
</node>
</node>
<node TEXT="Ideas" POSITION="right" ID="ID_567526020" CREATED="1378588975964" MODIFIED="1378588980742">
<edge COLOR="#007c7c"/>
<node TEXT="Experiments" FOLDED="true" ID="ID_1940426955" CREATED="1378588981881" MODIFIED="1378588986384">
<node TEXT="scheimpflug related" FOLDED="true" ID="ID_984744909" CREATED="1378589046112" MODIFIED="1378589055316">
<node TEXT="effect of rectification" FOLDED="true" ID="ID_1171489400" CREATED="1378589056937" MODIFIED="1378596731291"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      Potential issue:
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      The plane of sharp-focus is not the going to be co-planar with the plane of iris (or subject) .... we need to correct (projetive rectification) the distorted iris image .... one way of doing it could be to find the relation between these two planes (homography) and then use the homography to correct for the distortion ....
    </p>
    <p>
      
    </p>
    <p>
      Of course our goal or aim is not to correct for the &quot;plane of sharp focus&quot; .... however, we will exactly know the orientation (knowledge) of the plane of sharp focus....
    </p>
    <p>
      ... we don't have exact knowledge of the plane of the iris (if that is required) ... although we can (and need) to know the distance of the subject (to focus on the iris) and also assume the orientation of the plane to be perpendicular to the ground.
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
    <p>
      To test:
    </p>
    <ol>
      <li>
        Hypothesis -- We have knowledge (the angle of tilt) of the image plane. We can use this information to correct for any geometric distortion of any plane at any distance ... I hope you could ...
      </li>
      <li>
        
      </li>
    </ol>
    <p>
      
    </p>
  </body>
</html>
</richcontent>
<node TEXT="" ID="ID_1640828738" CREATED="1378589070779" MODIFIED="1378589070779"/>
</node>
</node>
</node>
<node TEXT="iris recognition &quot;essense&quot; related" ID="ID_806268223" CREATED="1378588989961" MODIFIED="1378589007414"/>
<node TEXT="Image acquisition/optics related" FOLDED="true" ID="ID_1673477092" CREATED="1378589018829" MODIFIED="1378589031906">
<node TEXT="scheimpflug related" ID="ID_462693311" CREATED="1378589013106" MODIFIED="1378589018292" MOVED="1378589036665"/>
</node>
<node TEXT="Others" ID="ID_47043028" CREATED="1378589008015" MODIFIED="1378589010220"/>
</node>
</node>
</map>
