.class final Lcom/amazon/whispersync/com/google/inject/internal/InternalFactoryToProviderAdapter;
.super Ljava/lang/Object;
.source "InternalFactoryToProviderAdapter.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final initializable:Lcom/amazon/whispersync/com/google/inject/internal/Initializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/Initializable<",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Initializable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Initializable<",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "+TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "provider"

    .line 33
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactoryToProviderAdapter;->initializable:Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    const-string/jumbo p1, "source"

    .line 34
    invoke-static {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactoryToProviderAdapter;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 0
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

    .line 40
    :try_start_0
    iget-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactoryToProviderAdapter;->initializable:Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    invoke-interface {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Initializable;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {p2}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    iget-object p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactoryToProviderAdapter;->source:Ljava/lang/Object;

    invoke-virtual {p1, p2, p4, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->checkForNull(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 42
    iget-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactoryToProviderAdapter;->source:Ljava/lang/Object;

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->errorInProvider(Ljava/lang/RuntimeException;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->toException()Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactoryToProviderAdapter;->initializable:Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
