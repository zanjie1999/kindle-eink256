.class public abstract Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;
.super Lcom/amazon/falkor/download/FalkorDownloadManager;
.source "FalkorDownloadManagers.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/falkor/download/FalkorDownloadManager<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorDownloadManagers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorDownloadManagers.kt\ncom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager\n*L\n1#1,232:1\n*E\n"
.end annotation


# instance fields
.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/payment/PlayBillingUtils;)V
    .locals 2

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "playBillingUtils"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 136
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    .line 137
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method protected final getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method public final onConnectivityChange(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    const-string/jumbo v0, "sdk.readerManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "it"

    .line 143
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/falkor/download/SamplePaymentFlowsDisabledDownloadManager;->playBillingUtils:Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->retryIfNeeded(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_0
    return-void
.end method
