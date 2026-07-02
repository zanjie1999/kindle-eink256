.class final Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTaskExecutor.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComparableFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static counter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private callable:Lcom/amazon/kindle/krx/application/IAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/application/IAsyncTask<",
            "TT;>;"
        }
    .end annotation
.end field

.field private sequenceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 75
    sget-object v0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;->sequenceId:I

    .line 80
    check-cast p1, Lcom/amazon/kindle/krx/application/IAsyncTask;

    iput-object p1, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;->callable:Lcom/amazon/kindle/krx/application/IAsyncTask;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask<",
            "TT;>;)I"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;->callable:Lcom/amazon/kindle/krx/application/IAsyncTask;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IAsyncTask;->getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    move-result-object v0

    iget-object v1, p1, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;->callable:Lcom/amazon/kindle/krx/application/IAsyncTask;

    .line 87
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IAsyncTask;->getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 92
    :cond_0
    iget v0, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;->sequenceId:I

    iget p1, p1, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;->sequenceId:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 68
    check-cast p1, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;->compareTo(Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ComparableFutureTask;)I

    move-result p1

    return p1
.end method
