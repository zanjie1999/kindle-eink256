.class public Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;
.super Ljava/lang/Object;
.source "AWSRequestMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final timingInfo:Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->startTiming()Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    return-void
.end method


# virtual methods
.method public addProperty(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public endEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    .locals 0

    return-void
.end method

.method public final getTimingInfo()Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;->timingInfo:Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    return-object v0
.end method

.method public incrementCounter(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    .locals 0

    return-void
.end method

.method public log()V
    .locals 0

    return-void
.end method

.method public setCounter(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;J)V
    .locals 0

    return-void
.end method

.method public startEvent(Lcom/amazon/kindle/com/amazonaws/metrics/MetricType;)V
    .locals 0

    return-void
.end method
