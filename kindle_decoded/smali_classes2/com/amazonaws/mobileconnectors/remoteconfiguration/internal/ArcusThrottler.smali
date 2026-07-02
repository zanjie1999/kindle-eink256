.class public Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;
.super Ljava/lang/Object;
.source "ArcusThrottler.java"


# static fields
.field private static final DEFAULT_SYNC_JITTER_IN_MS:J = 0x1388L

.field private static final DEFAULT_TIME_BETWEEN_SYNCS_IN_MS:J = 0xdbba0L

.field private static final MAX_EXP_BACKOFF_WINDOW_SIZE_IN_MS:J = 0xdbba0L

.field private static final ONE_SECOND_MS:J = 0x3e8L


# instance fields
.field private mCause:I

.field private mNextSyncAttemptTime:J

.field private mSyncAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mNextSyncAttemptTime:J

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mCause:I

    return-void
.end method

.method private getCurrentWindowSizeInMS()J
    .locals 7

    .line 87
    iget v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mSyncAttempts:I

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x3e8

    shl-long v0, v1, v0

    const-wide/32 v2, 0xdbba0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :cond_0
    move-wide v0, v2

    :cond_1
    return-wide v0
.end method

.method private getJitterInMS()J
    .locals 4

    .line 113
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40b3880000000000L    # 5000.0

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method private getRandomTimeInsideCurrentWindowInMS()J
    .locals 4

    .line 102
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getCurrentWindowSizeInMS()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public getCause()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mCause:I

    return v0
.end method

.method public getTimeToNextSyncInMS()J
    .locals 4

    .line 167
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mNextSyncAttemptTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 168
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public isSyncAllowedRightNow()Z
    .locals 5

    .line 180
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getTimeToNextSyncInMS()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateSyncTimeAfterFailure()V
    .locals 5

    .line 139
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getCurrentWindowSizeInMS()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 140
    iget v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mSyncAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mSyncAttempts:I

    .line 142
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 143
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getRandomTimeInsideCurrentWindowInMS()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mNextSyncAttemptTime:J

    const/16 v0, 0x14

    .line 144
    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mCause:I

    return-void
.end method

.method public updateSyncTimeAfterSuccess()V
    .locals 4

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mSyncAttempts:I

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xdbba0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mNextSyncAttemptTime:J

    const/16 v0, 0xa

    .line 156
    iput v0, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mCause:I

    return-void
.end method

.method public updateSyncTimeAfterThrottle(J)V
    .locals 5

    const-wide/32 v0, 0xdbba0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    const/4 v2, 0x0

    .line 126
    iput v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mSyncAttempts:I

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 128
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr v2, p1

    .line 129
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->getJitterInMS()J

    move-result-wide p1

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mNextSyncAttemptTime:J

    const/16 p1, 0x1e

    .line 130
    iput p1, p0, Lcom/amazonaws/mobileconnectors/remoteconfiguration/internal/ArcusThrottler;->mCause:I

    return-void
.end method
