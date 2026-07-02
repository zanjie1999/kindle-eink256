.class final Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;
.super Ljava/lang/Object;
.source "ConstructionContext.java"


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
.field constructing:Z

.field currentReference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field invocationHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/internal/DelegatingInvocationHandler<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createProxy(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 65
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->invocationHandlers:Ljava/util/List;

    if-nez p1, :cond_0

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->invocationHandlers:Ljava/util/List;

    .line 73
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/DelegatingInvocationHandler;

    invoke-direct {p1}, Lcom/amazon/whispersync/com/google/inject/internal/DelegatingInvocationHandler;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->invocationHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/BytecodeGen;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    .line 77
    const-class v3, Lcom/amazon/whispersync/com/google/inject/internal/CircularDependencyProxy;

    aput-object v3, v1, v2

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 66
    :cond_1
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->cannotSatisfyCircularDependency(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method public finishConstruction()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->constructing:Z

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->invocationHandlers:Ljava/util/List;

    return-void
.end method

.method public getCurrentReference()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->currentReference:Ljava/lang/Object;

    return-object v0
.end method

.method public isConstructing()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->constructing:Z

    return v0
.end method

.method public removeCurrentReference()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->currentReference:Ljava/lang/Object;

    return-void
.end method

.method public setCurrentReference(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->currentReference:Ljava/lang/Object;

    return-void
.end method

.method public setProxyDelegates(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->invocationHandlers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/DelegatingInvocationHandler;

    .line 84
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/DelegatingInvocationHandler;->setDelegate(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startConstruction()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->constructing:Z

    return-void
.end method
