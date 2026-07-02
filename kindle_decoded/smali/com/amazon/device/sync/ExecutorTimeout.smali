.class public final Lcom/amazon/device/sync/ExecutorTimeout;
.super Ljava/lang/Object;
.source "ExecutorTimeout.java"

# interfaces
.implements Lcom/amazon/device/sync/gear/RetryPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/ExecutorTimeout$Reason;,
        Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;
    }
.end annotation


# static fields
.field private static final INFINITE_TIMEOUT:J = 0x7fffffffffffffffL

.field private static final PAST:J = -0x1L


# instance fields
.field private mDesiredStartTimeMs:J

.field private final mExponentialBackoff:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;

.field private mReason:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

.field private final mSystemWrapper:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/SystemWrapper;)V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;-><init>(Lcom/amazon/device/sync/ExecutorTimeout$1;)V

    iput-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mExponentialBackoff:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;

    const-wide/16 v0, -0x1

    .line 145
    iput-wide v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mDesiredStartTimeMs:J

    .line 146
    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->None:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    iput-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    .line 150
    iput-object p1, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mSystemWrapper:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    .line 151
    invoke-direct {p0}, Lcom/amazon/device/sync/ExecutorTimeout;->reset()V

    return-void
.end method

.method private declared-synchronized calculateStartTimeFromTimeout(J)J
    .locals 3

    monitor-enter p0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mSystemWrapper:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v0, p1

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 245
    :try_start_0
    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->None:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    iput-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    const-wide/16 v0, -0x1

    .line 246
    iput-wide v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mDesiredStartTimeMs:J

    .line 247
    iget-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mExponentialBackoff:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;

    invoke-virtual {v0}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public canRetry(Ljava/lang/Throwable;)Z
    .locals 2

    .line 217
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/amazon/device/sync/ExecutorTimeout;->onNetworkError()V

    .line 220
    invoke-virtual {p0}, Lcom/amazon/device/sync/ExecutorTimeout;->isRetriable()Z

    move-result p1

    return p1

    .line 222
    :cond_0
    instance-of v0, p1, Lcom/amazon/device/sync/failures/ThrottlingException;

    if-eqz v0, :cond_1

    .line 224
    check-cast p1, Lcom/amazon/device/sync/failures/ThrottlingException;

    invoke-virtual {p1}, Lcom/amazon/device/sync/failures/ThrottlingException;->getRetryAfterTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/sync/ExecutorTimeout;->onThrottlingException(J)V

    .line 225
    invoke-virtual {p0}, Lcom/amazon/device/sync/ExecutorTimeout;->isRetriable()Z

    move-result p1

    return p1

    .line 227
    :cond_1
    instance-of v0, p1, Lcom/amazon/device/sync/failures/AccessDeniedException;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/amazon/device/sync/failures/AuthenticationFailedException;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 232
    :cond_2
    instance-of p1, p1, Lcom/amazon/device/sync/rpc/RPCException;

    if-eqz p1, :cond_3

    .line 234
    invoke-virtual {p0}, Lcom/amazon/device/sync/ExecutorTimeout;->onServerError()V

    .line 235
    invoke-virtual {p0}, Lcom/amazon/device/sync/ExecutorTimeout;->isRetriable()Z

    move-result p1

    return p1

    :cond_3
    return v1

    .line 229
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/device/sync/ExecutorTimeout;->onServerError()V

    return v1
.end method

.method public declared-synchronized getWaitTime()J
    .locals 5

    monitor-enter p0

    .line 210
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mDesiredStartTimeMs:J

    iget-object v2, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mSystemWrapper:Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-virtual {v2}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 211
    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRetriable()Z
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mExponentialBackoff:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;

    invoke-virtual {v0}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->isRetriable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNetworkChanged()V
    .locals 2

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    sget-object v1, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->NetworkError:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    if-ne v0, v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/amazon/device/sync/ExecutorTimeout;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNetworkError()V
    .locals 2

    monitor-enter p0

    .line 156
    :try_start_0
    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->NetworkError:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    iput-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    .line 157
    iget-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mExponentialBackoff:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;

    sget-object v1, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->NetworkError:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->nextRetryIntervalMs(Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/sync/ExecutorTimeout;->calculateStartTimeFromTimeout(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mDesiredStartTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNetworkUnavailable()V
    .locals 1

    monitor-enter p0

    .line 182
    :try_start_0
    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->NetworkError:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    iput-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$Reason;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOperationSucceeded()V
    .locals 1

    monitor-enter p0

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/sync/ExecutorTimeout;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOperationsAvailable(I)V
    .locals 2

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    sget-object v1, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->None:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 198
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/sync/ExecutorTimeout;->calculateStartTimeFromTimeout(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mDesiredStartTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServerError()V
    .locals 2

    monitor-enter p0

    .line 163
    :try_start_0
    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->ServerError:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    iput-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    .line 164
    iget-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mExponentialBackoff:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;

    sget-object v1, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->ServerError:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    invoke-virtual {v0, v1}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->nextRetryIntervalMs(Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/sync/ExecutorTimeout;->calculateStartTimeFromTimeout(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mDesiredStartTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onThrottlingException(J)V
    .locals 1

    monitor-enter p0

    .line 170
    :try_start_0
    sget-object v0, Lcom/amazon/device/sync/ExecutorTimeout$Reason;->Throttling:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    iput-object v0, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mReason:Lcom/amazon/device/sync/ExecutorTimeout$Reason;

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/ExecutorTimeout;->calculateStartTimeFromTimeout(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mDesiredStartTimeMs:J

    .line 172
    iget-object p1, p0, Lcom/amazon/device/sync/ExecutorTimeout;->mExponentialBackoff:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;

    sget-object p2, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;->Throttling:Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;

    invoke-virtual {p1, p2}, Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff;->nextRetryIntervalMs(Lcom/amazon/device/sync/ExecutorTimeout$ExponentialBackoff$Reason;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
