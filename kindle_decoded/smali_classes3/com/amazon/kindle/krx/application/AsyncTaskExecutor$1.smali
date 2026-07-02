.class Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$1;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "AsyncTaskExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 50
    iput-object v0, v8, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$1;->this$0:Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
