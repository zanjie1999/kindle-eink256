.class public Lcom/amazon/foundation/internal/WebServiceModel;
.super Ljava/lang/Object;
.source "WebServiceModel.java"


# instance fields
.field private transient messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    .line 20
    const-class v1, Lcom/amazon/foundation/internal/WebServiceModel;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/foundation/internal/WebServiceModel;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method protected sendWebServiceModelEvent(Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;)V
    .locals 1

    .line 29
    new-instance v0, Lcom/amazon/foundation/internal/WebServiceModelEvent;

    invoke-direct {v0, p1, p0}, Lcom/amazon/foundation/internal/WebServiceModelEvent;-><init>(Lcom/amazon/foundation/internal/WebServiceModelEvent$EventType;Lcom/amazon/foundation/internal/WebServiceModel;)V

    .line 30
    iget-object p1, p0, Lcom/amazon/foundation/internal/WebServiceModel;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
