.class public Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;
.super Ljava/lang/Object;
.source "MetricsRecorderProvider.java"


# instance fields
.field private mClientName:Ljava/lang/String;

.field private mDirectedId:Ljava/lang/String;

.field private final mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

.field private final mMetricsProgramName:Lcom/amazon/whisperjoin/metrics/MetricsProgramName;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/MetricsFactory;Lcom/amazon/whisperjoin/metrics/MetricsProgramName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    .line 20
    iput-object p2, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->mMetricsProgramName:Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    .line 21
    iput-object p3, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->mDirectedId:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->mClientName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMetricsRecorder(Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;
    .locals 8

    .line 40
    new-instance v7, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->mMetricsFactory:Lcom/amazon/client/metrics/common/MetricsFactory;

    iget-object v3, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->mMetricsProgramName:Lcom/amazon/whisperjoin/metrics/MetricsProgramName;

    iget-object v4, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->mDirectedId:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->mClientName:Ljava/lang/String;

    new-instance v6, Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;

    invoke-direct {v6}, Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;-><init>()V

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;-><init>(Lcom/amazon/client/metrics/common/MetricsFactory;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;Lcom/amazon/whisperjoin/metrics/MetricsProgramName;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/metrics/MetricTimerWrapper;)V

    return-object v7
.end method
