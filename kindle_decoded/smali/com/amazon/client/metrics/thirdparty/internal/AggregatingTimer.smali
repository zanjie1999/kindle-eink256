.class public Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;
.super Ljava/lang/Object;
.source "AggregatingTimer.java"


# static fields
.field private static final TIMEUNIT:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private final mAllowRunningTimers:Z

.field private mLastUpdatedTime:J

.field private mRunningCount:I

.field private mTotalElapsedTime:D

.field private mTotalSamplesCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->TIMEUNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mRunningCount:I

    .line 42
    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalSamplesCount:I

    const-wide/16 v0, 0x0

    .line 44
    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mLastUpdatedTime:J

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalElapsedTime:D

    .line 57
    iput-boolean p1, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mAllowRunningTimers:Z

    return-void
.end method


# virtual methods
.method public addTime(DI)V
    .locals 2

    .line 98
    invoke-static {p1, p2}, Lcom/amazon/client/metrics/thirdparty/internal/DoubleValidator;->validateDouble(D)V

    .line 99
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalElapsedTime:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalElapsedTime:D

    .line 100
    iget p1, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalSamplesCount:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalSamplesCount:I

    return-void
.end method

.method protected getCurrentTimeMillis()J
    .locals 2

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedTime()D
    .locals 9

    .line 118
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mRunningCount:I

    if-lez v0, :cond_1

    .line 119
    iget-boolean v1, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mAllowRunningTimers:Z

    if-eqz v1, :cond_0

    .line 123
    iget-wide v1, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalElapsedTime:D

    int-to-long v3, v0

    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->getCurrentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mLastUpdatedTime:J

    sub-long/2addr v5, v7

    mul-long v3, v3, v5

    long-to-double v3, v3

    add-double/2addr v1, v3

    return-wide v1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get elapsed time - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mRunningCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " start calls not matched with stop."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    iget-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalElapsedTime:D

    return-wide v0
.end method

.method public getSamples()I
    .locals 2

    .line 134
    iget-boolean v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mAllowRunningTimers:Z

    if-nez v0, :cond_0

    .line 135
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalSamplesCount:I

    return v0

    .line 137
    :cond_0
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalSamplesCount:I

    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mRunningCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public numRunningTimers()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mRunningCount:I

    return v0
.end method

.method public startTimer()V
    .locals 9

    .line 66
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 68
    iget v2, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mRunningCount:I

    if-lez v2, :cond_0

    .line 69
    iget-wide v3, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalElapsedTime:D

    int-to-long v5, v2

    iget-wide v7, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mLastUpdatedTime:J

    sub-long v7, v0, v7

    mul-long v5, v5, v7

    long-to-double v5, v5

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalElapsedTime:D

    .line 72
    :cond_0
    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mLastUpdatedTime:J

    .line 73
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mRunningCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mRunningCount:I

    return-void
.end method

.method public stopTimer()V
    .locals 9

    .line 81
    invoke-virtual {p0}, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 82
    iget v2, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mRunningCount:I

    if-lez v2, :cond_0

    .line 83
    iget-wide v3, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalElapsedTime:D

    int-to-long v5, v2

    iget-wide v7, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mLastUpdatedTime:J

    sub-long v7, v0, v7

    mul-long v5, v5, v7

    long-to-double v5, v5

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalElapsedTime:D

    add-int/lit8 v2, v2, -0x1

    .line 84
    iput v2, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mRunningCount:I

    .line 85
    iput-wide v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mLastUpdatedTime:J

    .line 88
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalSamplesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/internal/AggregatingTimer;->mTotalSamplesCount:I

    :cond_0
    return-void
.end method
