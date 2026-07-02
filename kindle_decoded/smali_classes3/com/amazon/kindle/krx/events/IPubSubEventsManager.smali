.class public interface abstract Lcom/amazon/kindle/krx/events/IPubSubEventsManager;
.super Ljava/lang/Object;
.source "IPubSubEventsManager.java"


# virtual methods
.method public abstract createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;"
        }
    .end annotation
.end method

.method public abstract createMessageQueue(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;"
        }
    .end annotation
.end method

.method public abstract createTopicMessageQueue(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/ITopicMessageQueue;
.end method

.method public abstract subscribe(Ljava/lang/Object;)V
.end method

.method public abstract unsubscribe(Ljava/lang/Object;)V
.end method
