.class final Lcom/amazon/whispersync/com/google/inject/internal/ScopeBindingProcessor;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;
.source "ScopeBindingProcessor.java"


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;)Ljava/lang/Boolean;
    .locals 3

    .line 37
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;->getScope()Lcom/amazon/whispersync/com/google/inject/Scope;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;->getAnnotationType()Ljava/lang/Class;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->isScopeAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->missingScopeAnnotation()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 45
    :cond_0
    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/Annotations;->isRetainedAtRuntime(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;->getSource()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->missingRuntimeRetention(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    const-string v2, "annotation type"

    invoke-static {v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {p1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getScope(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Scope;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 53
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v2, p1, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->duplicateScopes(Lcom/amazon/whispersync/com/google/inject/Scope;Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_0

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    const-string/jumbo v2, "scope"

    invoke-static {v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/Scope;

    invoke-interface {p1, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/State;->putAnnotation(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V

    :goto_0
    const/4 p1, 0x1

    .line 58
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ScopeBindingProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
