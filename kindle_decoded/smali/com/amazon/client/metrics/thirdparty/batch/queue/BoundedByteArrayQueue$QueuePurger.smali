.class Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;
.super Ljava/lang/Object;
.source "BoundedByteArrayQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueuePurger"
.end annotation


# instance fields
.field private final mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;)V
    .locals 1

    .line 128
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "QueuePurger.run"

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Shutdown invoked."

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->access$000()Lcom/amazon/dp/logger/DPLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Purging expired batches."

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/dp/logger/DPLoggerBase;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;->this$0:Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue;->purgeExpiredBatches()V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/batch/queue/BoundedByteArrayQueue$QueuePurger;->mIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
