.class public Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;
.super Lcom/amazon/kcp/search/BookReaderSearchActivity;
.source "PeriodicalReaderSearchActivity.java"


# instance fields
.field private mSearchActivityCommon:Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;-><init>()V

    .line 21
    new-instance v0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->mSearchActivityCommon:Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;

    return-void
.end method

.method private emitSearchMetrics()V
    .locals 3

    .line 100
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Newsstand"

    const-string v2, "SearchResultClickedInPeriodicals"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addSearchResult(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->mSearchActivityCommon:Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->addSearchResult(Lcom/amazon/android/docviewer/BookSearchResult;)V

    return-void
.end method

.method public gotoResultLocation(Lcom/amazon/android/docviewer/BookSearchResult;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->mSearchActivityCommon:Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->gotoResultLocationAndOpenActivity(Lcom/amazon/android/docviewer/BookSearchResult;)V

    return-void
.end method

.method protected newResultsAdapter()Lcom/amazon/kcp/search/BookSearchResultsAdapter;
    .locals 3

    .line 33
    new-instance v0, Lcom/amazon/kcp/search/BookSearchResultsAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter;-><init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Z)V

    return-object v0
.end method

.method protected onPause()V
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    .line 80
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->onActivityPaused()V

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getMetricsHelper()Lcom/amazon/nwstd/metrics/IMetricsHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getMetricsHelper()Lcom/amazon/nwstd/metrics/IMetricsHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/metrics/IMetricsHelper;->pauseSession()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 64
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->getCurrentBook()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getReplicaBehaviorMetricsHelper()Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/ReplicaBehaviorMetricsHelper;->onActivityResumed()V

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getMetricsHelper()Lcom/amazon/nwstd/metrics/IMetricsHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getMetricsHelper()Lcom/amazon/nwstd/metrics/IMetricsHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/metrics/IMetricsHelper;->startOrResumeSession()V

    :cond_1
    return-void
.end method

.method public readyToDisplayResult()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->mSearchActivityCommon:Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->readyToDisplayResult()Z

    move-result v0

    return v0
.end method

.method public requiresRegistration()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->mSearchActivityCommon:Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->requiresRegistration()Z

    move-result v0

    return v0
.end method

.method protected shouldNavigateToSearchItem(Lcom/amazon/android/docviewer/BookSearchResult;)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->mSearchActivityCommon:Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivityCommon;->shouldNavigateToSearchItem(Lcom/amazon/android/docviewer/BookSearchResult;)Z

    move-result p1

    return p1
.end method

.method protected startSearch()V
    .locals 0

    .line 95
    invoke-super {p0}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->startSearch()V

    .line 96
    invoke-direct {p0}, Lcom/amazon/kcp/search/PeriodicalReaderSearchActivity;->emitSearchMetrics()V

    return-void
.end method
