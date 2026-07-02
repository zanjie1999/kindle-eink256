.class public Lcom/amazon/foundation/internal/EventProvider;
.super Ljava/lang/Object;
.source "EventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/IEventProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final executor:Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;

.field private final manager:Lcom/amazon/foundation/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>(Lcom/amazon/foundation/CallbackManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/CallbackManager;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/foundation/internal/EventProvider$1;-><init>(Lcom/amazon/foundation/internal/EventProvider;)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/EventProvider;->executor:Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;

    .line 65
    iput-object p1, p0, Lcom/amazon/foundation/internal/EventProvider;->manager:Lcom/amazon/foundation/CallbackManager;

    return-void
.end method


# virtual methods
.method public notifyListeners()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/amazon/foundation/internal/EventProvider;->manager:Lcom/amazon/foundation/CallbackManager;

    iget-object v1, p0, Lcom/amazon/foundation/internal/EventProvider;->executor:Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/CallbackManager;->executeCallbacks(Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;)V

    return-void
.end method

.method public register(Lcom/amazon/foundation/ICallback;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/foundation/internal/EventProvider;->manager:Lcom/amazon/foundation/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregister(Lcom/amazon/foundation/ICallback;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amazon/foundation/internal/EventProvider;->manager:Lcom/amazon/foundation/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
