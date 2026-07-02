.class public abstract Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;
.super Ljava/lang/Object;
.source "AbstractObservableStateContext.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/write/IStateContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/model/write/IStateContext<",
        "TSTATE;>;"
    }
.end annotation


# instance fields
.field protected currentState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE;"
        }
    .end annotation
.end field

.field protected final logger:Lcom/audible/hushpuppy/common/logging/ILogger;

.field protected final registeredCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/model/write/IStateContext<",
            "TSTATE;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->registeredCallbacks:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSTATE;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    return-object v0
.end method

.method public final notifyObservers(Lcom/audible/hushpuppy/model/write/IStateContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/model/write/IStateContext<",
            "TSTATE;>;)V"
        }
    .end annotation

    const-string v0, "state can\'t be null."

    .line 60
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->registeredCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Notifying %s observer(s) ..."

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->registeredCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/common/misc/ICallback;

    .line 64
    invoke-interface {v1, p1}, Lcom/audible/hushpuppy/common/misc/ICallback;->execute(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final register(Lcom/audible/hushpuppy/common/misc/ICallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/model/write/IStateContext<",
            "TSTATE;>;>;)Z"
        }
    .end annotation

    const-string v0, "callback can\'t be null."

    .line 46
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->registeredCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic register(Ljava/lang/Object;)Z
    .locals 0

    .line 25
    check-cast p1, Lcom/audible/hushpuppy/common/misc/ICallback;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->register(Lcom/audible/hushpuppy/common/misc/ICallback;)Z

    move-result p1

    return p1
.end method

.method public final setState(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSTATE;)V"
        }
    .end annotation

    const-string v0, "state can\'t be null."

    .line 78
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    const-string v2, "State changed from %s to %s"

    invoke-interface {v0, v2, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, p0}, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->notifyObservers(Lcom/audible/hushpuppy/model/write/IStateContext;)V

    return-void
.end method

.method public final unregister(Lcom/audible/hushpuppy/common/misc/ICallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/common/misc/ICallback<",
            "Lcom/audible/hushpuppy/model/write/IStateContext<",
            "TSTATE;>;>;)Z"
        }
    .end annotation

    const-string v0, "callback can\'t be null."

    .line 53
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->registeredCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic unregister(Ljava/lang/Object;)Z
    .locals 0

    .line 25
    check-cast p1, Lcom/audible/hushpuppy/common/misc/ICallback;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->unregister(Lcom/audible/hushpuppy/common/misc/ICallback;)Z

    move-result p1

    return p1
.end method
