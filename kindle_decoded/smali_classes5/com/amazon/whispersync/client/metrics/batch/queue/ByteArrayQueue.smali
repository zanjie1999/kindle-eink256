.class public interface abstract Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueue;
.super Ljava/lang/Object;
.source "ByteArrayQueue.java"


# virtual methods
.method public abstract add([BZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract addListener(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueueListener;)V
.end method

.method public abstract remove()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/amazon/whispersync/client/metrics/batch/queue/ByteArrayQueueListener;)V
.end method

.method public abstract shutdown()V
.end method
