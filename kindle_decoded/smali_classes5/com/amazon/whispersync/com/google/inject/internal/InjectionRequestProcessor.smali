.class final Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;
.source "InjectionRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;
    }
.end annotation


# instance fields
.field private final initializer:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

.field private final staticInjections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/Initializer;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    .line 38
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;->initializer:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    return-void
.end method


# virtual methods
.method injectMembers()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;

    .line 78
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->injectMembers()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method validate()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;

    .line 67
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->validate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;)Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest<",
            "*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->getInjectionPoints()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 57
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;->initializer:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->getInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;->getSource()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->requestInjection(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;)Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    const/4 p1, 0x1

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Boolean;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;->staticInjections:Ljava/util/List;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    invoke-direct {v1, p0, v2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 48
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
