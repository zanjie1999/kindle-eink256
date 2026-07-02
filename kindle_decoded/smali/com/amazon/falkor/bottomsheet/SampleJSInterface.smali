.class public Lcom/amazon/falkor/bottomsheet/SampleJSInterface;
.super Lcom/amazon/falkor/FalkorJSInterface;
.source "SampleEpisodeController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSampleEpisodeController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SampleEpisodeController.kt\ncom/amazon/falkor/bottomsheet/SampleJSInterface\n*L\n1#1,492:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final converter:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

.field private final messageQueue:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/Lazy;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;",
            ">;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "messageQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-direct {p0, p2}, Lcom/amazon/falkor/FalkorJSInterface;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;->messageQueue:Lkotlin/Lazy;

    iput-object p3, p0, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;->converter:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    .line 346
    const-class p1, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final actionStart(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "payloadJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    .line 351
    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getUNLOCK_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnlockEpisodeButtonTapped"

    .line 350
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "LockedEpisodeGrantOwnershipPerformanceKey"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "UnlockEpisodePerformanceKey"

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 357
    sget-object p1, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitUnlockEpisodeTapped(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 358
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;->messageQueue:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/falkor/event/UnlockEpisodeClickEvent;

    invoke-direct {v0}, Lcom/amazon/falkor/event/UnlockEpisodeClickEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public final addToLibrary()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;->messageQueue:Lkotlin/Lazy;

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

    .line 346
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final unlockComplete(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "payloadJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isEpisodeInfoErrorDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;->messageQueue:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/falkor/event/UnlockEpisodeFailureEvent;

    invoke-direct {v0}, Lcom/amazon/falkor/event/UnlockEpisodeFailureEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/FalkorJSInterface;->parsePayloadJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "error"

    .line 374
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "LockedEpisodeGrantOwnershipPerformanceKey"

    if-nez v0, :cond_4

    .line 375
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    .line 376
    sget-object v2, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getUNLOCK_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LockedEpisodeOwnershipGrantedEvent"

    .line 375
    invoke-interface {v0, v2, v3, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "success"

    .line 380
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 381
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    const-string/jumbo v0, "nextEvent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 382
    :cond_2
    sget-object p1, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitUnlockEpisodeCompleted(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    if-eqz v1, :cond_3

    .line 384
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;->messageQueue:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/falkor/event/FaveEarnedEvent;

    invoke-direct {v0}, Lcom/amazon/falkor/event/FaveEarnedEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 386
    :cond_3
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;->converter:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->convertSampleToFull()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    return-void

    .line 390
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/amazon/falkor/FalkorJSInterface;->getReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getUNLOCK_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReaderUnlockEpisodePayloadFailure"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_5
    iget-object p1, p0, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;->messageQueue:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/falkor/event/UnlockEpisodeFailureEvent;

    invoke-direct {v0}, Lcom/amazon/falkor/event/UnlockEpisodeFailureEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
