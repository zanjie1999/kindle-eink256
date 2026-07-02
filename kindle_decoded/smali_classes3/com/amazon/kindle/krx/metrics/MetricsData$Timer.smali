.class public Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;
.super Ljava/lang/Object;
.source "MetricsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/metrics/MetricsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Timer"
.end annotation


# instance fields
.field end:J

.field freeText:Ljava/lang/String;

.field start:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J

    return-void
.end method


# virtual methods
.method public getFreeText()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->freeText:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 5

    .line 57
    iget-wide v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J

    .line 60
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J

    iget-wide v2, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->start:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 73
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->omitNullValues()Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->start:J

    const-string v3, "start"

    .line 75
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-wide v1, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->end:J

    const-string v3, "end"

    .line 76
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/kindle/krx/metrics/MetricsData$Timer;->freeText:Ljava/lang/String;

    const-string v2, "freeText"

    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 78
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
