.class public Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;
.super Ljava/lang/Object;
.source "PeriodicalContentListController.java"


# instance fields
.field private mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

.field private mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

.field private mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 34
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    .line 35
    new-instance v0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController$1;-><init>(Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

    return-void
.end method


# virtual methods
.method public getEventHandler()Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

    return-object v0
.end method

.method public initialize(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    .line 56
    iput-object p2, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    return-void
.end method

.method public startReaderAndFinishIfRequired(I)V
    .locals 6

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 75
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageForFragmentPosition(Ljava/lang/Integer;)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    .line 77
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 78
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 82
    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    .line 83
    sget-object v0, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->NORMAL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    .line 84
    new-instance v2, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {v2, p1, v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(ILcom/amazon/android/docviewer/mapper/PageIndex$PageType;)V

    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {v1, v2, v5, v4}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V

    .line 88
    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->reportOpenArticleInImageViewFromTOCMetrics()V

    .line 89
    invoke-virtual {v1, v4, v5}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 94
    invoke-virtual {v1, p1, v5, v4}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextViewAt(IZZ)V

    .line 95
    invoke-virtual {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->reportOpenArticleInTextViewFromTOCMetrics()V

    .line 96
    invoke-virtual {v1, v4, v5}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    .line 99
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v5, :cond_4

    .line 100
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_PORTRAIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 101
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p1, v0, v5}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 103
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_LANDSCAPE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 104
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {p1, v0, v5}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public startReaderOnCoverPage()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v0, v1, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;->NORMAL:Lcom/amazon/android/docviewer/mapper/PageIndex$PageType;

    .line 117
    new-instance v1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(ILcom/amazon/android/docviewer/mapper/PageIndex$PageType;)V

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    .line 121
    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V

    .line 122
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->reportOpenArticleInImageViewFromTOCMetrics()V

    .line 123
    invoke-virtual {v0, v2, v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->setVisibleOverlays(IZ)Z

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    const-class v2, Lcom/amazon/kcp/periodicals/CoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
