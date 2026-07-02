.class final Lcom/amazon/android/docviewer/mobi/PeriodicalPageDrawable;
.super Lcom/amazon/android/docviewer/mobi/PageDrawable;
.source "PeriodicalPageDrawable.java"


# static fields
.field private static final SECTION_ARTICLE_TITLE_DIVIDER:Landroid/text/Spanned;


# instance fields
.field private mHasTitle:Z

.field private position:I

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "&nbsp;&middot;&nbsp;"

    .line 18
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/PeriodicalPageDrawable;->SECTION_ARTICLE_TITLE_DIVIDER:Landroid/text/Spanned;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;ZZ)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/android/docviewer/mobi/PageDrawable;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;ZZ)V

    .line 29
    iput-boolean p3, p0, Lcom/amazon/android/docviewer/mobi/PeriodicalPageDrawable;->mHasTitle:Z

    return-void
.end method


# virtual methods
.method getPageAuthor()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getPageTitle()Ljava/lang/String;
    .locals 5

    .line 44
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getViewer()Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    if-nez v0, :cond_1

    return-object v1

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getMobiPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v2

    if-nez v2, :cond_2

    .line 54
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PeriodicalPageDrawable;->title:Ljava/lang/String;

    return-object v0

    .line 56
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->getLastElementPositionId()I

    move-result v3

    .line 58
    iget v4, p0, Lcom/amazon/android/docviewer/mobi/PeriodicalPageDrawable;->position:I

    if-ne v4, v3, :cond_3

    .line 59
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PeriodicalPageDrawable;->title:Ljava/lang/String;

    return-object v0

    .line 61
    :cond_3
    iput v3, p0, Lcom/amazon/android/docviewer/mobi/PeriodicalPageDrawable;->position:I

    .line 63
    invoke-interface {v0, v3}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 68
    invoke-interface {v0}, Lcom/amazon/nwstd/toc/IArticleTOCItem;->getSection()Lcom/amazon/nwstd/toc/ISectionTOCItem;

    move-result-object v3

    goto :goto_0

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getViewer()Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getSectionAtCurrentPosition()Lcom/amazon/nwstd/toc/ISectionTOCItem;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 80
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getViewer()Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/KindleTOCLocator;->doesAnArticleStartOnGivenPage(Lcom/amazon/android/docviewer/IDocumentPage;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    invoke-interface {v3}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 86
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/android/docviewer/mobi/PeriodicalPageDrawable;->SECTION_ARTICLE_TITLE_DIVIDER:Landroid/text/Spanned;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    .line 91
    invoke-interface {v3}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 95
    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_8
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PeriodicalPageDrawable;->title:Ljava/lang/String;

    return-object v0
.end method

.method protected getTopOffsetForTitle()I
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$dimen;->periodical_title_offset_from_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
