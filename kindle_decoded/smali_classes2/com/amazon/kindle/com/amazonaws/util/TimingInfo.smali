.class public Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;
.super Ljava/lang/Object;
.source "TimingInfo.java"


# static fields
.field private static final TIME_CONVERSION:D = 1000.0


# instance fields
.field private endTimeNano:Ljava/lang/Long;

.field private final startEpochTimeMilli:Ljava/lang/Long;

.field private final startTimeNano:J


# direct methods
.method protected constructor <init>(Ljava/lang/Long;JLjava/lang/Long;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->startEpochTimeMilli:Ljava/lang/Long;

    .line 158
    iput-wide p2, p0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->startTimeNano:J

    .line 159
    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    return-void
.end method

.method public static durationMilliOf(JJ)D
    .locals 1

    .line 261
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr p2, p0

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide p2, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static startTiming()Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;
    .locals 5

    .line 73
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static startTimingFullSupport()Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;
    .locals 5

    .line 83
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfoFullSupport;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static startTimingFullSupport(J)Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;
    .locals 2

    .line 95
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfoFullSupport;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, v1}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfoFullSupport;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method

.method public static unmodifiableTimingInfo(JLjava/lang/Long;)Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;
    .locals 2

    .line 133
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfoUnmodifiable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfoUnmodifiable;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public addSubMeasurement(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;)V
    .locals 0

    return-void
.end method

.method public endTiming()Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;
    .locals 2

    .line 311
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    return-object p0
.end method

.method public getAllCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 374
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getEndTimeNano()J
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getStartTimeNano()J
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->startTimeNano:J

    return-wide v0
.end method

.method public getSubMeasurementsByName()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;",
            ">;>;"
        }
    .end annotation

    .line 359
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getTimeTakenMillis()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->getTimeTakenMillisIfKnown()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getTimeTakenMillisIfKnown()Ljava/lang/Double;
    .locals 4

    .line 249
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->isEndTimeKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->startTimeNano:J

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    .line 250
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->durationMilliOf(JJ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final isEndTimeKnown()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->endTimeNano:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCounter(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 292
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;->getTimeTakenMillis()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
