.class final Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;
.super Ljava/lang/Object;
.source "BoundProviderFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
.implements Lcom/amazon/whispersync/com/google/inject/internal/CreationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
        "TT;>;",
        "Lcom/amazon/whispersync/com/google/inject/internal/CreationListener;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

.field private providerFactory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "+",
            "Lcom/amazon/whispersync/javax/inject/Provider<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final providerKey:Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "+",
            "Lcom/amazon/whispersync/javax/inject/Provider<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field final source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "+",
            "Lcom/amazon/whispersync/javax/inject/Provider<",
            "+TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    .line 38
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/amazon/whispersync/com/google/inject/Key;

    .line 39
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 52
    iget-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {p1, p4}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    .line 53
    iget-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;->providerFactory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    const/4 v0, 0x1

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/javax/inject/Provider;

    .line 55
    :try_start_0
    invoke-interface {p2}, Lcom/amazon/whispersync/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    iget-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;->source:Ljava/lang/Object;

    invoke-virtual {p1, p2, p4, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->checkForNull(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 57
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInProvider(Ljava/lang/RuntimeException;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method public notify(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 4

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;->source:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v2

    sget-object v3, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;->NEW_OR_EXISTING_JIT:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getInternalFactory(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$JitLimitation;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;->providerFactory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;->providerKey:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/Key;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
