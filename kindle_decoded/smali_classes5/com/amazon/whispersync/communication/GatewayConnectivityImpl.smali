.class public Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;
.super Lcom/amazon/whispersync/communication/IConnectionListener$Stub;

# interfaces
.implements Lamazon/whispersync/communication/GatewayConnectivity;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mGatewayConnectivity:Lcom/amazon/whispersync/communication/IGatewayConnectivity;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lamazon/whispersync/communication/GatewayConnectivity$GatewayConnectivityMonitor;",
            ">;"
        }
    .end annotation
.end field

.field protected mState:I

.field private mStateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.GatewayConnectivityImpl"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/amazon/whispersync/communication/IConnectionListener$Stub;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mListeners:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mStateLock:Ljava/lang/Object;

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

    sget-object v0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

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

    const-string v3, "gateway connection closed"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamazon/whispersync/communication/GatewayConnectivity$GatewayConnectivityMonitor;

    new-instance v3, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;

    invoke-direct {v3, p1, p2}, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lamazon/whispersync/communication/GatewayConnectivity$GatewayConnectivityMonitor;->onGatewayConnectionClosed(Lamazon/whispersync/communication/connection/ConnectionClosedDetails;)V

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

    iget-object v0, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamazon/whispersync/communication/GatewayConnectivity$GatewayConnectivityMonitor;

    invoke-interface {v2}, Lamazon/whispersync/communication/GatewayConnectivity$GatewayConnectivityMonitor;->onGatewayConnectionEstablished()V

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
.method public deregisterGatewayConnectivityMonitor(Lamazon/whispersync/communication/GatewayConnectivity$GatewayConnectivityMonitor;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mListeners:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "GatewayConnectivityMonitor isn\'t registered"

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

    const-string v0, "GatewayConnectivityMonitor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGatewayConnectionState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/TCommServiceDownException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mGatewayConnectivity:Lcom/amazon/whispersync/communication/IGatewayConnectivity;

    invoke-interface {v0}, Lcom/amazon/whispersync/communication/IGatewayConnectivity;->getGatewayConnectionState()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput v0, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mState:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lamazon/whispersync/communication/TCommServiceDownException;

    invoke-direct {v1, v0}, Lamazon/whispersync/communication/TCommServiceDownException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public onConnectionSetInitialState(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

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
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->isValidState(I)Z

    move-result v0

    invoke-static {v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z)V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput p1, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mState:I

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

    sget-object v0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

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

    sget-object v0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

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
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->isValidState(I)Z

    move-result v0

    invoke-static {v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z)V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v1, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mState:I

    iput p1, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mState:I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v6, :cond_0

    if-ne p1, v6, :cond_0

    :try_start_2
    invoke-direct {p0, p2, p3}, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->notifyStateClosed(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eq v1, v5, :cond_1

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->notifyStateOpened()V
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

    sget-object p2, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v3

    const-string v0, "onConnectionStateChanged"

    const-string v1, "Exception occurred!"

    invoke-virtual {p2, v0, v1, p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public registerGatewayConnectivityMonitor(Lamazon/whispersync/communication/GatewayConnectivity$GatewayConnectivityMonitor;)I
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mState:I

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GatewayConnectivityMonitor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setGatewayConnectivityInterface(Lcom/amazon/whispersync/communication/IGatewayConnectivity;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mGatewayConnectivity:Lcom/amazon/whispersync/communication/IGatewayConnectivity;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->mGatewayConnectivity:Lcom/amazon/whispersync/communication/IGatewayConnectivity;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "mGatewayConnectivity is already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "connectivity must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
