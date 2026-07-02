.class public Lamazon/whispersync/communication/BlockingConnectionListener;
.super Ljava/lang/Object;
.source "BlockingConnectionListener.java"

# interfaces
.implements Lamazon/whispersync/communication/connection/Connection$ConnectionListener;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mConnectionClosedDetails:Lamazon/whispersync/communication/connection/ConnectionClosedDetails;

.field private final mInnerListener:Lamazon/whispersync/communication/connection/Connection$ConnectionListener;

.field private final mLock:Ljava/util/concurrent/locks/Lock;

.field private final mOpened:Ljava/util/concurrent/locks/Condition;

.field private final mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.BlockingConnectionListener"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/BlockingConnectionListener;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lamazon/whispersync/communication/connection/Connection$ConnectionListener;I)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 43
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mOpened:Ljava/util/concurrent/locks/Condition;

    .line 59
    iput p2, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mTimeout:I

    .line 60
    iput-object p1, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mInnerListener:Lamazon/whispersync/communication/connection/Connection$ConnectionListener;

    return-void
.end method


# virtual methods
.method public onClosed(Lamazon/whispersync/communication/connection/Connection;Lamazon/whispersync/communication/connection/ConnectionClosedDetails;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 156
    :try_start_0
    iput-object p2, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mConnectionClosedDetails:Lamazon/whispersync/communication/connection/ConnectionClosedDetails;

    .line 157
    iget-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mOpened:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 162
    iget-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mInnerListener:Lamazon/whispersync/communication/connection/Connection$ConnectionListener;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p1, p2}, Lamazon/whispersync/communication/connection/Connection$ConnectionListener;->onClosed(Lamazon/whispersync/communication/connection/Connection;Lamazon/whispersync/communication/connection/ConnectionClosedDetails;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 159
    iget-object p2, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public onOpened(Lamazon/whispersync/communication/connection/Connection;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 142
    :try_start_0
    iget-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mOpened:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 147
    iget-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mInnerListener:Lamazon/whispersync/communication/connection/Connection$ConnectionListener;

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {v0, p1}, Lamazon/whispersync/communication/connection/Connection$ConnectionListener;->onOpened(Lamazon/whispersync/communication/connection/Connection;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 144
    iget-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public waitForConnectionOpen(Lamazon/whispersync/communication/connection/Connection;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/TimeoutException;,
            Ljava/lang/InterruptedException;,
            Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;
        }
    .end annotation

    if-eqz p2, :cond_6

    .line 88
    iget-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 90
    :try_start_0
    invoke-interface {p1}, Lamazon/whispersync/communication/connection/Connection;->getConnectionState()I

    move-result v0

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid connection state"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_1
    :goto_1
    iget-object p1, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mConnectionClosedDetails:Lamazon/whispersync/communication/connection/ConnectionClosedDetails;

    if-eqz p1, :cond_2

    .line 98
    new-instance p1, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;

    iget-object p2, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mConnectionClosedDetails:Lamazon/whispersync/communication/connection/ConnectionClosedDetails;

    invoke-virtual {p2}, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_2
    new-instance p1, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;

    const-string p2, "Cannot aquire connection.  Connnection is already closed."

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_3
    iget-object p1, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_4
    :try_start_1
    const-string v0, "CountEstablishNewConnectionTotal"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 107
    invoke-interface {p2, v0, v7, v8}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v1

    .line 109
    iget v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mTimeout:I

    int-to-long v11, v0

    sub-long/2addr v11, v9

    .line 110
    iget-object v0, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mOpened:Ljava/util/concurrent/locks/Condition;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v11, v12, v9}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-string v0, "CountEstablishNewConnectionSuccess"

    .line 120
    invoke-interface {p2, v0, v7, v8}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    const-string v0, "TimeEstablishNewConnection"

    long-to-double v3, v3

    .line 121
    invoke-interface {p2, v0, v3, v4}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addTimer(Ljava/lang/String;D)V

    .line 123
    invoke-interface {p1}, Lamazon/whispersync/communication/connection/Connection;->getConnectionState()I

    move-result v0

    goto :goto_0

    .line 111
    :cond_5
    sget-object p1, Lamazon/whispersync/communication/BlockingConnectionListener;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v0, "waitForConnectionOpen"

    const-string/jumbo v1, "setup connection timed out"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v9, "Thread.currentThread().getId()"

    aput-object v9, v2, v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, "mTimeout"

    aput-object v3, v2, v5

    iget v3, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "CountEstablishNewConnectionTimeout"

    .line 114
    invoke-interface {p2, p1, v7, v8}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 115
    new-instance p1, Lamazon/whispersync/communication/TimeoutException;

    const-string p2, "Setup connection timed out"

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 134
    iget-object p2, p0, Lamazon/whispersync/communication/BlockingConnectionListener;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 85
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricEvent must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
