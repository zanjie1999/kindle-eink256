.class public Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;
.super Ljava/lang/Object;
.source "PeriodicTimeoutInstanceRemover.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final MIN_PERIOD_MS:J = 0x1b7740L

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mFailedToRemoveCount:I

.field private final mInstanceTracker:Lcom/amazon/whispersync/communication/InstanceTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/communication/InstanceTracker<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mLastCleanTimestampMs:J

.field private final mPeriodMs:J

.field private mRemovedInstanceCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.PeriodicTimeoutInstanceRemover"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/communication/InstanceTracker;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/communication/InstanceTracker<",
            "TE;>;J)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-wide/32 v0, 0x1b7740

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 67
    iput-object p1, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mInstanceTracker:Lcom/amazon/whispersync/communication/InstanceTracker;

    .line 68
    iput-wide p2, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mPeriodMs:J

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mRemovedInstanceCount:I

    .line 70
    iput p1, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mFailedToRemoveCount:I

    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "period must at least be 1800000. Actual period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "instanceTracker must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isTimeUp()Z
    .locals 5

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mLastCleanTimestampMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mPeriodMs:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private resetTimer()V
    .locals 2

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mLastCleanTimestampMs:J

    return-void
.end method


# virtual methods
.method protected clean()V
    .locals 11

    .line 97
    sget-object v0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "instance"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object p0, v2, v5

    const-string v6, "clean"

    const-string v7, "check all tracked instances for timeout"

    invoke-virtual {v0, v6, v7, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mInstanceTracker:Lcom/amazon/whispersync/communication/InstanceTracker;

    invoke-interface {v0}, Lcom/amazon/whispersync/communication/InstanceTracker;->getTrackedInstances()Ljava/util/Set;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v6, "mFailedToRemoveCount"

    const-string v7, "RemoveTimeoutInstanceRunnable.run"

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 101
    iget-object v8, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mInstanceTracker:Lcom/amazon/whispersync/communication/InstanceTracker;

    invoke-interface {v8, v2}, Lcom/amazon/whispersync/communication/InstanceTracker;->isTimedOut(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 102
    sget-object v8, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v2, v9, v5

    const-string/jumbo v10, "stop tracking a timeout instance"

    invoke-virtual {v8, v7, v10, v9}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-object v8, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mInstanceTracker:Lcom/amazon/whispersync/communication/InstanceTracker;

    invoke-interface {v8, v2}, Lcom/amazon/whispersync/communication/InstanceTracker;->stopTrackingInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    sget-object v2, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v6, v1, [Ljava/lang/Object;

    const-string v8, "Removed instance count"

    aput-object v8, v6, v4

    iget v8, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mRemovedInstanceCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mRemovedInstanceCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v5

    const-string v8, "Successful removed instance"

    invoke-virtual {v2, v7, v8, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_1
    sget-object v2, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v6, v8, v4

    iget v6, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mFailedToRemoveCount:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mFailedToRemoveCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    const-string v6, "Failed to remove instance"

    invoke-virtual {v2, v7, v6, v8}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 116
    :cond_2
    sget-object v0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "mRemovedInstanceCount"

    aput-object v3, v2, v4

    iget v3, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mRemovedInstanceCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v6, v2, v1

    const/4 v1, 0x3

    iget v3, p0, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->mFailedToRemoveCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "done with tracking instances"

    invoke-virtual {v0, v7, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized cleanIfTimesUp()V
    .locals 1

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->isTimeUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->resetTimer()V

    .line 79
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/PeriodicTimeoutInstanceRemover;->clean()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
