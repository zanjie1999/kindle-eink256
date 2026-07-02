.class public Lcom/amazon/kindle/krx/events/BasePubSubEventsManager;
.super Ljava/lang/Object;
.source "BasePubSubEventsManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IPubSubEventsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/kindle/krx/events/IMessageQueue;"
        }
    .end annotation

    .line 13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public createMessageQueue(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0
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

    .line 19
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public createTopicMessageQueue(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/ITopicMessageQueue;
    .locals 0

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public subscribe(Ljava/lang/Object;)V
    .locals 0

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public unsubscribe(Ljava/lang/Object;)V
    .locals 0

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
