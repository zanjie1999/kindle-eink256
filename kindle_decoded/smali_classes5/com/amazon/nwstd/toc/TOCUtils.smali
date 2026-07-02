.class public Lcom/amazon/nwstd/toc/TOCUtils;
.super Ljava/lang/Object;
.source "TOCUtils.java"


# direct methods
.method public static createBitmapForArticleItem(Lcom/amazon/nwstd/toc/IPeriodicalTOC;Lcom/amazon/nwstd/toc/IArticleTOCItem;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 35
    invoke-interface {p0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->hasReplicaPageItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {p1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/nwstd/toc/IArticleTOCItem;->getRelatedReplicaPageId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p0, v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getReplicaPageById(Ljava/lang/String;)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getThumbnailImage()Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 46
    invoke-static {p2, p3}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(II)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/android/docviewer/ImageProvider;->createBitmapAndClose(Lcom/amazon/android/docviewer/ImageProvider;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 49
    :cond_1
    invoke-interface {p1}, Lcom/amazon/nwstd/toc/IArticleTOCItem;->getImage()Lcom/amazon/android/docviewer/ImageProvider;

    move-result-object p0

    invoke-static {p2, p3}, Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;->shrinkToFit(II)Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/android/docviewer/ImageProvider;->createBitmapAndClose(Lcom/amazon/android/docviewer/ImageProvider;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getCurrentListViewIdx(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)I
    .locals 3

    .line 111
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 112
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    .line 114
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v1, v2, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReplicaViewNavigator()Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/android/docviewer/viewpager/IReplicaViewNavigator;->getCurrentPageIndex()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 119
    :cond_0
    invoke-static {v0, p0}, Lcom/amazon/nwstd/toc/TOCUtils;->getListViewIdxFromReplicaPageNumber(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;I)I

    move-result p0

    goto :goto_0

    .line 121
    :cond_1
    invoke-static {v0}, Lcom/amazon/nwstd/toc/TOCUtils;->getListViewIdxFromCurrentTextArticle(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static getHTMLFormattedTitleText(Lcom/amazon/nwstd/toc/IArticleTOCItem;II)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b><font color=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/nwstd/utils/NewsstandUIUtils;->getHtmlColor(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</font></b><br><font color=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {p2}, Lcom/amazon/nwstd/utils/NewsstandUIUtils;->getHtmlColor(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/nwstd/toc/IArticleTOCItem;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</font>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getListViewIdxFromCurrentTextArticle(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)I
    .locals 3

    .line 166
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    .line 167
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object p0

    .line 169
    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCSections()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getSectionAtCurrentPosition()Lcom/amazon/nwstd/toc/ISectionTOCItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 170
    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getLastArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static getListViewIdxFromReplicaPageNumber(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;I)I
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    .line 136
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object p0

    :goto_0
    if-lez p1, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageAtPosition(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result v1

    if-gtz v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 149
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageAtPosition(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result v1

    if-lez v1, :cond_2

    .line 150
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageAtPosition(I)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/nwstd/toc/IReplicaPageItem;->getArticleFragmentPosition()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object p0

    .line 151
    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCSections()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0}, Lcom/amazon/nwstd/toc/IArticleTOCItem;->getSection()Lcom/amazon/nwstd/toc/ISectionTOCItem;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 152
    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCArticles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    return p0
.end method
