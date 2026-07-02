.class public Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;
.super Ljava/lang/Object;
.source "FalkorEpisodeListPanelProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/ICustomPanelContentProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorEpisodeListPanelProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorEpisodeListPanelProvider.kt\ncom/amazon/falkor/panels/FalkorEpisodeListPanelProvider\n*L\n1#1,102:1\n*E\n"
.end annotation


# instance fields
.field private final currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

.field private currentEpisodeListViewController:Lcom/amazon/falkor/panels/EpisodeListViewController;

.field private final episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/EpisodeListDownloadHelper;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "episodeListDownloadHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEpisodeInfoManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    iput-object p3, p0, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;->get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/panels/PanelKey;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/panels/ICustomPanelRow;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 40
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 42
    invoke-interface {v5}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "TOCLoadingPerformanceKey"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 44
    new-instance p1, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;

    iget-object v1, p0, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v2, p0, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;->episodeListDownloadHelper:Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    iget-object v3, p0, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    move-object v0, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/falkor/panels/EpisodeListViewContainerRow;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/EpisodeListDownloadHelper;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;Lcom/amazon/kindle/krx/content/IBook;)V

    .line 45
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 41
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I
    .locals 0

    const/16 p1, 0xc8

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;->getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I

    move-result p1

    return p1
.end method

.method public final onConnectivityChange(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;->currentEpisodeListViewController:Lcom/amazon/falkor/panels/EpisodeListViewController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->onNetworkConnectivityChanged()V

    :cond_0
    return-void
.end method

.method public final setCurrentEpisodeListViewController(Lcom/amazon/falkor/panels/EpisodeListViewController;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;->currentEpisodeListViewController:Lcom/amazon/falkor/panels/EpisodeListViewController;

    return-void
.end method
