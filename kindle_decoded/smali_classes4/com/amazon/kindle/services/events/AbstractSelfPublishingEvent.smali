.class public abstract Lcom/amazon/kindle/services/events/AbstractSelfPublishingEvent;
.super Ljava/lang/Object;
.source "AbstractSelfPublishingEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMessageQueueKey()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public publish()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kindle/services/events/AbstractSelfPublishingEvent;->getMessageQueueKey()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    .line 39
    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
