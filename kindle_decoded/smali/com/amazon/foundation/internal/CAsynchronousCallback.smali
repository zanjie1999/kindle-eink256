.class public abstract Lcom/amazon/foundation/internal/CAsynchronousCallback;
.super Ljava/lang/Object;
.source "CAsynchronousCallback.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IAsynchronousCallback;


# instance fields
.field private error:Z

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallback;->error:Z

    .line 14
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/foundation/internal/CAsynchronousCallback;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallback;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method public hasError()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallback;->error:Z

    return v0
.end method

.method protected notifyKillEvent()V
    .locals 2

    .line 27
    new-instance v0, Lcom/amazon/foundation/internal/IAsynchronousCallback$KillEvent;

    invoke-direct {v0, p0}, Lcom/amazon/foundation/internal/IAsynchronousCallback$KillEvent;-><init>(Lcom/amazon/foundation/internal/IAsynchronousCallback;)V

    .line 28
    iget-object v1, p0, Lcom/amazon/foundation/internal/CAsynchronousCallback;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method protected setError(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/amazon/foundation/internal/CAsynchronousCallback;->error:Z

    return-void
.end method
