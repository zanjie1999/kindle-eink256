.class public Lcom/amazon/ea/EndActionsPluginContext;
.super Ljava/lang/Object;
.source "EndActionsPluginContext.java"


# instance fields
.field private final eventHandlerLock:Ljava/lang/Object;

.field private volatile purchaseManager:Lcom/amazon/ea/purchase/PurchaseManager;

.field private final purchaseManagerLock:Ljava/lang/Object;

.field private volatile readerEventHandler:Lcom/amazon/ea/ReaderEventHandler;

.field private volatile todoEventHandler:Lcom/amazon/ea/TodoEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/EndActionsPluginContext;->eventHandlerLock:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/EndActionsPluginContext;->purchaseManagerLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/amazon/ea/EndActionsPluginContext;->purchaseManager:Lcom/amazon/ea/purchase/PurchaseManager;

    if-nez v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/amazon/ea/EndActionsPluginContext;->purchaseManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/EndActionsPluginContext;->purchaseManager:Lcom/amazon/ea/purchase/PurchaseManager;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/amazon/ea/purchase/PurchaseManager;

    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v2}, Lcom/amazon/ea/purchase/PurchaseManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/ea/EndActionsPluginContext;->purchaseManager:Lcom/amazon/ea/purchase/PurchaseManager;

    .line 80
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getReaderEventHandler()Lcom/amazon/ea/ReaderEventHandler;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/amazon/ea/EndActionsPluginContext;->readerEventHandler:Lcom/amazon/ea/ReaderEventHandler;

    if-nez v0, :cond_1

    .line 41
    iget-object v1, p0, Lcom/amazon/ea/EndActionsPluginContext;->eventHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/EndActionsPluginContext;->readerEventHandler:Lcom/amazon/ea/ReaderEventHandler;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/amazon/ea/ReaderEventHandler;

    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getErlProvider()Lcom/amazon/ea/ERLProvider;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amazon/ea/ReaderEventHandler;-><init>(Lcom/amazon/ea/ERLProvider;)V

    iput-object v0, p0, Lcom/amazon/ea/EndActionsPluginContext;->readerEventHandler:Lcom/amazon/ea/ReaderEventHandler;

    .line 46
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getTodoEventHandler()Lcom/amazon/ea/TodoEventHandler;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/amazon/ea/EndActionsPluginContext;->todoEventHandler:Lcom/amazon/ea/TodoEventHandler;

    if-nez v0, :cond_1

    .line 58
    iget-object v1, p0, Lcom/amazon/ea/EndActionsPluginContext;->eventHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ea/EndActionsPluginContext;->todoEventHandler:Lcom/amazon/ea/TodoEventHandler;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/amazon/ea/TodoEventHandler;

    invoke-virtual {p0}, Lcom/amazon/ea/EndActionsPluginContext;->getReaderEventHandler()Lcom/amazon/ea/ReaderEventHandler;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/amazon/ea/TodoEventHandler;-><init>(Lcom/amazon/ea/ReaderEventHandler;)V

    iput-object v0, p0, Lcom/amazon/ea/EndActionsPluginContext;->todoEventHandler:Lcom/amazon/ea/TodoEventHandler;

    .line 63
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method
