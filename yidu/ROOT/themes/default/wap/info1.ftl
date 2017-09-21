<#include "base.ftl"/>

<#macro titleContent>
<title>${article.articlename?html}|${article.articlename?html}最新章节|${article.articlename?html}TXT下载</title>
<meta name="keywords" content="${article.articlename?html},${article.articlename?html}最新章节,${article.articlename?html}TXT下载,${article.articlename?html}无广告,${getText("label.system.name")}" />
<meta name="description" content="《${article.articlename?html}》情节跌宕起伏、扣人心弦，是一本情节与文笔俱佳的<#if article.category!=0>${categorymap[article.category?c]}</#if>小说，${getText("label.system.name")}免费提供${article.articlename?html}最新的清爽干净的文字章节在线阅读!" />
    <!--360结构化-->
   <meta property="og:type" content="novel"/>
   <meta property="og:title" content="${article.articlename?html}"/>
   <meta property="og:description" content="<#if (article.intro ?length != 0)>${article.intro?html}<#else>暂无简介</#if>"/>
   <meta property="og:image" content="http://m.kaixinwx.com${article.imgUrl}"/>
   <meta property="og:novel:category" content="<#if article.category!=0>${article.categoryStr}</#if>"/>
   <meta property="og:novel:author" content="${article.author?html}"/>
   <meta property="og:novel:book_name" content="${article.articlename?html}"/>
   <meta property="og:novel:read_url" content="http://m.kaixinwx.com${article.url}"/>

   <!--选填-->
   <meta property="og:novel:status" content="<#if article.fullflag>完结<#else>连载中</#if>"/>
   <meta property="og:novel:update_time" content="${article.lastupdate?string("yyyy-MM-dd HH:mm")}"/>
   <meta property="og:novel:click_cnt" content="${article.allvisit?c}"/>
   <meta property="og:novel:latest_chapter_name" content="${article.lastchapter}"/>
   <meta property="og:novel:latest_chapter_url" content="http://m.kaixinwx.com${article.lastChapterUrl}"/>

</#macro>

<#macro content>
    <div class="box m10" style="padding:10px 0">
        <div class="info i4" style="border-bottom:none;">
            <a href="javascript:;">
                <img src="<#if article.imgUrl ?? >${article.imgUrl}</#if>" alt="${article.articlename?html}"/>
                <h3>${article.articlename?html}</h3>
                <p>作者：${article.author?html}</p>
                <p>类别：<#if article.category!=0>${categorymap[article.category?c]}</#if></p>
                <p>字数：<#if article.size ??>${article.size}<#else>0</#if></p>
                <p>点击：${article.allvisit}</p>
                <#if article.fullflag><em id="isWanjie" class="wj4"></em></#if>
            </a>
        </div>
        <div class="m10">
            <ul class="group g3">
                <li><a class="button blue r3" href="#chapters">开始阅读</a></li>
                <li><a class="button color2 r3" href="javascript:setShelf();" id="lnkShelf" data-value="0">加入书架</a></li>
            </ul>
        </div>
    </div>

    <div id="panels" class="m2">
        <div class="box"> 
            <div class="new">
                <a href="${encodeURL("/reader?subdir=${article.subdir?c}&articleno=${article.articleno?c}&chapterno=${article.lastchapterno?c}")}">
                    <p class="name">最新章节：<#if article.lastchapter?? >${article.lastchapter?html}</#if></p>
                    <p class="time">更新时间：${article.lastupdate?string("yyyy-MM-dd HH:mm:ss")}</p>
                </a>
            </div>
            <div class="line"></div>
            <div class="intro box">
                ${article.introForHtml}
            </div>
            <div class="sw">
                <a id="showAll" href="javascript:;" data-value="0">显示全部</a>
            </div>
        </div>
    </div>
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- kaixinwx-手机-简介1 -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-0918341902931277"
     data-ad-slot="4651733141"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
   <div class="m10">
            <ul id="tejia" class="group g1">
                <li><span class="button blue r3">最新章节列表</span></li>
            </ul>
    </div>

    <div class="m2">
        <div class="m2">
            <ul class="list">
<#list chapterList?reverse as chapter><#if (chapter_index lt 6)><li><a href="${chapter.url}">${chapter.chaptername}</a></li></#if></#list>
	   </ul>
        </div>
    </div>

	 <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- kaixinwx-手机-简介3 -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-0918341902931277"
     data-ad-slot="7605199542"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script> 

    <a name="chapters"></a>
    <div class="m10">
            <ul id="tejia" class="group g1">
                <li><span class="button blue r3">全部章节列表</span></li>
            </ul>
    </div>

    <div class="m2">
        <div class="title">
            共<span id="spnChapters"><#if chapterList?? >${chapterList?size}<#else>0 </#if></span>章节
            <a id="sort" class="more2" data-value="0">↓正序排列</a>
        </div>
        <div class="m2">
            <ul class="list" id="chapterlist">
		<#list chapterList as chapter><#if (chapter_index lt 10)><li><a href="${chapter.url}">${chapter.chaptername}</a></li></#if></#list>
	   </ul>
        </div>
        <div class="paging">
            <ul>
                <li data-value="1"></li>
                <li data-value="2"></li>
                <li><select id="selPage"></select></li>
                <li data-value="3"></li>
                <li data-value="4"></li>
            </ul>
        </div>
    </div>

<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- kaixinwx-手机-简介2 -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-0918341902931277"
     data-ad-slot="6128466345"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>

   <div class="m10">
            <ul id="tejia" class="group g1">
                <li><span class="button blue r3">站长推荐</span></li>
            </ul>
    </div>

    <div class="m2">
        <div class="m2">
            <ul class="list">
<#list blocks.info_recommand_list as article><#if (article_index lt 5)><li><a href="${article.url}">${article.articlename}</a>&nbsp;最新章节：<a href="${article.lastChapterUrl}">${article.lastchapter}</a></li></#if></#list>
	   </ul>
        </div>
    </div>

  

       <div class="m10">
            <ul id="tejia" class="group g1">
                <li><span class="button blue r3">随机推荐</span></li>
            </ul>
    </div>

    <div class="m2">
        <div class="m2">
            <ul class="list">
<#list blocks.info_random_recommand_list as article><#if (article_index lt 5)><li><a href="${article.url}">${article.articlename}</a>&nbsp;最新章节：<a href="${article.lastChapterUrl}">${article.lastchapter}</a></li></#if></#list>
	   </ul>
        </div>
    </div>


</#macro>

<#macro customizefooter>
    <script type="text/javascript">
        var _articleno = parseInt(${article.articleno?c});
        var _size = parseInt(10);
        var _index = 0;
        var _hisgoryId = 0;
        var _sort = 1;
        var _isFirst = 0;
        var _pages = 0;
        var _userid = 0;
        <#if loginUser?? >
            _userid = parseInt(${loginUser.userno?c});
        </#if>
        // 加载第一页
        getDirectory(0);
    </script>

</#macro>
