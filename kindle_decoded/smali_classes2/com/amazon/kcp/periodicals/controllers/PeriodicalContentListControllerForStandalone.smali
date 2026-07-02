.class public Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;
.super Ljava/lang/Object;
.source "PeriodicalContentListControllerForStandalone.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

.field private mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mContext:Landroid/content/Context;

    .line 29
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 30
    new-instance v0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone$1;-><init>(Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;)V

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

    return-void
.end method


# virtual methods
.method public getEventHandler()Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mEventHandler:Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    return-void
.end method

.method public startReaderAndFinishIfRequired(I)V
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 73
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ReaderController;

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ReaderController;->getReaderActivitySubclass(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/Class;

    move-result-object v1

    .line 76
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    const-string v3, "ReturnFromToc"

    .line 77
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageForFragmentPosition(Ljava/lang/Integer;)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v0

    .line 80
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v3

    sget-object v4, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    const-string v5, "ViewMode"

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 81
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    const-string p1, "ReplicaMode"

    .line 82
    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result p1

    const-string v0, "PageNumber"

    .line 87
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v0, "TextMode"

    .line 90
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Position"

    .line 91
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_3

    .line 95
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_PORTRAIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 96
    invoke-static {p1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    goto :goto_1

    .line 97
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 98
    sget-object p1, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_ARTICLE_FROM_LIST_OF_ARTICLES_LANDSCAPE:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    .line 99
    invoke-static {p1}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    :cond_4
    :goto_1
    const/high16 p1, 0x24000000

    .line 101
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startReaderOnCoverPage()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v0, v1, :cond_0

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mDocViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderController;->getReaderActivitySubclass(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/Class;

    move-result-object v0

    .line 120
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    const-string v2, "ReturnFromToc"

    .line 121
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "ViewMode"

    const-string v2, "ReplicaMode"

    .line 122
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v2, "PageNumber"

    .line 124
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 126
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mContext:Landroid/content/Context;

    const-class v2, Lcom/amazon/kcp/periodicals/CoverActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    const/high16 v0, 0x24000000

    .line 128
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
