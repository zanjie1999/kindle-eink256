.class public Lcom/amazon/android/docviewer/mobi/CachedPageProvider;
.super Ljava/lang/Object;
.source "CachedPageProvider.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/IPageProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
        "Lcom/amazon/android/docviewer/mobi/MobiPage;",
        ">;"
    }
.end annotation


# instance fields
.field private cachedPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

.field private noCachedPageExists:Z

.field private viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->noCachedPageExists:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getPage()Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/IDocumentPage;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 5

    monitor-enter p0

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isClosed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 29
    monitor-exit p0

    return-object v0

    .line 32
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->cachedPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->noCachedPageExists:Z

    if-nez v0, :cond_4

    const-string v0, "Creating cached page"

    const/4 v1, 0x1

    .line 33
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 35
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GET_CACHED_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->cacheFactory:Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 40
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 41
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v4

    invoke-static {v4}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v4

    .line 39
    invoke-virtual {v0, v2, v3, v4}, Lcom/amazon/kindle/krf/KRF/Reader/KindleCacheFactory;->getPageStartingWithCache(Ljava/lang/String;Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v0

    .line 42
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 43
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_GET_CACHED_PAGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "Creating cached page (cache miss)"

    .line 46
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 47
    iput-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->noCachedPageExists:Z

    .line 48
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "CachePage"

    const-string v2, "cache_page_miss"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_3
    new-instance v1, Lcom/amazon/android/docviewer/mobi/MobiPage;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 53
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getKRFExecutorService()Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lcom/amazon/android/docviewer/mobi/MobiPage;-><init>(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;ZLcom/amazon/android/docviewer/mobi/KRFExecutorService;)V

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->cachedPage:Lcom/amazon/android/docviewer/mobi/MobiPage;

    const-string v0, "Creating cached page (cache hit)"

    .line 54
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 55
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "CachePage"

    const-string v2, "cache_page_hit"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->cachedPage:Lcom/amazon/android/docviewer/mobi/MobiPage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPage(Lcom/amazon/android/docviewer/mobi/IPageProvider$PagePosition;)Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/CachedPageProvider;->getPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object p1

    return-object p1
.end method
