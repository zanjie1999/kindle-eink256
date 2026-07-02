.class public Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;
.super Lcom/amazon/falkor/FalkorJSInterface;
.source "EndOfEpisodeController.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final messageQueue:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final nextEpisodeInfoManager:Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

.field private final storeOpenerFactory:Lcom/amazon/kindle/store/StoreOpenerFactory;


# direct methods
.method public constructor <init>(Lkotlin/Lazy;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;Lcom/amazon/kindle/store/StoreOpenerFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ">;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;",
            "Lcom/amazon/kindle/store/StoreOpenerFactory;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "messageQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kindleReaderSDK"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "nextEpisodeInfoManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0, p2}, Lcom/amazon/falkor/FalkorJSInterface;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->messageQueue:Lkotlin/Lazy;

    iput-object p3, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->nextEpisodeInfoManager:Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

    iput-object p4, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->storeOpenerFactory:Lcom/amazon/kindle/store/StoreOpenerFactory;

    .line 335
    const-class p1, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$onFreeEpisodeOwnershipFailed(Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;)V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->onFreeEpisodeOwnershipFailed()V

    return-void
.end method

.method private final onFreeEpisodeOwnershipFailed()V
    .locals 3

    .line 393
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "FreeEpisodeOwnershipGrantedPerformanceKey"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getNEXT_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FreeEpisodeFailedToGrantOwnership"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->messageQueue:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;

    invoke-direct {v1}, Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public final actionStart(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "payloadJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    .line 340
    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getNEXT_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NextEpisodeButtonTapped"

    .line 339
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "FreeEpisodeOwnershipGrantedPerformanceKey"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "NextEpisodePerformanceKey"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 346
    sget-object p1, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitNextEpisodeTapped(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 347
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->messageQueue:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/falkor/event/NextEpisodeClickEvent;

    invoke-direct {v0}, Lcom/amazon/falkor/event/NextEpisodeClickEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public final addToLibrary()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->messageQueue:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/falkor/event/FalkorATLEvent;

    invoke-direct {v1}, Lcom/amazon/falkor/event/FalkorATLEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method protected getTAG()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final nextEpisode(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "payloadJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->nextEpisodeInfoManager:Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

    invoke-virtual {p1}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;->getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/falkor/models/FalkorEpisode;->isFree()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 359
    :goto_0
    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->nextEpisodeInfoManager:Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

    invoke-virtual {v1}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;->getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/falkor/models/FalkorEpisode;->getHasOwnership()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 360
    :goto_1
    iget-object v2, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->nextEpisodeInfoManager:Lcom/amazon/falkor/download/NextEpisodeInfoDownloadManager;

    invoke-virtual {v2}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;->getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/falkor/models/FalkorEpisode;->getAsin()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    .line 363
    sget-object v2, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

    invoke-virtual {v2}, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isEpisodeInfoErrorDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    .line 369
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 370
    new-instance p1, Lcom/amazon/falkor/FalkorBook;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/falkor/FalkorBook;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 371
    new-instance v1, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface$nextEpisode$onSuccess$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface$nextEpisode$onSuccess$1;-><init>(Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;Ljava/lang/String;)V

    .line 372
    new-instance v0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface$nextEpisode$onFailed$1;

    invoke-direct {v0, p0}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface$nextEpisode$onFailed$1;-><init>(Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;)V

    .line 373
    new-instance v2, Lcom/amazon/falkor/download/FreeEpisodeOwnershipDownloadManager;

    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lcom/amazon/falkor/download/FreeEpisodeOwnershipDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 374
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getNEXT_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FreeEpisodeOwnershipRequestEvent"

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v2, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    goto :goto_3

    .line 377
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 378
    :goto_2
    sget-object v1, Lcom/amazon/falkor/FalkorBookOpenManager;->INSTANCE:Lcom/amazon/falkor/FalkorBookOpenManager;

    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/amazon/falkor/FalkorBookOpenManager;->openBook(Ljava/lang/String;ZLcom/amazon/kindle/krx/IKindleReaderSDK;)V

    :goto_3
    return-void

    .line 364
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->messageQueue:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;

    invoke-direct {v0}, Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 365
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getNEXT_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReaderNextEpisodePayloadFailure"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onFreeEpisodeOwnershipSuccessful(Ljava/lang/String;)V
    .locals 4

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    .line 385
    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getNEXT_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FreeEpisodeGrantOwnershipPerformanceEvent"

    const-string v3, "FreeEpisodeOwnershipGrantedPerformanceKey"

    .line 384
    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    sget-object v0, Lcom/amazon/falkor/FalkorBookOpenManager;->INSTANCE:Lcom/amazon/falkor/FalkorBookOpenManager;

    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/amazon/falkor/FalkorBookOpenManager;->openBook(Ljava/lang/String;ZLcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method public final openComments(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "payloadJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/FalkorJSInterface;->parsePayloadJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 434
    sget-object v0, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    const-string/jumbo v1, "url"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v1, v3

    :cond_0
    check-cast v1, Ljava/lang/String;

    const-string v2, "asin"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getCommentsPageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KINDLE VELLA"

    const-string v1, "falkorComments"

    .line 437
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->openWebPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final openWebPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string/jumbo v1, "readerSDK.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 412
    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->storeOpenerFactory:Lcom/amazon/kindle/store/StoreOpenerFactory;

    if-nez v1, :cond_0

    goto :goto_1

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    const-string/jumbo v2, "readerSDK.applicationManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    const-string/jumbo v3, "readerSDK.applicationManager.deviceInformation"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getEncryptedDSN()Ljava/lang/String;

    move-result-object v7

    .line 417
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v8

    .line 418
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v1, v2, :cond_1

    const-string v1, "dark"

    goto :goto_0

    :cond_1
    const-string v1, "light"

    :goto_0
    move-object v9, v1

    .line 419
    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->storeOpenerFactory:Lcom/amazon/kindle/store/StoreOpenerFactory;

    sget-object v4, Lcom/amazon/falkor/utils/FalkorUrlUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorUrlUtils;

    const-string v2, "eid"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "deviceType"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/falkor/utils/FalkorUrlUtils;->getFalkorStorefrontUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createUrlOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 420
    invoke-interface {p1, p3}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 421
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void

    .line 413
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;->messageQueue:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance p2, Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;

    invoke-direct {p2}, Lcom/amazon/falkor/event/EOEWebViewLoadFailureEvent;-><init>()V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
