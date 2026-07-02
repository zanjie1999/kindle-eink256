.class public final Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter$convertSampleToFull$1;
.super Ljava/lang/Object;
.source "SampleEpisodeController.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IDownloadStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->convertSampleToFull()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter$convertSampleToFull$1;->this$0:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter$convertSampleToFull$1;->this$0:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    invoke-static {v0}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->access$isFailed$p(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 439
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter$convertSampleToFull$1;->this$0:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    invoke-static {v0}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->access$getMessageQueue$p(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/falkor/event/UnlockEpisodeFailureEvent;

    invoke-direct {v1}, Lcom/amazon/falkor/event/UnlockEpisodeFailureEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 440
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter$convertSampleToFull$1;->this$0:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    invoke-static {v0}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->access$getSdk$p(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getUNLOCK_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnlockEpisodeDownloadFailed"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProgressChange(I)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 430
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter$convertSampleToFull$1;->this$0:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    invoke-static {v0}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->access$isFailed$p(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 431
    sget-object v0, Lcom/amazon/falkor/FalkorBookOpenManager;->INSTANCE:Lcom/amazon/falkor/FalkorBookOpenManager;

    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter$convertSampleToFull$1;->this$0:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    invoke-static {v1}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->access$getFullBook$p(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)Lcom/amazon/falkor/FalkorBook;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter$convertSampleToFull$1;->this$0:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    invoke-static {v2}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->access$getSdk$p(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/falkor/FalkorBookOpenManager;->openBookWithoutOneTap(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter$convertSampleToFull$1;->this$0:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    invoke-static {v0}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->access$getMessageQueue$p(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/falkor/event/UnlockEpisodeFailureEvent;

    invoke-direct {v1}, Lcom/amazon/falkor/event/UnlockEpisodeFailureEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 433
    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter$convertSampleToFull$1;->this$0:Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;

    invoke-static {v0}, Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;->access$getSdk$p(Lcom/amazon/falkor/bottomsheet/FalkorSampleToFullConverter;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getUNLOCK_EPISODE_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnlockEpisodeOpenFailed"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
