.class public Lcom/amazon/foundation/internal/IntEventProvider;
.super Ljava/lang/Object;
.source "IntEventProvider.java"

# interfaces
.implements Lcom/amazon/foundation/IIntEventProvider;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final manager:Lcom/amazon/foundation/CallbackManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCallbackManager;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCallbackManager;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/foundation/internal/IntEventProvider;-><init>(Lcom/amazon/foundation/CallbackManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/foundation/CallbackManager;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazon/foundation/internal/IntEventProvider;->manager:Lcom/amazon/foundation/CallbackManager;

    return-void
.end method


# virtual methods
.method public notifyListeners(I)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/amazon/foundation/internal/IntEventProvider;->manager:Lcom/amazon/foundation/CallbackManager;

    new-instance v1, Lcom/amazon/foundation/internal/IntEventProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/foundation/internal/IntEventProvider$1;-><init>(Lcom/amazon/foundation/internal/IntEventProvider;I)V

    invoke-interface {v0, v1}, Lcom/amazon/foundation/CallbackManager;->executeCallbacks(Lcom/amazon/foundation/CallbackManager$ICallbackExecutor;)V

    return-void
.end method

.method public register(Lcom/amazon/foundation/IIntCallback;)Z
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/foundation/internal/IntEventProvider;->manager:Lcom/amazon/foundation/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/CallbackManager;->register(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public unregister(Lcom/amazon/foundation/IIntCallback;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/foundation/internal/IntEventProvider;->manager:Lcom/amazon/foundation/CallbackManager;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/CallbackManager;->unregister(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
