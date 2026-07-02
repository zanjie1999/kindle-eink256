.class Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ExecutorThreadFactory;
.super Ljava/lang/Object;
.source "AsyncTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/application/AsyncTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecutorThreadFactory"
.end annotation


# instance fields
.field private final prefix:Ljava/lang/String;

.field private final priority:I

.field private final threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ExecutorThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 141
    iput p2, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ExecutorThreadFactory;->priority:I

    .line 142
    iput-object p1, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ExecutorThreadFactory;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 149
    iget p1, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ExecutorThreadFactory;->priority:I

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ExecutorThreadFactory;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/application/AsyncTaskExecutor$ExecutorThreadFactory;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
