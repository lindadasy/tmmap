<!-- 特殊＋目录跳转(整个header部分)＋批量显示(已注释)-->
<!-- 跳转去的页面是href后面的文件名-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Custom Dropdown</title>
<link rel="stylesheet" type="text/css" href="./style.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="echarts.js"></script>
</head>
<body  class="blue">
    
    <header>
        <div class="headbar"></div>
        <div class="navbar">
            <div class="titlebox">
                <img class="logo" src="./logo.png" alt="">
            </div>
            <div class="titlebox">
                <a href="./home.html">
                    Home
                </a>
            </div>
            <div class="titlebox">
                <span><img src="https://cdn.builder.io/api/v1/image/assets/TEMP/50553b738128039c507a6801435406eb1469bc028992b71cf38e93f00f12b4a6?" alt="" class="btn-gra"></span>
                <a href="./introduction.html">
                    Intro
                </a>
                <!-- <div class="dropdown-content">
                    <a href="{{ url_for('pages', page = 'team') }}">Members</a>
                    <a href="{{ url_for('pages', page = 'attribution') }}">Attributions</a>
                    <a href="{{ url_for('pages', page = 'collaboration') }}">Collaboration</a>
                  </div> -->
            </div>
            
            <div class="titlebox">
                <a href="./search.html">
                    Search
                </a>
            </div>
            <div class="titlebox">
                <a href="./statistics.html">
                    Statistics
                </a>
            </div>
            <!-- <div class="titlebox">
                <a href="">
                    Inter-Chrom
                </a>
            </div> -->
            <div class="titlebox">
                 <span><img src="https://cdn.builder.io/api/v1/image/assets/TEMP/50553b738128039c507a6801435406eb1469bc028992b71cf38e93f00f12b4a6?" alt="" class="btn-gra"></span>
                <a href="./tutorial.html">
                    Tutorial
                </a>
            </div>
            <div class="titlebox">
                <a href="./download.html">
                    Download
                </a>
            </div>
            <div class="titlebox" style="border-right: 0;">
                <a href="./about.html">
                    About
                </a>
            </div>
        </div>
    </header>


    <div class="searchbgbox white">
        <h1 class="darkblue" style="display: inline-block;margin-top: 2vw;font-size: 2.5vw;">Search</h1>

        <!-- 根据输入的gsm或者gse编号搜索,也可以两个一起输入。将匹配的数据输出到下面的表格 -->
        <form action="SearchServlet" method="get">
            <div class="typecontainer">
                <input type="text" name="gseOrGsm" placeholder=" Please enter the GSE or GSM number here">
                <button type="submit" class="typebutton">Search</button>
            </div>
        </form>

        <!-- 以下是筛选 以下所有的项目，不点击默认全选。点击后跳出下拉多选框，点击一下则将筛选条件加入多选，选完点击done保存。用户选完6项后，点击search则根据多选的条件筛选数据，输出到下面的表格。点击clear则清空所有的选项。 -->
        <!-- 这部分筛选效果js已经写了，可更改 -->
        <div class="search">
            <div class="ser" id="types">
                <span class="searchtitle">Methods</span>
                <button class="serbtn" onclick="toggleDropdown('serContent1')">All or click on me for selection</button>
                <div class="ser-content" id="serContent1">
                    <div class="serr-content">
                        <a href="#" onclick="toggleOption('Option 1', 'types')">HiChIP</a>
                        <a href="#" onclick="toggleOption('Option 2', 'types')">ChIA-PET</a>
                    </div>
                    <div class="done-btn-container">
                      <button class="done-btn" onclick="hideDropdown('serContent1'); sendSelection('types')">Done</button>
                    </div>
                </div>
            </div>

            <div class="ser" id="cellTypes">
                <span class="searchtitle">Cell Type</span>
                <button class="serbtn" onclick="toggleDropdown('serContent4')">All or click on me for selection</button>
                <div class="ser-content" id="serContent4">
                    <div class="serr-content">
                        <a href="#" onclick="toggleOption('Option 1', 'cellTypes')">Prostate Cancer Cell</a>
                        <a href="#" onclick="toggleOption('Option 2', 'cellTypes')">Kidney Rhabdoid Tumor Cell</a>
                        <a href="#" onclick="toggleOption('Option 3', 'cellTypes')">B Cell Precursor Leukemia Cell</a>
                        <a href="#" onclick="toggleOption('Option 4', 'cellTypes')">Activated B Cell</a>
                        <a href="#" onclick="toggleOption('Option 5', 'cellTypes')">Activated CD4 positive, naive alpha-beta T primary cell</a>
                        <a href="#" onclick="toggleOption('Option 6', 'cellTypes')">Activated CD4-positive, alpha-beta memory T primary cell</a>
                        <a href="#" onclick="toggleOption('Option 7', 'cellTypes')">Activated CD4-positive, alpha-beta T primary cell</a>
                        <a href="#" onclick="toggleOption('Option 8', 'cellTypes')">Activated CD8-positive, alpha-beta memory T primary cell</a>
                        <a href="#" onclick="toggleOption('Option 9', 'cellTypes')">Activated CD8-positive, alpha-beta T primary cell</a>
                        <a href="#" onclick="toggleOption('Option 10', 'cellTypes')">B Primary Cell</a>
                        <a href="#" onclick="toggleOption('Option 11', 'cellTypes')">B-ALL Cell</a>
                        <a href="#" onclick="toggleOption('Option 12', 'cellTypes')">B-Lymphocyte</a>
                        <a href="#" onclick="toggleOption('Option 13', 'cellTypes')">Breast Adenocarcinoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 14', 'cellTypes')">CD4-positive naive resting alpha-beta T primary cell</a>
                        <a href="#" onclick="toggleOption('Option 15', 'cellTypes')">CD4-positive, alpha-beta memory T primary cell</a>
                        <a href="#" onclick="toggleOption('Option 16', 'cellTypes')">CD4-positive, alpha-beta T primary cell</a>
                        <a href="#" onclick="toggleOption('Option 17', 'cellTypes')">CD8-positive, alpha-beta memory T primary cell</a>
                        <a href="#" onclick="toggleOption('Option 18', 'cellTypes')">Cervical Carcinoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 19', 'cellTypes')">Chronic Myeloid Leukemia Cell</a>
                        <a href="#" onclick="toggleOption('Option 20', 'cellTypes')">Colorectal Carcinoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 21', 'cellTypes')">Common myeloid progenitor, CD34-positive primary cell</a>
                        <a href="#" onclick="toggleOption('Option 22', 'cellTypes')">Early Monocycte/Macrophages</a>
                        <a href="#" onclick="toggleOption('Option 23', 'cellTypes')">Ewing Sarcoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 24', 'cellTypes')">Fetal Buttock/Thigh Fibroblast</a>
                        <a href="#" onclick="toggleOption('Option 25', 'cellTypes')">Fetal Lung Fibroblast</a>
                        <a href="#" onclick="toggleOption('Option 26', 'cellTypes')">H9 Human Embryonic Stem Cell</a>
                        <a href="#" onclick="toggleOption('Option 27', 'cellTypes')">Hepatocellular Carcinoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 28', 'cellTypes')">Human Embryonic Kidney Cell</a>
                        <a href="#" onclick="toggleOption('Option 29', 'cellTypes')">Immortalized Prostate Epithelial Cell</a>
                        <a href="#" onclick="toggleOption('Option 30', 'cellTypes')">Lung Carcinoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 31', 'cellTypes')">Lymphoblastoid Cell</a>
                        <a href="#" onclick="toggleOption('Option 32', 'cellTypes')">Mammary Epithelial Cell</a>
                        <a href="#" onclick="toggleOption('Option 33', 'cellTypes')">Monocyte</a>
                        <a href="#" onclick="toggleOption('Option 34', 'cellTypes')">Multiple Myeloma Cell</a>
                        <a href="#" onclick="toggleOption('Option 35', 'cellTypes')">Myloid Cell</a>
                        <a href="#" onclick="toggleOption('Option 36', 'cellTypes')">Neuroblastoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 37', 'cellTypes')">Prostate Carcinoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 38', 'cellTypes')">Pulmonary Artery Endothelial Cell</a>
                        <a href="#" onclick="toggleOption('Option 39', 'cellTypes')">Skin Fibroblast</a>
                        <a href="#" onclick="toggleOption('Option 40', 'cellTypes')">Umbilical Vein Endotheliall Cell</a>
                        <a href="#" onclick="toggleOption('Option 41', 'cellTypes')">Erythroid Precursor Cell</a>
                        <a href="#" onclick="toggleOption('Option 42', 'cellTypes')">Bladder Carcinoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 43', 'cellTypes')">Diffuse Histiocytic Lymphoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 44', 'cellTypes')">Fibroblast Primary Cell</a>
                        <a href="#" onclick="toggleOption('Option 45', 'cellTypes')">Hepatocyte</a>
                        <a href="#" onclick="toggleOption('Option 46', 'cellTypes')">hTERT-Immortalized Cell</a>
                        <a href="#" onclick="toggleOption('Option 47', 'cellTypes')">Induced Pluripotent Stem Cells Derived from PBMC</a>
                        <a href="#" onclick="toggleOption('Option 48', 'cellTypes')">Neural Cell</a>
                        <a href="#" onclick="toggleOption('Option 49', 'cellTypes')">Neural Progenitor Cell</a>
                        <a href="#" onclick="toggleOption('Option 50', 'cellTypes')">Retinal Pigment Epithelial cell</a>
                        <a href="#" onclick="toggleOption('Option 51', 'cellTypes')">T-ALL Cell</a>
                        <a href="#" onclick="toggleOption('Option 52', 'cellTypes')">Thyroid Carcinoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 53', 'cellTypes')">Embryonic Stem Cell</a>
                        <a href="#" onclick="toggleOption('Option 54', 'cellTypes')">Surface Ectoderm Cell</a>
                        <a href="#" onclick="toggleOption('Option 55', 'cellTypes')">TAE Resistant Neuroblastoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 56', 'cellTypes')">Mantle Cell Lymphoma Cell</a>
                        <a href="#" onclick="toggleOption('Option 57', 'cellTypes')">Triple-Negative Breast Cancer Cell</a>
                        <a href="#" onclick="toggleOption('Option 58', 'cellTypes')">NCCIT_Stem-like_Cells</a>
                    </div>
                    <div class="done-btn-container">
                      <button class="done-btn" onclick="hideDropdown('serContent4'); sendSelection('cellTypes')">Done</button>
                    </div>
                </div>
            </div>


            
            <div class="ser" id="cellLines">
                <span class="searchtitle">Cell Line</span>
                <button class="serbtn" onclick="toggleDropdown('serContent2')">All or click on me for selection</button>
                <div class="ser-content" id="serContent2">
                    <div class="serr-content">
                        <a href="#" onclick="toggleOption('Option 1', 'cellLines')">VCaP</a>
                        <a href="#" onclick="toggleOption('Option 2', 'cellLines')">G401</a>
                        <a href="#" onclick="toggleOption('Option 3', 'cellLines')">SEM</a>
                        <a href="#" onclick="toggleOption('Option 4', 'cellLines')">ALL cell line</a>
                        <a href="#" onclick="toggleOption('Option 5', 'cellLines')">JIH5</a>
                        <a href="#" onclick="toggleOption('Option 6', 'cellLines')">GM12878</a>
                        <a href="#" onclick="toggleOption('Option 7', 'cellLines')">GM10248</a>
                        <a href="#" onclick="toggleOption('Option 8', 'cellLines')">MCF-7</a>
                        <a href="#" onclick="toggleOption('Option 9', 'cellLines')">HeLa-S3</a>
                        <a href="#" onclick="toggleOption('Option 10', 'cellLines')">K562</a>
                        <a href="#" onclick="toggleOption('Option 11', 'cellLines')">HCT-116</a>
                        <a href="#" onclick="toggleOption('Option 12', 'cellLines')">OCI-AML3</a>
                        <a href="#" onclick="toggleOption('Option 13', 'cellLines')">A673</a>
                        <a href="#" onclick="toggleOption('Option 14', 'cellLines')">AG04449</a>
                        <a href="#" onclick="toggleOption('Option 15', 'cellLines')">IMR-90</a>
                        <a href="#" onclick="toggleOption('Option 16', 'cellLines')">H9 hESCs</a>
                        <a href="#" onclick="toggleOption('Option 17', 'cellLines')">HepG2</a>
                        <a href="#" onclick="toggleOption('Option 18', 'cellLines')">HEK-293</a>
                        <a href="#" onclick="toggleOption('Option 19', 'cellLines')">HEK293T</a>
                        <a href="#" onclick="toggleOption('Option 20', 'cellLines')">RWPE1</a>
                        <a href="#" onclick="toggleOption('Option 21', 'cellLines')">A549</a>
                        <a href="#" onclick="toggleOption('Option 22', 'cellLines')">Lymphoblastoid cell lines (LCLs)</a>
                        <a href="#" onclick="toggleOption('Option 23', 'cellLines')">MCF-10A</a>
                        <a href="#" onclick="toggleOption('Option 24', 'cellLines')">THP-1</a>
                        <a href="#" onclick="toggleOption('Option 25', 'cellLines')">Multiple Myeloma Cell Line</a>
                        <a href="#" onclick="toggleOption('Option 26', 'cellLines')">NB4</a>
                        <a href="#" onclick="toggleOption('Option 27', 'cellLines')">U937-PR9</a>
                        <a href="#" onclick="toggleOption('Option 28', 'cellLines')">SK-N-SH</a>
                        <a href="#" onclick="toggleOption('Option 29', 'cellLines')">22Rv1</a>
                        <a href="#" onclick="toggleOption('Option 30', 'cellLines')">Pulmonary Artery Endothelial Cell</a>
                        <a href="#" onclick="toggleOption('Option 31', 'cellLines')">BJ</a>
                        <a href="#" onclick="toggleOption('Option 32', 'cellLines')">HUVEC</a>
                        <a href="#" onclick="toggleOption('Option 33', 'cellLines')">Erythroid precursor</a>
                        <a href="#" onclick="toggleOption('Option 34', 'cellLines')">HT-1197</a>
                        <a href="#" onclick="toggleOption('Option 35', 'cellLines')">HT-1376</a>
                        <a href="#" onclick="toggleOption('Option 36', 'cellLines')">KU-19-19</a>
                        <a href="#" onclick="toggleOption('Option 37', 'cellLines')">GM12891</a>
                        <a href="#" onclick="toggleOption('Option 38', 'cellLines')">GM12892</a>
                        <a href="#" onclick="toggleOption('Option 39', 'cellLines')">GM19238</a>
                        <a href="#" onclick="toggleOption('Option 40', 'cellLines')">GM19239</a>
                        <a href="#" onclick="toggleOption('Option 41', 'cellLines')">GM19240</a>
                        <a href="#" onclick="toggleOption('Option 42', 'cellLines')">SU-DHL-4</a>
                        <a href="#" onclick="toggleOption('Option 43', 'cellLines')">SU-DHL-2</a>
                        <a href="#" onclick="toggleOption('Option 44', 'cellLines')">MSFIB</a>
                        <a href="#" onclick="toggleOption('Option 45', 'cellLines')">originated from H9-hESC</a>
                        <a href="#" onclick="toggleOption('Option 46', 'cellLines')">hTERT-HME1</a>
                        <a href="#" onclick="toggleOption('Option 47', 'cellLines')">MSiPS</a>
                        <a href="#" onclick="toggleOption('Option 48', 'cellLines')">NCI-H1437</a>
                        <a href="#" onclick="toggleOption('Option 49', 'cellLines')">MSLCL</a>
                        <a href="#" onclick="toggleOption('Option 50', 'cellLines')">originated from H1-hESC</a>
                        <a href="#" onclick="toggleOption('Option 51', 'cellLines')">LNCAP</a>
                        <a href="#" onclick="toggleOption('Option 52', 'cellLines')">DU 145</a>
                        <a href="#" onclick="toggleOption('Option 53', 'cellLines')">ARPE-19</a>
                        <a href="#" onclick="toggleOption('Option 54', 'cellLines')">Jurkat clone E61</a>
                        <a href="#" onclick="toggleOption('Option 55', 'cellLines')">K1</a>
                        <a href="#" onclick="toggleOption('Option 56', 'cellLines')">hESCs</a>
                        <a href="#" onclick="toggleOption('Option 57', 'cellLines')">KELLY</a>
                        <a href="#" onclick="toggleOption('Option 58', 'cellLines')">Jurkat</a>
                        <a href="#" onclick="toggleOption('Option 59', 'cellLines')">Rec-1</a>
                        <a href="#" onclick="toggleOption('Option 60', 'cellLines')">DND41</a>
                        <a href="#" onclick="toggleOption('Option 61', 'cellLines')">HCC1599</a>
                        <a href="#" onclick="toggleOption('Option 62', 'cellLines')">MB157</a>
                        <a href="#" onclick="toggleOption('Option 63', 'cellLines')">NCCIT_Stem-like_Cells</a>
                    </div>
                    <div class="done-btn-container">
                      <button class="done-btn" onclick="hideDropdown('serContent2'); sendSelection('cellLines')">Done</button>
                    </div>
                </div>
            </div>
            
            
            <div class="ser" style="margin-right: 11vw;margin-top: 2vw;" id="TFs">
                <span class="searchtitle">TF</span>
                <button class="serbtn" onclick="toggleDropdown('serContent3')">All or click on me for selection</button>
                <div class="ser-content" id="serContent3">
                    <div class="serr-content">
                        <a href="#" onclick="toggleOption('Option A', 'TFs')">AR</a>
                        <a href="#" onclick="toggleOption('Option B', 'TFs')">ARID1A</a>
                        <a href="#" onclick="toggleOption('Option C', 'TFs')">CTCF</a>
                        <a href="#" onclick="toggleOption('Option D', 'TFs')">DAXX</a>
                        <a href="#" onclick="toggleOption('Option E', 'TFs')">ERG</a>
                        <a href="#" onclick="toggleOption('Option F', 'TFs')">GATA1</a>
                        <a href="#" onclick="toggleOption('Option G', 'TFs')">KLF4</a>
                        <a href="#" onclick="toggleOption('Option H', 'TFs')">NANOG</a>
                        <a href="#" onclick="toggleOption('Option I', 'TFs')">No Treatment</a>
                        <a href="#" onclick="toggleOption('Option J', 'TFs')">OCT4</a>
                        <a href="#" onclick="toggleOption('Option K', 'TFs')">PML</a>
                        <a href="#" onclick="toggleOption('Option L', 'TFs')">RAD21</a>
                        <a href="#" onclick="toggleOption('Option M', 'TFs')">RARA</a>
                        <a href="#" onclick="toggleOption('Option N', 'TFs')">SMC1</a>
                        <a href="#" onclick="toggleOption('Option O', 'TFs')">SMC1A</a>
                        <a href="#" onclick="toggleOption('Option P', 'TFs')">YY1</a>
                        <a href="#" onclick="toggleOption('Option Q', 'TFs')">ZNF384</a>
                    </div>
                    <div class="done-btn-container">
                      <button class="done-btn" onclick="hideDropdown('serContent3'); sendSelection('TFs')">Done</button>
                    </div>
                </div>
            </div>
            
            
            <div class="ser" style="margin-top: 2vw;" id="healthStates">
                <span class="searchtitle">Normal/Disease</span>
                <button class="serbtn" onclick="toggleDropdown('serContent5')">All or click on me for selection</button>
                <div class="ser-content" id="serContent5">
                    <div class="serr-content">
                        <a href="#" onclick="toggleOption('Option 1', 'healthStates')">Prostate Cancer</a>
                        <a href="#" onclick="toggleOption('Option 2', 'healthStates')">Rhabdoid Tumor</a>
                        <a href="#" onclick="toggleOption('Option 3', 'healthStates')">Acute Lymphoblastic Leukemia</a>
                        <a href="#" onclick="toggleOption('Option 4', 'healthStates')">Chronic Myelogenous Leukemia</a>
                        <a href="#" onclick="toggleOption('Option 5', 'healthStates')">Clinically Normal; 4 paternal cousins have Cornelia de Lange syndrome</a>
                        <a href="#" onclick="toggleOption('Option 6', 'healthStates')">Breast Adenocarcinoma</a>
                        <a href="#" onclick="toggleOption('Option 7', 'healthStates')">Cervical Carcinoma</a>
                        <a href="#" onclick="toggleOption('Option 8', 'healthStates')">Colorectal Carcinoma</a>
                        <a href="#" onclick="toggleOption('Option 9', 'healthStates')">Acute Myeloid Leukemia</a>
                        <a href="#" onclick="toggleOption('Option 10', 'healthStates')">Ewings Sarcoma</a>
                        <a href="#" onclick="toggleOption('Option 11', 'healthStates')">Normal</a>
                        <a href="#" onclick="toggleOption('Option 12', 'healthStates')">Hepatocellular Carcinoma</a>
                        <a href="#" onclick="toggleOption('Option 13', 'healthStates')">Lung Carcinoma</a>
                        <a href="#" onclick="toggleOption('Option 14', 'healthStates')">Systemic Lupus Erythematosus</a>
                        <a href="#" onclick="toggleOption('Option 15', 'healthStates')">Fibrocystic Disease</a>
                        <a href="#" onclick="toggleOption('Option 16', 'healthStates')">Acute monocytic Leukemia</a>
                        <a href="#" onclick="toggleOption('Option 17', 'healthStates')">Myeloma</a>
                        <a href="#" onclick="toggleOption('Option 18', 'healthStates')">Acute Promyeloid Leukemia</a>
                        <a href="#" onclick="toggleOption('Option 19', 'healthStates')">Neuroblastoma</a>
                        <a href="#" onclick="toggleOption('Option 20', 'healthStates')">Pulmonary Arterial Hypertension</a>
                        <a href="#" onclick="toggleOption('Option 21', 'healthStates')">Unspecified</a>
                        <a href="#" onclick="toggleOption('Option 22', 'healthStates')">Abortion</a>
                        <a href="#" onclick="toggleOption('Option 23', 'healthStates')">TNF-induced inflammatory signaling</a>
                        <a href="#" onclick="toggleOption('Option 24', 'healthStates')">Bladder carcinoma</a>
                        <a href="#" onclick="toggleOption('Option 25', 'healthStates')">Diffuse Histiocytic Lymphoma</a>
                        <a href="#" onclick="toggleOption('Option 26', 'healthStates')">Large Cell Lymphoma; Diffuse Histiocytic Lymphoma</a>
                        <a href="#" onclick="toggleOption('Option 27', 'healthStates')">Type 2 Diabetes</a>
                        <a href="#" onclick="toggleOption('Option 28', 'healthStates')">Type 3 Diabetes</a>
                        <a href="#" onclick="toggleOption('Option 29', 'healthStates')">Type 4 Diabetes</a>
                        <a href="#" onclick="toggleOption('Option 30', 'healthStates')">Type 5 Diabetes</a>
                        <a href="#" onclick="toggleOption('Option 31', 'healthStates')">Stage 1 Adenocarcinoma; non-small Lung cancer</a>
                        <a href="#" onclick="toggleOption('Option 32', 'healthStates')">Type 6 Diabetes</a>
                        <a href="#" onclick="toggleOption('Option 33', 'healthStates')">Type 7 Diabetes</a>
                        <a href="#" onclick="toggleOption('Option 34', 'healthStates')">Acute T Cell Leukemia</a>
                        <a href="#" onclick="toggleOption('Option 35', 'healthStates')">Thyroid Carcinoma</a>
                        <a href="#" onclick="toggleOption('Option 36', 'healthStates')">Mantle Cell Lymphoma</a>
                        <a href="#" onclick="toggleOption('Option 37', 'healthStates')">T-Acute Lymphoblastic Leukemia</a>
                        <a href="#" onclick="toggleOption('Option 38', 'healthStates')">Triple-Negative Breast Cancer</a>
                    </div>
                    <div class="done-btn-container">
                      <button class="done-btn" onclick="hideDropdown('serContent5'); sendSelection('healthStates')">Done</button>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="buttons">
            <button class="search-btn" onclick="search()">Search</button>
            <button class="clear-btn" onclick="clearSelections()">Clear</button>
        </div>

        <!-- 目前还只是一个示意图，希望搜索后只每项只要不是单选，每项都生成一个饼图展示样本的分布 -->
        <div class="figcontainer swiper-container">
            <div class="swiper-wrapper">
                <div id="pic1" class="swiper-slide" style="width: 50vw;height:60vw;"></div>
                <div id="pic2" class="swiper-slide" style="width: 50vw;height:60vw;"></div>
                <div id="pic3" class="swiper-slide" style="width: 50vw;height:60vw;"></div>
                <div id="pic4" class="swiper-slide" style="width: 50vw;height:60vw;"></div>
                <div id="pic5" class="swiper-slide" style="width: 50vw;height:60vw;"></div>
            </div>
            <!-- <div class="swiper-pagination"></div>
            添加导航按钮 -->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
        <p style="position: relative; top: 19vw;right: 25vw;font-size: 1.1vw;">Showing <span style="color: #859fcf;">${fn:length(searchResults)}</span> entries</p>
        <div class="anothercontainer">
            <div class="tablecontainer">
                <table>
                    <tr class="first-row">
                        <th>ID</th>
                        <th>GSM</th>
                        <th>GSE</th>
                        <th>SRR</th>
                        <th>TF</th>
                        <th>biosample</th>
                        <th>peaks.bed</th>
                        <th>loops.bed</th>
                        <th>attotation.txt</th>
                    </tr>
                    <c:forEach var="result" items="${searchResults}">
                        <tr>
                            <td class="first-col"><a href="./GsmDataServlet?id=${result.getId()}">${result.getId()}</a></td>
                            <td><a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=${result.getGSM()}">${result.getGSM()}</a></td>
                            <td>
                                <c:forEach var="gse" items="${result.getGSE()}" varStatus="status">
                                    <a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=${gse}">${gse}</a>${status.last ? '' : '<br/>'}
                                </c:forEach>
                            </td>
                            <td>
                                <c:forEach var="srr" items="${result.getSRR()}" varStatus="status">
                                    ${srr}${status.last ? '' : '<br/>'}
                                </c:forEach>
                            </td>
                            <td>${result.getTF()}</td>
                            <td>${result.getBiosample()}</td>
                            <td><a href="">peaks.bed</a></td>
                            <td><a href="">loops.bed</a></td>
                            <td><a href="">attotation.txt</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>


    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script>
        function toggleDropdown(serId) {
            var serContent = document.getElementById(serId);
            var isOpen = serContent.style.display === 'block';
            hideAllDropdowns(); // 关闭所有下拉框
            if (!isOpen) {
                serContent.style.display = 'block';
                adjustserWidth(serId);
    
                // 添加一次性事件监听器
                document.addEventListener('click', function outsideClickListener(event) {
                    if (!serContent.contains(event.target) && !serContent.previousElementSibling.contains(event.target)) {
                        hideDropdown(serId);
                        clearCurrentSelections(serId);
                        document.removeEventListener('click', outsideClickListener);
                    }
                });
            }
        }
    
        function hideAllDropdowns() {
            var serContents = document.querySelectorAll('.ser-content');
            serContents.forEach(function(serContent) {
                serContent.style.display = 'none';
            });
        }
    
        function toggleOption(option, serId) {
            var optionElement = event.target;
            optionElement.classList.toggle('selected');
            updateSelectedOptions(serId);
            event.preventDefault();
            event.stopPropagation();
        }
    
        function updateSelectedOptions(serId) {
            var serbtn = document.querySelector("#" + serId + " .serbtn");
            var selectedOptions = document.querySelectorAll("#" + serId + " .ser-content a.selected");
            var selectedText = Array.from(selectedOptions).map(option => option.textContent).join(', ');
            serbtn.innerHTML = selectedText || 'All or click on me for selection';
        }
    
        function hideDropdown(serId) {
            var serContent = document.getElementById(serId);
            serContent.style.display = 'none';
        }
    
        function clearCurrentSelections(serId) {
            var serContent = document.getElementById(serId);
            var selectedOptions = serContent.querySelectorAll('a.selected');
            selectedOptions.forEach(function(option) {
                option.classList.remove('selected');
            });
            var serbtn = document.querySelector("#" + serId + " .serbtn");
            serbtn.innerHTML = 'All or click on me for selection';
        }
    
        function clearSelections() {
            var serContents = document.querySelectorAll('.ser-content');
            serContents.forEach(function(serContent) {
                var selectedOptions = serContent.querySelectorAll('a.selected');
                selectedOptions.forEach(function(option) {
                    option.classList.remove('selected');
                });
                var serbtn = serContent.previousElementSibling;
                serbtn.innerHTML = 'All or click on me for selection';
            });
        }
    
        function adjustserWidth(serId) {
            var serbtn = document.querySelector("#" + serId + " .serbtn");
            var serContent = document.getElementById(serId);
            serbtn.style.width = serContent.offsetWidth + 'px';
        }
    
        function sendSelection(serId) {
            var selectedOptions = document.querySelectorAll("#" + serId + " .ser-content a.selected");
            var selectedValues = Array.from(selectedOptions).map(option => option.textContent);

            fetch('http://localhost:8080/gsm/Servlet', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ serId: serId, selections: selectedValues })
            })
            .then(response => response.json())
            .then(data => {
                console.log('Success:', data);
            })
            .catch((error) => {
                console.error('Error:', error);
            });
        }

        /* function search() {
        // 创建一个表单
        var form = document.createElement('form');
        form.method = 'post';
        form.action = 'http://localhost:8080/gsm/AttributesServlet';

        // 为每个选择创建隐藏的输入字段
        var serIds = ['types', 'cellLines', 'TFs', 'cellTypes', 'healthStates'];
        serIds.forEach(function(serId) {
            var selectedOptions = document.querySelectorAll("#" + serId + " .ser-content a.selected");
            var selectedValues = Array.from(selectedOptions).map(option => option.textContent);
            // 为每个选中的值创建一个隐藏的输入字段
            selectedValues.forEach(function(value) {
                var input = document.createElement('input');
                input.type = 'hidden';
                input.name = serId;
                input.value = value;
                form.appendChild(input);
            });
        }); */

        function search() {
            // 创建一个表单
            var form = document.createElement('form');
            form.method = 'post';
            form.action = 'http://localhost:8080/gsm/AttributesServlet';

            // 为每个选择创建隐藏的输入字段
            var serIds = ['types', 'cellLines', 'TFs', 'cellTypes', 'healthStates'];
            serIds.forEach(function(serId) {
                var selectedOptions = document.querySelectorAll("#" + serId + " .ser-content a.selected");
                var selectedValues = Array.from(selectedOptions).map(option => option.textContent);
                // 为每个选中的值创建一个隐藏的输入字段
                selectedValues.forEach(function(value) {
                    var input = document.createElement('input');
                    input.type = 'hidden';
                    input.name = serId;
                    input.value = value;
                    form.appendChild(input);
                });
            });

            // 将表单添加到body（不可见）
            document.body.appendChild(form);
            // 提交表单
            form.submit();
        }   


        var swiper = new Swiper('.swiper-container', {
            loop: true, // 循环模式选项
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });

        // Echarts
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('pic1'));

        var inputData = JSON.parse('${type}');

        var data = {
        legendData: inputData.map(item => item.name),
        seriesData: inputData
        };

        option = {
        title: {
            text: 'Methods',
            subtext: 'Fake Data',
            left: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            right: '2%', 
            top: 20,
            bottom: 20,
            data: data.legendData
        },
        series: [
            {
            name: '姓名',
            type: 'pie',
            radius: '55%',
            center: ['50%', '50%'], 
            data: data.seriesData,
            itemStyle: {
                opacity: 0.85 
            },
            emphasis: {
                itemStyle: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)',
                opacity: 1 
                }
            }
            }
        ]
        };

        myChart.setOption(option);



        var myChart1 = echarts.init(document.getElementById('pic2'));

        var inputData1 = JSON.parse('${cellType}');

        var data1 = {
        legendData: inputData.map(item => item.name),
        seriesData: inputData
        };

        option = {
        title: {
            text: 'Cell type',
            subtext: 'Fake Data',
            left: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            right: '2%', 
            top: 20,
            bottom: 20,
            data: data.legendData
        },
        series: [
            {
            name: '姓名',
            type: 'pie',
            radius: '55%',
            center: ['50%', '50%'], 
            data: data.seriesData,
            itemStyle: {
                opacity: 0.85 
            },
            emphasis: {
                itemStyle: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)',
                opacity: 1 
                }
            }
            }
        ]
        };

        myChart1.setOption(option);

        var myChart2 = echarts.init(document.getElementById('pic3'));

        var inputData2 = JSON.parse('${cellLine}');

        var data2 = {
        legendData: inputData.map(item => item.name),
        seriesData: inputData
        };

        option = {
        title: {
            text: 'Cell line',
            subtext: 'Fake Data',
            left: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            right: '2%', 
            top: 20,
            bottom: 20,
            data: data.legendData
        },
        series: [
            {
            name: '姓名',
            type: 'pie',
            radius: '55%',
            center: ['50%', '50%'], 
            data: data.seriesData,
            itemStyle: {
                opacity: 0.85 
            },
            emphasis: {
                itemStyle: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)',
                opacity: 1 
                }
            }
            }
        ]
        };

        myChart2.setOption(option);

        var myChart3 = echarts.init(document.getElementById('pic4'));

        var inputData3 = JSON.parse('${TF}');

        var data3 = {
        legendData: inputData.map(item => item.name),
        seriesData: inputData
        };

        option = {
        title: {
            text: 'TF',
            subtext: 'Fake Data',
            left: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            right: '2%', 
            top: 20,
            bottom: 20,
            data: data.legendData
        },
        series: [
            {
            name: '姓名',
            type: 'pie',
            radius: '55%',
            center: ['50%', '50%'], 
            data: data.seriesData,
            itemStyle: {
                opacity: 0.85 
            },
            emphasis: {
                itemStyle: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)',
                opacity: 1 
                }
            }
            }
        ]
        };

        myChart3.setOption(option);

        var myChart4 = echarts.init(document.getElementById('pic5'));

        var inputData4 = JSON.parse('${healthState}');

        var data4 = {
        legendData: inputData.map(item => item.name),
        seriesData: inputData
        };

        option = {
        title: {
            text: 'Diseases',
            subtext: 'Fake Data',
            left: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: '{a} <br/>{b} : {c} ({d}%)'
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            right: '2%', 
            top: 20,
            bottom: 20,
            data: data.legendData
        },
        series: [
            {
            name: '姓名',
            type: 'pie',
            radius: '55%',
            center: ['50%', '50%'], 
            data: data.seriesData,
            itemStyle: {
                opacity: 0.85 
            },
            emphasis: {
                itemStyle: {
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)',
                opacity: 1 
                }
            }
            }
        ]
        };

        myChart4.setOption(option);

    // 定义一个函数来获取数据并更新图表
    /* function fetchDataAndUpdateChart(chartInstance, url) {
        $.ajax({
            url: url, // 后端数据 URL
            type: 'GET', // 请求方法
            dataType: 'json', // 预期服务器返回的数据类型
            success: function(data) {
                // 处理数据，转换为 ECharts 需要的格式
                const formattedData = formatDataForECharts(data);
    
                // 更新图表
                chartInstance.setOption({
                    series: [{
                        // 假设是饼图，更新其数据
                        data: formattedData
                    }]
                });
            },
            error: function(xhr, status, error) {
                console.error('Error fetching data:', error);
            }
        });
    }
    
    // 假设的数据格式转换函数
    function formatDataForECharts(data) {
        // 根据实际数据结构转换数据
        return data.map(item => ({
            name: item.name, // 数据项名称
            value: item.value // 数据项值
        }));
    }
    
    // 假设已经初始化了一个 ECharts 实例
    var myChart = echarts.init(document.getElementById('myChart'));
    
    // 调用函数，传入图表实例和数据 URL
    fetchDataAndUpdateChart(myChart, 'your-backend-url/api/data'); */



    </script>
    

</body>
</html>
