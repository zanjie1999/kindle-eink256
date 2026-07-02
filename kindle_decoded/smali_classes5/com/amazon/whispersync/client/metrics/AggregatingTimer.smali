.class public Lcom/amazon/whispersync/client/metrics/AggregatingTimer;
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

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->TIMEUNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mRunningCount:I

    .line 44
    iput v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalSamplesCount:I

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mLastUpdatedTime:J

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalElapsedTime:D

    .line 59
    iput-boolean p1, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mAllowRunningTimers:Z

    return-void
.end method


# virtual methods
.method public addTime(DI)V
    .locals 2

    .line 100
    invoke-static {p1, p2}, Lcom/amazon/whispersync/client/metrics/DoubleValidator;->validateDouble(D)V

    .line 101
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalElapsedTime:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalElapsedTime:D

    .line 102
    iget p1, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalSamplesCount:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalSamplesCount:I

    return-void
.end method

.method public getElapsedTime()D
    .locals 3

    .line 120
    iget-boolean v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mAllowRunningTimers:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mRunningCount:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get elapsed time - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mRunningCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " start calls not matched with stop."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalElapsedTime:D

    return-wide v0
.end method

.method public getSamples()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalSamplesCount:I

    return v0
.end method

.method public getTimeUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 110
    sget-object v0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->TIMEUNIT:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public numRunningTimers()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mRunningCount:I

    return v0
.end method

.method public startTimer()V
    .locals 9

    .line 68
    invoke-static {}, Lcom/amazon/whispersync/dp/utils/SystemTime;->now()J

    move-result-wide v0

    .line 70
    iget v2, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mRunningCount:I

    if-lez v2, :cond_0

    .line 71
    iget-wide v3, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalElapsedTime:D

    int-to-long v5, v2

    iget-wide v7, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mLastUpdatedTime:J

    sub-long v7, v0, v7

    mul-long v5, v5, v7

    long-to-double v5, v5

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalElapsedTime:D

    .line 74
    :cond_0
    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mLastUpdatedTime:J

    .line 75
    iget v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mRunningCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mRunningCount:I

    return-void
.end method

.method public stopTimer()V
    .locals 9

    .line 83
    invoke-static {}, Lcom/amazon/whispersync/dp/utils/SystemTime;->now()J

    move-result-wide v0

    .line 84
    iget v2, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mRunningCount:I

    if-lez v2, :cond_0

    .line 85
    iget-wide v3, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalElapsedTime:D

    int-to-long v5, v2

    iget-wide v7, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mLastUpdatedTime:J

    sub-long v7, v0, v7

    mul-long v5, v5, v7

    long-to-double v5, v5

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalElapsedTime:D

    add-int/lit8 v2, v2, -0x1

    .line 86
    iput v2, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mRunningCount:I

    .line 87
    iput-wide v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mLastUpdatedTime:J

    .line 90
    iget v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalSamplesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/client/metrics/AggregatingTimer;->mTotalSamplesCount:I

    :cond_0
    return-void
.end method
