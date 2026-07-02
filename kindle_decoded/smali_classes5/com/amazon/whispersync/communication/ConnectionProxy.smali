.class public Lcom/amazon/whispersync/communication/ConnectionProxy;
.super Lcom/amazon/whispersync/communication/IConnectionListener$Stub;

# interfaces
.implements Lamazon/whispersync/communication/connection/Connection;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mConnection:Lcom/amazon/whispersync/communication/IConnection;

.field private mConnectionLock:Ljava/lang/Object;

.field private final mIsRequestResponseOnly:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lamazon/whispersync/communication/connection/Connection$ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.ConnectionProxy"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/amazon/whispersync/communication/IConnectionListener$Stub;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mListeners:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mState:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mStateLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnectionLock:Ljava/lang/Object;

    sget-object v2, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "requestResponseOnly"

    aput-object v3, v1, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const-string v0, "constructor"

    const-string v3, "Creating new connection proxy"

    invoke-virtual {v2, v0, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mIsRequestResponseOnly:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnection:Lcom/amazon/whispersync/communication/IConnection;

    return-void
.end method

.method public static addHeadersFromParams(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-amz-connection-timeout-ms"

    invoke-virtual {p0, v2, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-amz-socket-timeout-ms"

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isValidState(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private notifyStateClosed(ILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "statusCode"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "closeReason"

    aput-object v3, v1, v2

    invoke-static {p1}, Lcom/amazon/whispersync/communication/connection/ClosedConnectionReasonFactory;->getReasonForStatusCode(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, "message"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    const-string v2, "notifyStateClosed"

    const-string v3, "connection closed"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamazon/whispersync/communication/connection/Connection$ConnectionListener;

    new-instance v3, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;

    invoke-direct {v3, p1, p2}, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, p0, v3}, Lamazon/whispersync/communication/connection/Connection$ConnectionListener;->onClosed(Lamazon/whispersync/communication/connection/Connection;Lamazon/whispersync/communication/connection/ConnectionClosedDetails;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private notifyStateOpened()V
    .locals 3

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamazon/whispersync/communication/connection/Connection$ConnectionListener;

    invoke-interface {v2, p0}, Lamazon/whispersync/communication/connection/Connection$ConnectionListener;->onOpened(Lamazon/whispersync/communication/connection/Connection;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addConnectionListener(Lamazon/whispersync/communication/connection/Connection$ConnectionListener;)V
    .locals 4

    sget-object v0, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "listener"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "addConnectionListener"

    const-string v3, "Adding connection listener"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Connection listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnectionState()I
    .locals 1

    iget v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mState:I

    return v0
.end method

.method public onConnectionSetInitialState(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "onConnectionSetInitialState"

    const-string v5, "Setting initial connection state"

    invoke-virtual {v0, v2, v5, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/ConnectionProxy;->isValidState(I)Z

    move-result v0

    invoke-static {v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z)V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput p1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mState:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string v2, "onConnectionSetInitialState"

    const-string v3, "Exception occurred!"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public onConnectionStateChanged(IILjava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "statusCode"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "message"

    const/4 v6, 0x4

    aput-object v2, v1, v6

    const/4 v2, 0x5

    aput-object p3, v1, v2

    const-string v2, "onConnectionStateChanged"

    const-string v7, "Connection state changed"

    invoke-virtual {v0, v2, v7, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/ConnectionProxy;->isValidState(I)Z

    move-result v0

    invoke-static {v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z)V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mState:I

    iput p1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mState:I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v6, :cond_0

    if-ne p1, v6, :cond_0

    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/amazon/whispersync/communication/ConnectionProxy;->notifyStateClosed(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eq v1, v5, :cond_1

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/amazon/whispersync/communication/ConnectionProxy;->notifyStateOpened()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v3

    const-string v0, "onConnectionStateChanged"

    const-string v1, "Exception occurred!"

    invoke-virtual {p2, v0, v1, p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public release()V
    .locals 7

    sget-object v0, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "release"

    const-string v4, "Releasing connectionProxy"

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnection:Lcom/amazon/whispersync/communication/IConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput v1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mState:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnection:Lcom/amazon/whispersync/communication/IConnection;

    invoke-interface {v3}, Lcom/amazon/whispersync/communication/IConnection;->release()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_7
    sget-object v3, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v4, "release"

    const-string v5, "Error releasing connection, service unavailable"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_0
    iput-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnection:Lcom/amazon/whispersync/communication/IConnection;

    goto :goto_2

    :goto_1
    iput-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnection:Lcom/amazon/whispersync/communication/IConnection;

    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method public removeConnectionListener(Lamazon/whispersync/communication/connection/Connection$ConnectionListener;)V
    .locals 4

    sget-object v0, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "listener"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string/jumbo v2, "removeConnectionListener"

    const-string v3, "Removing connection listener"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Connection listener isn\'t registered to connection"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Connection listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendMessage(Lamazon/whispersync/communication/Message;ILcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/connection/IllegalConnectionStateException;,
            Lamazon/whispersync/communication/connection/TransmissionFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    sget-object v0, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "message"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "channel"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-string/jumbo v2, "sendMessage"

    const-string v4, "Sending message"

    invoke-virtual {v0, v2, v4, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mIsRequestResponseOnly:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lamazon/whispersync/communication/Message;->getPayloadSize()I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    const-string v0, "TimeSendMessage"

    invoke-interface {p3, v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->startTimer(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget v1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mState:I

    if-ne v1, v3, :cond_2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {p1}, Lcom/amazon/whispersync/communication/MessageEnvelope;->createInstance(Lamazon/whispersync/communication/Message;)Lcom/amazon/whispersync/communication/MessageEnvelope;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnection:Lcom/amazon/whispersync/communication/IConnection;

    invoke-interface {v1, p1, p2}, Lcom/amazon/whispersync/communication/IConnection;->sendMessage(Lcom/amazon/whispersync/communication/MessageEnvelope;I)Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;

    move-result-object p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;->toErrorCodeWithDataPoints()Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;->getDataPoints()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->convertFromEnvelopes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-interface {p3, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addDataPoints(Ljava/util/List;)V

    const-string v0, "CountSendMessageDataPoints"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v1, p1

    invoke-interface {p3, v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V
    :try_end_5
    .catch Lcom/amazon/whispersync/client/metrics/MetricsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 p1, 0xbbb

    if-eq p2, p1, :cond_1

    if-nez p2, :cond_0

    const-string p1, "TimeSendMessage"

    invoke-interface {p3, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_6
    new-instance p1, Lamazon/whispersync/communication/connection/TransmissionFailedException;

    const-string p2, "Sending message failed"

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/connection/TransmissionFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lamazon/whispersync/communication/MissingCredentialsException;

    const-string p2, "No Amazon account on the device"

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/MissingCredentialsException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Lamazon/whispersync/communication/connection/TransmissionFailedException;

    const-string v0, "DataPoint(s) corrupted"

    invoke-direct {p2, v0, p1}, Lamazon/whispersync/communication/connection/TransmissionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_0
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_2
    :try_start_9
    new-instance p1, Lamazon/whispersync/communication/connection/IllegalConnectionStateException;

    const-string p2, "Connection is not open"

    iget v1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mState:I

    invoke-direct {p1, p2, v1}, Lamazon/whispersync/communication/connection/IllegalConnectionStateException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_b
    new-instance p2, Lamazon/whispersync/communication/connection/TransmissionFailedException;

    const-string v0, "Error while communicating with service"

    invoke-direct {p2, v0, p1}, Lamazon/whispersync/communication/connection/TransmissionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_0
    const-string p2, "TimeSendMessage"

    invoke-interface {p3, p2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricEvent must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message must not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot send a TComm message on a Request/Response only connection"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/ResponseHandler;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/connection/IllegalConnectionStateException;,
            Lamazon/whispersync/communication/connection/TransmissionFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    sget-object v0, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "request"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v5, "sendRequest"

    const-string v6, "Sending request"

    invoke-virtual {v0, v5, v6, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    const-string v0, "TimeSendRequest"

    invoke-interface {p3, v0}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->startTimer(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget v2, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mState:I

    if-ne v2, v1, :cond_2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1}, Lcom/amazon/whispersync/communication/ConnectionProxy;->addHeadersFromParams(Lorg/apache/http/client/methods/HttpRequestBase;)V

    invoke-static {}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->getInstance()Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->convertRequestToMessage(Lorg/apache/http/HttpRequest;)Lamazon/whispersync/communication/Message;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/communication/MessageEnvelope;->createInstance(Lamazon/whispersync/communication/Message;)Lcom/amazon/whispersync/communication/MessageEnvelope;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnection:Lcom/amazon/whispersync/communication/IConnection;

    new-instance v2, Lcom/amazon/whispersync/communication/ResponseHandlerProxy;

    invoke-static {}, Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;->getInstance()Lcom/amazon/whispersync/communication/PlainTextHttpRequestResponseConverter;

    move-result-object v5

    invoke-direct {v2, p2, v5}, Lcom/amazon/whispersync/communication/ResponseHandlerProxy;-><init>(Lamazon/whispersync/communication/ResponseHandler;Lcom/amazon/whispersync/communication/HttpRequestResponseConverter;)V

    invoke-interface {v1, p1, v2}, Lcom/amazon/whispersync/communication/IConnection;->sendRequest(Lcom/amazon/whispersync/communication/MessageEnvelope;Lcom/amazon/whispersync/communication/IResponseHandler;)Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;

    move-result-object p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;->toErrorCodeWithDataPoints()Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;->getCode()I

    move-result p2

    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPoints;->getDataPoints()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;->convertFromEnvelopes(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-interface {p3, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addDataPoints(Ljava/util/List;)V

    const-string v0, "CountSendRequestDataPoints"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v1, p1

    invoke-interface {p3, v0, v1, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V
    :try_end_5
    .catch Lcom/amazon/whispersync/client/metrics/MetricsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 p1, 0xbbb

    if-eq p2, p1, :cond_1

    if-nez p2, :cond_0

    const-string p1, "TimeSendRequest"

    invoke-interface {p3, p1}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_6
    new-instance p1, Lamazon/whispersync/communication/connection/TransmissionFailedException;

    const-string p2, "Sending request failed"

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/connection/TransmissionFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lamazon/whispersync/communication/MissingCredentialsException;

    const-string p2, "No Amazon account on the device."

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/MissingCredentialsException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Lamazon/whispersync/communication/connection/TransmissionFailedException;

    const-string v0, "DataPoint(s) corrupted"

    invoke-direct {p2, v0, p1}, Lamazon/whispersync/communication/connection/TransmissionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_0
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_2
    :try_start_9
    new-instance p1, Lamazon/whispersync/communication/connection/IllegalConnectionStateException;

    const-string p2, "Not connected"

    iget v1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mState:I

    invoke-direct {p1, p2, v1}, Lamazon/whispersync/communication/connection/IllegalConnectionStateException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_b
    sget-object p2, Lcom/amazon/whispersync/communication/ConnectionProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v0, "sendRequest"

    const-string/jumbo v1, "request sending failed"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {p2, v0, v1, v2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lamazon/whispersync/communication/connection/TransmissionFailedException;

    const-string v0, "Error while communicating with service"

    invoke-direct {p2, v0, p1}, Lamazon/whispersync/communication/connection/TransmissionFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_0
    const-string p2, "TimeSendRequest"

    invoke-interface {p3, p2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricEvent must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ResponseHandler must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Request must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConnectionInterface(Lcom/amazon/whispersync/communication/IConnection;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnection:Lcom/amazon/whispersync/communication/IConnection;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/amazon/whispersync/communication/ConnectionProxy;->mConnection:Lcom/amazon/whispersync/communication/IConnection;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Connection is already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "connection must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
