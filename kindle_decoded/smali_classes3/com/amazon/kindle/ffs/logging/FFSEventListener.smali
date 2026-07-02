.class public final Lcom/amazon/kindle/ffs/logging/FFSEventListener;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub;
.source "FFSEventListener.kt"


# instance fields
.field private final ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

.field private mLogReceiver:Lcom/amazon/kindle/ffs/logging/IFFSLogReceiver;

.field private mMetricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/logging/IFFSLogReceiver;)V
    .locals 1

    const-string v0, "mLogReceiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/logging/FFSEventListener;->mLogReceiver:Lcom/amazon/kindle/ffs/logging/IFFSLogReceiver;

    .line 14
    sget-object p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/logging/FFSEventListener;->ffsPlugin:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    .line 15
    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getMetricsManager()Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/logging/FFSEventListener;->mMetricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    return-void

    .line 14
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/ffs/logging/FFSEventListener;->mLogReceiver:Lcom/amazon/kindle/ffs/logging/IFFSLogReceiver;

    invoke-interface {v0}, Lcom/amazon/kindle/ffs/logging/IFFSLogReceiver;->ffsProvisioningCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stackTrace"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/ffs/logging/FFSEventListener;->mLogReceiver:Lcom/amazon/kindle/ffs/logging/IFFSLogReceiver;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/ffs/logging/IFFSLogReceiver;->ffsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/amazon/kindle/ffs/logging/FFSEventListener;->mMetricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    const-string v2, "FFS_ZTS_FAILED"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportZTSFastMetrics$default(Lcom/amazon/kindle/ffs/metrics/MetricsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/ffs/logging/FFSEventListener;->mLogReceiver:Lcom/amazon/kindle/ffs/logging/IFFSLogReceiver;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/ffs/logging/IFFSLogReceiver;->ffsNext(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "DISCOVERY_STARTED"

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ffs/logging/FFSEventListener;->mMetricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    const-string v1, "FFS_ZTS_STARTED"

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportZTSFastMetrics$default(Lcom/amazon/kindle/ffs/metrics/MetricsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    const-string p2, "WORKFLOW_FAILURE"

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ffs/logging/FFSEventListener;->mMetricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    const-string v1, "FFS_ZTS_FAILED"

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportZTSFastMetrics$default(Lcom/amazon/kindle/ffs/metrics/MetricsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    const-string p2, "WORKFLOW_SUCCESS"

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ffs/logging/FFSEventListener;->mMetricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    const-string v1, "FFS_ZTS_SUCCESS"

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportZTSFastMetrics$default(Lcom/amazon/kindle/ffs/metrics/MetricsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    const-string p2, "WORKFLOW_STARTED"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ffs/logging/FFSEventListener;->mMetricsManager:Lcom/amazon/kindle/ffs/metrics/MetricsManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    const-string v1, "FFS_ZTS_DISCOVERED"

    invoke-static/range {v0 .. v6}, Lcom/amazon/kindle/ffs/metrics/MetricsManager;->reportZTSFastMetrics$default(Lcom/amazon/kindle/ffs/metrics/MetricsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x89ff41f -> :sswitch_3
        -0x6d5f49d -> :sswitch_2
        0x27b0fcea -> :sswitch_1
        0x623e78b2 -> :sswitch_0
    .end sparse-switch
.end method
