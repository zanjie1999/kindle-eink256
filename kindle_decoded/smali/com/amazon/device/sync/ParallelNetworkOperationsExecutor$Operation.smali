.class public abstract Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;
.super Ljava/lang/Object;
.source "ParallelNetworkOperationsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Operation"
.end annotation


# instance fields
.field private final mFuture:Lcom/amazon/whispersync/dcp/framework/ManualFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/dcp/framework/ManualFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldRetry:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->mFuture:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->mShouldRetry:Z

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->fail()V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;Ljava/lang/Exception;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->fail(Ljava/lang/Exception;)V

    return-void
.end method

.method private fail()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->mFuture:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->onCompleted(Ljava/lang/Object;)V

    return-void
.end method

.method private fail(Ljava/lang/Exception;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->mFuture:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->onException(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method protected abstract doExecute(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPLog;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public execute(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPLog;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->mFuture:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->isCancelRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object p1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->mFuture:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->onCancelled()V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->mFuture:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->doExecute(Landroid/content/Context;Lcom/amazon/whispersync/dcp/framework/DCPLog;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/ManualFuture;->onCompleted(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected abstract generateLocalStoreException()Lcom/amazon/device/sync/failures/LocalStoreException;
.end method

.method protected abstract getDescription()Ljava/lang/String;
.end method

.method protected getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->mFuture:Lcom/amazon/whispersync/dcp/framework/ManualFuture;

    return-object v0
.end method

.method protected abstract getLockKey()Ljava/lang/String;
.end method

.method protected handleResourceNotAvailableException(Landroid/content/Context;Lcom/amazon/whispersync/ResourceNotAvailableException;)V
    .locals 0

    return-void
.end method

.method public abstract hashCode()I
.end method

.method protected setShouldRetry(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->mShouldRetry:Z

    return-void
.end method

.method protected shouldRetry()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/amazon/device/sync/ParallelNetworkOperationsExecutor$Operation;->mShouldRetry:Z

    return v0
.end method
