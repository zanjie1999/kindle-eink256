.class Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;
.super Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;
.source "ListenableNetworkOperationsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;,
        Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;
    }
.end annotation


# instance fields
.field private final mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;Lcom/amazon/whispersync/dcp/framework/SystemWrapper;Lcom/amazon/whispersync/dcp/framework/DCPLog;Lcom/amazon/device/sync/platform/WhispersyncConfig;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;-><init>(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;Lcom/amazon/whispersync/dcp/framework/SystemWrapper;Lcom/amazon/whispersync/dcp/framework/DCPLog;Lcom/amazon/device/sync/platform/WhispersyncConfig;)V

    .line 36
    invoke-interface {p5}, Lcom/amazon/device/sync/platform/WhispersyncConfig;->getNetworkOperationsThreadPoolSize()I

    move-result p1

    .line 37
    iget-object p2, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;->mLog:Lcom/amazon/whispersync/dcp/framework/DCPLog;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p3, p5

    const-string p4, "ListenableNetworkOperationsExecutor: Starting executor with size:%s"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-array p4, p5, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->i(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 39
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;->mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;->incrementAndSubmitOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;)V

    return-void
.end method

.method private incrementAndSubmitOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;)V
    .locals 0

    .line 76
    invoke-virtual {p2}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;->incrementCount()V

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;->submitOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;)V

    return-void
.end method

.method private submitOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;->mOperationsExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;-><init>(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public addOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;-><init>(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$1;)V

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor;->submitOperation(Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$ListenableOperation;Lcom/amazon/device/sync/ListenableNetworkOperationsExecutor$CountDownFuture;)V

    return-object v0
.end method
