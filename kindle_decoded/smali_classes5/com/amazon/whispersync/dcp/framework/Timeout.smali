.class public Lcom/amazon/whispersync/dcp/framework/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"


# instance fields
.field private final mStartTimeNanos:J

.field private final mTimeoutTime:J

.field private final mTimeoutUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whispersync/dcp/framework/Timeout;->mStartTimeNanos:J

    .line 21
    iput-wide p2, p0, Lcom/amazon/whispersync/dcp/framework/Timeout;->mTimeoutTime:J

    .line 22
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/Timeout;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public getElapsedTime()J
    .locals 4

    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 38
    iget-wide v2, p0, Lcom/amazon/whispersync/dcp/framework/Timeout;->mStartTimeNanos:J

    sub-long/2addr v0, v2

    .line 40
    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/Timeout;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemainingTime()J
    .locals 4

    .line 32
    iget-wide v0, p0, Lcom/amazon/whispersync/dcp/framework/Timeout;->mTimeoutTime:J

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/Timeout;->getElapsedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeoutUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/Timeout;->mTimeoutUnit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public hasExpired()Z
    .locals 5

    .line 27
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/Timeout;->getRemainingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
