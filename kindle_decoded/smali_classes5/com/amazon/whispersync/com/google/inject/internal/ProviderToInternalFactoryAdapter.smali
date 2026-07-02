.class final Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;
.super Ljava/lang/Object;
.source "ProviderToInternalFactoryAdapter.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

.field private final internalFactory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
            "+TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    .line 34
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;->internalFactory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;->internalFactory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>()V

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    new-instance v2, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->callInContext(Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwIfNewErrors(I)V
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 52
    new-instance v2, Lcom/amazon/whispersync/com/google/inject/ProvisionException;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/amazon/whispersync/com/google/inject/ProvisionException;-><init>(Ljava/lang/Iterable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;->internalFactory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
