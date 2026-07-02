.class public Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;
.super Ljava/lang/Object;
.source "CAsynchronousCallbackExecutor.java"


# instance fields
.field private actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

.field private completionCallbackForCaller:Lcom/amazon/foundation/ICallback;

.field private error:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    return-void
.end method

.method private callCompletionCallbackForCaller()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->completionCallbackForCaller:Lcom/amazon/foundation/ICallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 136
    iput-object v1, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->completionCallbackForCaller:Lcom/amazon/foundation/ICallback;

    .line 137
    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_0
    return-void
.end method

.method private onExecutionFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    .line 118
    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0}, Lcom/amazon/foundation/internal/IAsynchronousCallback;->hasError()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->error:Z

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    .line 122
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->callCompletionCallbackForCaller()V

    return-void
.end method


# virtual methods
.method public onCallbackKilledEvent(Lcom/amazon/foundation/internal/IAsynchronousCallback$KillEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 110
    invoke-virtual {p1}, Lcom/amazon/foundation/internal/IAsynchronousCallback$KillEvent;->getPublisher()Lcom/amazon/foundation/internal/IAsynchronousCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->actionToExecute:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->onExecutionFinished()V

    :cond_0
    return-void
.end method
