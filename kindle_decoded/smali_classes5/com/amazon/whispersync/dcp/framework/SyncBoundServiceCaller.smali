.class public abstract Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;
.super Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;
.source "SyncBoundServiceCaller.java"


# static fields
.field private static final THREAD_POOL:Ljava/util/concurrent/Executor;


# instance fields
.field private final mServiceCaller:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 20
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;->THREAD_POOL:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;-><init>()V

    .line 27
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller$1;-><init>(Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;Landroid/content/Context;Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;->mServiceCaller:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/Executor;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;->THREAD_POOL:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method protected doneUsingService()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;->mServiceCaller:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->unbind()V

    .line 73
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/AsyncToSyncAdapter;->asyncOperationComplete()V

    return-void
.end method

.method protected startAsyncOperation()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;->mServiceCaller:Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;->call()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;->doneUsingService()V

    :cond_0
    return-void
.end method

.method protected useService(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 67
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;->useService(Landroid/os/IBinder;)V

    return-void
.end method

.method protected useService(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method
