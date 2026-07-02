.class public final Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;
.super Ljava/lang/Object;
.source "ConcurrencyLimiter.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/concurrency/ConcurrencyLimiter$Job;
    }
.end annotation


# instance fields
.field private concurrentJobCount:I

.field private final executor:Ljava/util/concurrent/Executor;

.field private final limit:I

.field private final taskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;I)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->taskQueue:Ljava/util/Queue;

    if-lez p2, :cond_0

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->executor:Ljava/util/concurrent/Executor;

    .line 35
    iput p2, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->limit:I

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "limit is not positive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;)Ljava/util/Queue;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->taskQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$210(Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;)I
    .locals 2

    .line 17
    iget v0, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->concurrentJobCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->concurrentJobCount:I

    return v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->taskQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->taskQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 43
    iget p1, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->concurrentJobCount:I

    iget v1, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->limit:I

    const/4 v2, 0x1

    if-ge p1, v1, :cond_0

    .line 44
    iget p1, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->concurrentJobCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->concurrentJobCount:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 47
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 49
    iget-object p1, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter$Job;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter$Job;-><init>(Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;Lcom/amazon/kindle/concurrency/ConcurrencyLimiter$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
