.class Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;
.super Ljava/lang/Object;
.source "BookSearchIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/BookSearchIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Consumer"
.end annotation


# instance fields
.field queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kcp/search/BookSearchIndexer;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/BookSearchIndexer;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;",
            ">;)V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p2, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->queue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-object v1, v1, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    invoke-static {v1}, Lcom/amazon/kcp/search/BookSearchIndexer;->access$000(Lcom/amazon/kcp/search/BookSearchIndexer;)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-object v2, v2, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->getFarthestIndexedPostion()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 266
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->queue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    if-nez v1, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget v3, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    iget v4, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    iget-object v5, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/amazon/kcp/search/BookSearchIndexer;->index(IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 275
    invoke-static {}, Lcom/amazon/kcp/search/BookSearchIndexer;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index build failed at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->start:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    invoke-static {v1}, Lcom/amazon/kcp/search/BookSearchIndexer;->access$200(Lcom/amazon/kcp/search/BookSearchIndexer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-object v1, v1, Lcom/amazon/kcp/search/BookSearchIndexer;->tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    if-eqz v1, :cond_3

    .line 281
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-wide v1, v1, Lcom/amazon/kcp/search/BookSearchIndexer;->currentProgress:J

    iget-object v3, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-wide v3, v3, Lcom/amazon/kcp/search/BookSearchIndexer;->progress:J

    const-wide/16 v5, 0x5

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 282
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-object v2, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-wide v2, v2, Lcom/amazon/kcp/search/BookSearchIndexer;->currentProgress:J

    iput-wide v2, v1, Lcom/amazon/kcp/search/BookSearchIndexer;->progress:J

    .line 283
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-object v1, v1, Lcom/amazon/kcp/search/BookSearchIndexer;->tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    iget-object v2, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-wide v2, v2, Lcom/amazon/kcp/search/BookSearchIndexer;->progress:J

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportCurrentProgress(J)V

    .line 286
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    invoke-static {v1}, Lcom/amazon/kcp/search/BookSearchIndexer;->access$300(Lcom/amazon/kcp/search/BookSearchIndexer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    invoke-static {v1}, Lcom/amazon/kcp/search/BookSearchIndexer;->access$000(Lcom/amazon/kcp/search/BookSearchIndexer;)I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-object v2, v2, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->getFarthestIndexedPostion()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    invoke-static {v1}, Lcom/amazon/kcp/search/BookSearchIndexer;->access$400(Lcom/amazon/kcp/search/BookSearchIndexer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 291
    :cond_5
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-object v1, v1, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->progressFile:Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;

    iget-object v2, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    invoke-static {v2}, Lcom/amazon/kcp/search/BookSearchIndexer;->access$000(Lcom/amazon/kcp/search/BookSearchIndexer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/search/BaseBookSearchIndexer$IndexProgressFile;->setFurthestIndexedPostion(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 294
    invoke-static {}, Lcom/amazon/kcp/search/BookSearchIndexer;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error while indexing "

    invoke-static {v2, v3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    invoke-static {v1}, Lcom/amazon/kcp/search/BookSearchIndexer;->access$200(Lcom/amazon/kcp/search/BookSearchIndexer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-object v1, v1, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 298
    :cond_7
    iget-object v1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    invoke-static {v1}, Lcom/amazon/kcp/search/BookSearchIndexer;->access$200(Lcom/amazon/kcp/search/BookSearchIndexer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/search/BookSearchIndexer;->commit(Z)V

    .line 300
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    invoke-static {v2}, Lcom/amazon/kcp/search/BookSearchIndexer;->access$500(Lcom/amazon/kcp/search/BookSearchIndexer;)J

    move-result-wide v2

    sub-long v8, v0, v2

    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-object v0, v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 302
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    sget-object v7, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v5, "BookSearchIndexerTimer"

    const-string v6, "ReaderSearchIndexBuildCanceled"

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    goto :goto_3

    .line 304
    :cond_9
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    sget-object v7, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v5, "BookSearchIndexerTimer"

    const-string v6, "ReaderSearchIndexBuildComplete"

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;J)V

    .line 306
    :goto_3
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-object v1, v0, Lcom/amazon/kcp/search/BookSearchIndexer;->tracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    if-eqz v1, :cond_a

    .line 307
    invoke-static {v0}, Lcom/amazon/kcp/search/BookSearchIndexer;->access$000(Lcom/amazon/kcp/search/BookSearchIndexer;)I

    move-result v0

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/services/download/IStatusTracker;->reportCurrentProgress(J)V

    .line 311
    :cond_a
    iget-object v0, p0, Lcom/amazon/kcp/search/BookSearchIndexer$Consumer;->this$0:Lcom/amazon/kcp/search/BookSearchIndexer;

    iget-object v0, v0, Lcom/amazon/kcp/search/BaseBookSearchIndexer;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
