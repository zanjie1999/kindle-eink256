.class final Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;
.super Ljava/lang/Object;
.source "ConstructorInjectorStore.java"


# instance fields
.field private final cache:Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/FailableCache<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;->cache:Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;

    .line 41
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;->createConstructor(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    move-result-object p0

    return-object p0
.end method

.method private createConstructor(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 67
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->size()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getParametersInjectors(Ljava/util/List;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getDeclaringType()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    move-result-object v2

    .line 84
    new-instance v3, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;

    invoke-direct {v3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/DefaultConstructionProxyFactory;-><init>(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)V

    .line 87
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 89
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->getInjectionPoints()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p2

    invoke-interface {v3}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxyFactory;->create()Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;

    move-result-object v0

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;-><init>(Ljava/util/Set;Lcom/amazon/whispersync/com/google/inject/internal/ConstructionProxy;[Lcom/amazon/whispersync/com/google/inject/internal/SingleParameterInjector;Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;)V

    return-object p1
.end method


# virtual methods
.method public get(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;->cache:Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;->get(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjector;

    return-object p1
.end method

.method remove(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorInjectorStore;->cache:Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/FailableCache;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
