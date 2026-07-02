.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;
.super Ljava/lang/Object;
.source "AutoDiscoveryMetricsRecorder.java"


# instance fields
.field private mControlledSetupReportSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

.field private mDevicesIneligibleForAutomatedSetupReportSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRecentlySetupDevicesReportSize:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mControlledSetupReportSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mDevicesIneligibleForAutomatedSetupReportSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mRecentlySetupDevicesReportSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    sget-object v0, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->FFS_PROVISIONING_SERVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-virtual {p1, v0}, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->getMetricsRecorder(Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    return-void
.end method

.method private ratchetValueUp(Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 2

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lt v0, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 89
    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_0

    return-void
.end method


# virtual methods
.method public onAutoDiscoveryStart()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSAutoDiscoveryStartCount"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSAutoDiscoveryUptimeTotalMillis"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->startTimer(Ljava/lang/String;)V

    return-void
.end method

.method public onAutoDiscoveryStop()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSAutoDiscoveryUptimeTotalMillis"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->stopTimer(Ljava/lang/String;)V

    return-void
.end method

.method public onControlledSetupReport(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mControlledSetupReportSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->ratchetValueUp(Ljava/util/concurrent/atomic/AtomicInteger;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mControlledSetupReportSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-double v1, v1

    const-string v3, "FFSAutoDiscoveryControlledSetupDeviceCount"

    .line 51
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    .line 54
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mDevicesIneligibleForAutomatedSetupReportSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-double v1, v1

    const-string v3, "FFSAutoDiscoveryIneligibleForAutomatedSetupDeviceCount"

    .line 54
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    .line 57
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mRecentlySetupDevicesReportSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-double v1, v1

    const-string v3, "FFSAutoDiscoveryRecentlySetupDeviceCount"

    .line 57
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    .line 60
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->close()V

    return-void
.end method

.method public onDevicesIneligibleForAutomatedSetupReport(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mDevicesIneligibleForAutomatedSetupReportSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->ratchetValueUp(Ljava/util/concurrent/atomic/AtomicInteger;I)V

    return-void
.end method

.method public onFailureReport()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSAutoDiscoveryFailureReportCount"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    return-void
.end method

.method public onGetCustomerProvisioneesSetupStatus()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSAutoDiscoveryClientSetupStatusRequestCount"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    return-void
.end method

.method public onRecentlySetupDevicesReport(I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->mRecentlySetupDevicesReportSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/AutoDiscoveryMetricsRecorder;->ratchetValueUp(Ljava/util/concurrent/atomic/AtomicInteger;I)V

    return-void
.end method
