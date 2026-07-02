.class public Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;
.super Ljava/lang/Object;
.source "PeriodicalReaderSearchActivityCommon.java"


# instance fields
.field private final mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    return-void
.end method

.method private getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private openReaderActivity(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    iget-object v1, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object v1, v1, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderController;->getReaderActivitySubclass(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/Class;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string v0, "ReturnFromSearch"

    .line 86
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "ViewMode"

    const-string v0, "TextMode"

    .line 87
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/high16 p1, 0x20000000

    .line 91
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x4000000

    .line 92
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    iget-object p1, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 97
    iget-object p1, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected addSearchResult(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getArticleAtPosition(I)Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->containsChapterHeader(Lcom/amazon/android/docviewer/ITOCItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->addChapterHeader(Lcom/amazon/android/docviewer/ITOCItem;)V

    .line 45
    new-instance v1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;-><init>(Ljava/lang/String;IZ)V

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->addResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->resultsAdapter:Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;->addResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    return-void
.end method

.method protected gotoResultLocationAndOpenActivity(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->mReaderSearchActivity:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->stopSearch()V

    .line 67
    invoke-interface {p1}, Lcom/amazon/kcp/reader/models/IGoto;->gotoLocation()V

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->openReaderActivity(Lcom/amazon/android/docviewer/BookSearchResult;)V

    return-void
.end method

.method public readyToDisplayResult()Z
    .locals 2

    .line 114
    invoke-direct {p0}, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requiresRegistration()Z
    .locals 1

    .line 126
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidApplicationController;

    .line 128
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    check-cast v0, Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldNavigateToSearchItem(Lcom/amazon/android/docviewer/BookSearchResult;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
