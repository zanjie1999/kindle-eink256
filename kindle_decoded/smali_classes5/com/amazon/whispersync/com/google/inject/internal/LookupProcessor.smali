.class final Lcom/amazon/whispersync/com/google/inject/internal/LookupProcessor;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;
.source "LookupProcessor.java"


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup<",
            "TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;->getType()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;->initializeDelegate(Lcom/amazon/whispersync/com/google/inject/MembersInjector;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    :goto_0
    const/4 p1, 0x1

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup<",
            "TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getProviderOrThrow(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;->initializeDelegate(Lcom/amazon/whispersync/com/google/inject/Provider;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    :goto_0
    const/4 p1, 0x1

    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/LookupProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/LookupProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
