.class public Lcom/amazon/whisperjoin/metrics/MetricsRecorder;
.super Ljava/lang/Object;
.source "MetricsRecorder.java"


# static fields
.field private static final LATENCY:Ljava/lang/String; = "Latency"

.field private static final TAG:Ljava/lang/String; = "MetricsRecorder"

.field private static final WHISPER_JOIN_CLIENT:Ljava/lang/String; = "WhisperJoinV2Client"


# instance fields
.field protected mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

.field private mMetricTimerWrapper:Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;

.field protected mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

.field private mWhisperJoinMetricSourceName:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/client/metrics/common/MetricsFactory;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;Lcom/amazon/whisperjoin/metrics/MetricsProgramName;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    .line 34
    invoke-virtual {p3}, Lcom/amazon/whisperjoin/metrics/MetricsProgramName;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Lcom/amazon/client/metrics/common/MetricsFactory;->createMetricEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/client/metrics/common/MetricEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    .line 35
    iput-object p2, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mWhisperJoinMetricSourceName:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    .line 36
    iput-object p6, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricTimerWrapper:Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;

    const/4 p2, 0x0

    .line 38
    invoke-interface {p1, p2}, Lcom/amazon/client/metrics/common/MetricEvent;->setAnonymous(Z)V

    .line 39
    iget-object p1, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    invoke-interface {p1, p4}, Lcom/amazon/client/metrics/common/MetricEvent;->setNonAnonymousCustomerId(Ljava/lang/String;)V

    const-string p1, "WhisperJoinV2Client"

    .line 42
    invoke-virtual {p0, p1, p5}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordString(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private getAndStoreNewMetricsTimer(Ljava/lang/String;)Lcom/amazon/whisperjoin/metrics/MetricTimer;
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricTimerWrapper:Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;->getMetricTimer()Lcom/amazon/whisperjoin/metrics/MetricTimer;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricTimerWrapper:Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;->getMetricTimerFromProfilerMap(Ljava/lang/String;)Lcom/amazon/whisperjoin/metrics/MetricTimer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    sget-object v1, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replacing metric timer instance for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricTimerWrapper:Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;->storeMetricTimerInProfilerMap(Ljava/lang/String;Lcom/amazon/whisperjoin/metrics/MetricTimer;)V

    return-object v0
.end method

.method private getExistingMetricsTimer(Ljava/lang/String;)Lcom/amazon/whisperjoin/metrics/MetricTimer;
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricTimerWrapper:Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;->getMetricTimerFromProfilerMap(Ljava/lang/String;)Lcom/amazon/whisperjoin/metrics/MetricTimer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No metric timer found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addTimer(Ljava/lang/String;J)V
    .locals 3

    .line 102
    sget-object v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTimer(metricName:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], latency: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    long-to-double p2, p2

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/client/metrics/common/MetricEvent;->addTimer(Ljava/lang/String;D)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    iget-object v1, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    invoke-interface {v0, v1}, Lcom/amazon/client/metrics/common/MetricsFactory;->record(Lcom/amazon/client/metrics/common/MetricEvent;)V

    return-void
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 3

    .line 83
    sget-object v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incrementCounter(metricName:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, p1, v1, v2}, Lcom/amazon/client/metrics/common/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    return-void
.end method

.method public recordCounter(Ljava/lang/String;D)V
    .locals 3

    .line 66
    sget-object v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordCounter(metricName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], value: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    return-void
.end method

.method public recordString(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 78
    sget-object v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordString(metricName:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], value: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-interface {v0, p1, p2}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startProfiling(Ljava/lang/String;)V
    .locals 3

    .line 115
    sget-object v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startProfiling metricOperationName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->getAndStoreNewMetricsTimer(Ljava/lang/String;)Lcom/amazon/whisperjoin/metrics/MetricTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/metrics/MetricTimer;->start()V

    return-void
.end method

.method public startTimer(Ljava/lang/String;)V
    .locals 3

    .line 88
    sget-object v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimer(metricName:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->getAndStoreNewMetricsTimer(Ljava/lang/String;)Lcom/amazon/whisperjoin/metrics/MetricTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/metrics/MetricTimer;->start()V

    return-void
.end method

.method public stopProfiling(Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;Ljava/lang/String;)V
    .locals 4

    .line 127
    sget-object v0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopProfiling(metricOperationName: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0, p2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->getExistingMetricsTimer(Ljava/lang/String;)Lcom/amazon/whisperjoin/metrics/MetricTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/metrics/MetricTimer;->stop()J

    move-result-wide v0

    .line 131
    iget-object v2, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Latency"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    long-to-double v0, v0

    invoke-interface {v2, p2, v0, v1}, Lcom/amazon/client/metrics/common/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 134
    :cond_0
    sget-object p2, Lcom/amazon/whisperjoin/metrics/MetricsRecorder$1;->$SwitchMap$com$amazon$whisperjoin$metrics$WhisperJoinMetricName:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    sget-object p1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->SUCCESS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricName;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->close()V

    return-void
.end method

.method public stopTimer(Ljava/lang/String;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->getExistingMetricsTimer(Ljava/lang/String;)Lcom/amazon/whisperjoin/metrics/MetricTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/metrics/MetricTimer;->stop()J

    move-result-wide v0

    .line 96
    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->addTimer(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
