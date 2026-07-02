.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;
.super Ljava/lang/Object;
.source "FFSProvisioningServiceMetricsRecorder.java"


# instance fields
.field private mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

.field private final mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

.field private mSetupWorkflowStartTime:J

.field private mWorkflowStartTime:J


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 77
    iput-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mSetupWorkflowStartTime:J

    .line 78
    iput-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mWorkflowStartTime:J

    .line 81
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    return-void
.end method


# virtual methods
.method public onApiDoesntRequireLocationPermissionForScan()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSConstraintApiRequiresLocationPermissionForScan"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    return-void
.end method

.method public onApiRequireLocationPermissionForScan(ZZ)V
    .locals 7

    .line 145
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "FFSConstraintApiRequiresLocationPermissionForScan"

    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    .line 149
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-string p1, "FFSConstraintAppLocationEnabledCount"

    invoke-virtual {v0, p1, v5, v6}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    .line 150
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v1, v3

    :goto_1
    const-string p2, "FFSConstraintSystemLocationEnabledCount"

    invoke-virtual {p1, p2, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    return-void
.end method

.method public onServiceStart()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mMetricsRecorderProvider:Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->FFS_PROVISIONING_SERVICE:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->getMetricsRecorder(Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSServiceStartCount"

    .line 86
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSServiceUptimeTotalMillis"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->startTimer(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceStop()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSServiceUptimeTotalMillis"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->stopTimer(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->close()V

    return-void
.end method

.method public onWorkflowBackoff(Ljava/lang/String;)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSWorkflowBackOffCount"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FFSWorkflowBackOffCount_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    .line 112
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mWorkflowStartTime:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mWorkflowStartTime:J

    sub-long/2addr v0, v2

    const-string v2, "FFSWorkflowBackOffDurationMillis"

    .line 113
    invoke-virtual {p1, v2, v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->addTimer(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onWorkflowError()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSWorkflowErrorCount"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    return-void
.end method

.method public onWorkflowSetupAttemptStart()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSWorkflowSetupAttemptCount"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mSetupWorkflowStartTime:J

    return-void
.end method

.method public onWorkflowSetupFailure()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSWorkflowSetupFailureCount"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    .line 133
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mSetupWorkflowStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 134
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mSetupWorkflowStartTime:J

    sub-long/2addr v1, v3

    const-string v3, "FFSWorkflowSetupFailureDurationMillis"

    .line 134
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->addTimer(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public onWorkflowSetupSuccess()V
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    const-string v1, "FFSWorkflowSetupSuccessCount"

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->incrementCounter(Ljava/lang/String;)V

    .line 125
    iget-wide v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mSetupWorkflowStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mCurrentRecorder:Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/FFSProvisioningServiceMetricsRecorder;->mSetupWorkflowStartTime:J

    sub-long/2addr v1, v3

    const-string v3, "FFSWorkflowSetupSuccessDurationMillis"

    .line 126
    invoke-virtual {v0, v3, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->addTimer(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
