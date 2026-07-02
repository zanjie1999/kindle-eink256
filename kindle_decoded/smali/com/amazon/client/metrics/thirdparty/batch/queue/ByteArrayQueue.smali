.class public interface abstract Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueue;
.super Ljava/lang/Object;
.source "ByteArrayQueue.java"


# virtual methods
.method public abstract add(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract addFirst(Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract addListener(Lcom/amazon/client/metrics/thirdparty/batch/queue/ByteArrayQueueListener;)V
.end method

.method public abstract getQueueName()Ljava/lang/String;
.end method

.method public abstract persistBatches()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remove()Lcom/amazon/client/metrics/thirdparty/batch/queue/SerializedBatch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setQueueName(Ljava/lang/String;)V
.end method

.method public abstract shutdown()V
.end method
