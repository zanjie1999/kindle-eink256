.class final Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;
.super Ljava/lang/Object;
.source "ConstructorInjector.java"


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
.field private final constructionProxy:Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final injectableMembers:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final membersInjector:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final parameterInjectors:[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy<",
            "TT;>;[",
            "Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->injectableMembers:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    .line 42
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->constructionProxy:Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;

    .line 43
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->parameterInjectors:[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;

    .line 44
    iput-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->membersInjector:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    return-void
.end method


# virtual methods
.method construct(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 61
    invoke-virtual {p2, p0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->getConstructionContext(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->isConstructing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p4, :cond_0

    .line 69
    invoke-virtual {v0, p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->createProxy(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 66
    :cond_0
    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->circularProxiesDisabled(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    .line 75
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->getCurrentReference()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    return-object p3

    .line 82
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->startConstruction()V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    iget-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->parameterInjectors:[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;

    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;->getAll(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;)[Ljava/lang/Object;

    move-result-object p3

    .line 85
    iget-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->constructionProxy:Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;

    invoke-interface {p4, p3}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 86
    invoke-virtual {v0, p3}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->setProxyDelegates(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->finishConstruction()V

    .line 92
    invoke-virtual {v0, p3}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->setCurrentReference(Ljava/lang/Object;)V

    .line 94
    iget-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->membersInjector:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    const/4 v1, 0x0

    invoke-virtual {p4, p3, p1, p2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->injectMembers(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Z)V

    .line 95
    iget-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->membersInjector:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    invoke-virtual {p2, p3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->notifyListeners(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    return-object p3

    :catchall_0
    move-exception p2

    .line 88
    :try_start_3
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->finishConstruction()V

    throw p2
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 99
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 102
    :cond_3
    iget-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->constructionProxy:Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;

    invoke-interface {p3}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;->getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInjectingConstructor(Ljava/lang/Throwable;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 105
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionContext;->removeCurrentReference()V

    throw p1
.end method

.method getConstructionProxy()Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy<",
            "TT;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->constructionProxy:Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;

    return-object v0
.end method

.method public getInjectableMembers()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;->injectableMembers:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-object v0
.end method
