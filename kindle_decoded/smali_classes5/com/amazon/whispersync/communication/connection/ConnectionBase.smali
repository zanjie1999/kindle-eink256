.class public abstract Lcom/amazon/whispersync/communication/connection/ConnectionBase;
.super Ljava/lang/Object;
.source "ConnectionBase.java"

# interfaces
.implements Lamazon/whispersync/communication/connection/Connection;


# instance fields
.field protected mConnectionState:I

.field protected mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lamazon/whispersync/communication/connection/Connection$ConnectionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->mListeners:Ljava/util/Set;

    return-void
.end method

.method private notifyStateClosed(ILjava/lang/String;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamazon/whispersync/communication/connection/Connection$ConnectionListener;

    new-instance v3, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;

    invoke-direct {v3, p1, p2}, Lamazon/whispersync/communication/connection/ConnectionClosedDetails;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, p0, v3}, Lamazon/whispersync/communication/connection/Connection$ConnectionListener;->onClosed(Lamazon/whispersync/communication/connection/Connection;Lamazon/whispersync/communication/connection/ConnectionClosedDetails;)V

    goto :goto_0

    .line 83
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

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 89
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lamazon/whispersync/communication/connection/Connection$ConnectionListener;

    invoke-interface {v2, p0}, Lamazon/whispersync/communication/connection/Connection$ConnectionListener;->onOpened(Lamazon/whispersync/communication/connection/Connection;)V

    goto :goto_0

    .line 92
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
    .locals 1

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Connection listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnectionState()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->mConnectionState:I

    return v0
.end method

.method public release()V
    .locals 1

    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeConnectionListener(Lamazon/whispersync/communication/connection/Connection$ConnectionListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Connection listener isn\'t registered to connection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Connection listener cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConnectionState(I)V
    .locals 2

    .line 62
    iget v0, p0, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->mConnectionState:I

    .line 63
    monitor-enter p0

    .line 64
    :try_start_0
    iput p1, p0, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->mConnectionState:I

    .line 65
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->notifyStateClosed(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-ne p1, v1, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/amazon/whispersync/communication/connection/ConnectionBase;->notifyStateOpened()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 65
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
