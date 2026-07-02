.class public Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;,
        Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;
    }
.end annotation


# static fields
.field private static final NANO_2_MILLIS:J = 0xf4240L


# instance fields
.field private runningState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

.field private splitState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

.field private startTime:J

.field private startTimeMillis:J

.field private stopTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->runningState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    .line 137
    sget-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->splitState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    return-void
.end method


# virtual methods
.method public getNanoTime()J
    .locals 4

    .line 338
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->runningState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 340
    :cond_0
    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 342
    :cond_1
    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_2

    .line 343
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->startTime:J

    :goto_0
    sub-long/2addr v0, v2

    return-wide v0

    .line 345
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal running state has occurred."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_3
    :goto_1
    iget-wide v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->startTime:J

    goto :goto_0
.end method

.method public getTime()J
    .locals 4

    .line 322
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->getNanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public isStarted()Z
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->runningState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->isStarted()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 222
    sget-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->runningState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    .line 223
    sget-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->splitState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$SplitState;

    return-void
.end method

.method public start()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->runningState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_1

    .line 181
    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    .line 184
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->startTime:J

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->startTimeMillis:J

    .line 186
    sget-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->runningState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch already started. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be reset before being restarted. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->runningState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->runningState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_2

    .line 207
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 209
    :cond_2
    sget-object v0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->runningState:Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch$State;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 417
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/StopWatch;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amazon/kindle/socialsharing/thirdparty/apache/commons/lang3/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
