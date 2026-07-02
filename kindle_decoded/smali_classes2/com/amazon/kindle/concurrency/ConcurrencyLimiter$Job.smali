.class final Lcom/amazon/kindle/concurrency/ConcurrencyLimiter$Job;
.super Ljava/lang/Object;
.source "ConcurrencyLimiter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Job"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter$Job;->this$0:Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;Lcom/amazon/kindle/concurrency/ConcurrencyLimiter$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter$Job;-><init>(Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter$Job;->this$0:Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;

    invoke-static {v0}, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->access$100(Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;)Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter$Job;->this$0:Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;

    invoke-static {v1}, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->access$100(Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter$Job;->this$0:Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;

    invoke-static {v1}, Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;->access$210(Lcom/amazon/kindle/concurrency/ConcurrencyLimiter;)I

    .line 62
    monitor-exit v0

    return-void

    .line 64
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 64
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
