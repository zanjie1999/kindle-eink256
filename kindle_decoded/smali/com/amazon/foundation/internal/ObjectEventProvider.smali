.class public Lcom/amazon/foundation/internal/ObjectEventProvider;
.super Ljava/lang/Object;
.source "ObjectEventProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final callbackManager:Lcom/amazon/foundation/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/ObjectEventProvider;-><init>(Lcom/amazon/foundation/CallbackManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/CallbackManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/foundation/internal/ObjectEventProvider;->callbackManager:Lcom/amazon/foundation/CallbackManager;

    return-void
.end method


# virtual methods
.method public notifyListeners(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazon/foundation/internal/ObjectEventProvider;->callbackManager:Lcom/amazon/foundation/CallbackManager;

    new-instance v1, Lcom/amazon/foundation/internal/ObjectEventProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/foundation/internal/ObjectEventProvider$1;-><init>(Lcom/amazon/foundation/internal/ObjectEventProvider;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/CallbackManager;->executeCallbacks(Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;)V

    return-void
.end method

.method public register(Lcom/amazon/foundation/internal/IObjectCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "TT;>;)Z"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/foundation/internal/ObjectEventProvider;->callbackManager:Lcom/amazon/foundation/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregister(Lcom/amazon/foundation/internal/IObjectCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/foundation/internal/IObjectCallback<",
            "TT;>;)Z"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/amazon/foundation/internal/ObjectEventProvider;->callbackManager:Lcom/amazon/foundation/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
