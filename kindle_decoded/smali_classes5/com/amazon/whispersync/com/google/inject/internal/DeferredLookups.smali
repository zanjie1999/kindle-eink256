.class final Lcom/amazon/whispersync/com/google/inject/internal/DeferredLookups;
.super Ljava/lang/Object;
.source "DeferredLookups.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/Lookups;


# instance fields
.field private final injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

.field private final lookups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/DeferredLookups;->lookups:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/DeferredLookups;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    return-void
.end method


# virtual methods
.method public getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;

    invoke-direct {v0, p1, p1}, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)V

    .line 59
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/DeferredLookups;->lookups:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;->getMembersInjector()Lcom/amazon/whispersync/com/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method public getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;

    invoke-direct {v0, p1, p1}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;-><init>(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;)V

    .line 53
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/DeferredLookups;->lookups:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->getProvider()Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method initialize(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/DeferredLookups;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iput-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->lookups:Lcom/amazon/whispersync/com/google/inject/internal/Lookups;

    .line 48
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/LookupProcessor;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/LookupProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/DeferredLookups;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/DeferredLookups;->lookups:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->process(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Ljava/util/List;)V

    return-void
.end method
