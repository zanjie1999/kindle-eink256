.class public Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;
.super Ljava/lang/Object;
.source "PerfMetricEvent.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public additionalText:Ljava/lang/String;

.field public endTime:J

.field public eventTag:Ljava/lang/String;

.field public startTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->eventTag:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->additionalText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;)I
    .locals 4

    .line 90
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->getDifference()J

    move-result-wide v0

    .line 91
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->getDifference()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->compareTo(Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 62
    :cond_1
    const-class v2, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 64
    :cond_2
    check-cast p1, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;

    .line 65
    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->additionalText:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 67
    iget-object v2, p1, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->additionalText:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 70
    :cond_3
    iget-object v3, p1, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->additionalText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 72
    :cond_4
    iget-wide v2, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->endTime:J

    iget-wide v4, p1, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->endTime:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    return v1

    .line 74
    :cond_5
    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->eventTag:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 76
    iget-object v2, p1, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->eventTag:Ljava/lang/String;

    if-eqz v2, :cond_7

    return v1

    .line 79
    :cond_6
    iget-object v3, p1, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->eventTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 81
    :cond_7
    iget-wide v2, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->startTime:J

    iget-wide v4, p1, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->startTime:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public getDifference()J
    .locals 4

    .line 112
    iget-wide v0, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->endTime:J

    iget-wide v2, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public hashCode()I
    .locals 8

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->additionalText:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 48
    iget-wide v3, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->endTime:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    xor-long/2addr v3, v6

    long-to-int v4, v3

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget-object v3, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->eventTag:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 50
    iget-wide v1, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->startTime:J

    ushr-long v3, v1, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->eventTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->additionalText:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/metrics/PerfMetricEvent;->additionalText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
