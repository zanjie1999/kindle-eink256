.class Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor$1;
.super Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;
.source "MagicExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/dcp/framework/MagicFutureTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor$1;->this$0:Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor;

    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/amazon/whispersync/dcp/framework/MagicFutureTask;->cancel(Z)Z

    move-result p1

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor$1;->this$0:Lcom/amazon/whispersync/dcp/framework/MagicExecutors$MagicThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    return p1
.end method
