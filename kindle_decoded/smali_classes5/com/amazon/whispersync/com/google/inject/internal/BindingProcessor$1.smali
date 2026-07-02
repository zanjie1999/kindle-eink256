.class Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;
.source "BindingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/ConstructorBinding;)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ConstructorBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->prepareBinding()V

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v1, v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ConstructorBinding;->getConstructor()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v6, p1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;->create(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Z)Lcom/amazon/whispersync/com/google/inject/internal/ConstructorBindingImpl;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scheduleInitialization(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->putBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 78
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->invalidBinding(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/UntargettedBindingImpl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->putBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    :goto_0
    const/4 p1, 0x1

    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ConvertedConstantBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 149
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot apply a non-module element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/ExposedBinding;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ExposedBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 145
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot apply a non-module element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/InstanceBinding;)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/InstanceBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->prepareBinding()V

    .line 85
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/InstanceBinding;->getInjectionPoints()Ljava/util/Set;

    move-result-object v5

    .line 86
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/InstanceBinding;->getInstance()Ljava/lang/Object;

    move-result-object v6

    .line 87
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;)Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    invoke-virtual {p1, v0, v6, v1, v5}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->requestInjection(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;)Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    move-result-object p1

    .line 89
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ConstantFactory;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Initializable;)V

    .line 90
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    invoke-static {p1, v1, v0, v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 92
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    new-instance v7, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;

    iget-object v1, p1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/InstanceBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Ljava/util/Set;Ljava/lang/Object;)V

    invoke-virtual {p1, v7}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->putBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    const/4 p1, 0x1

    .line 94
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/LinkedKeyBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->prepareBinding()V

    .line 126
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/LinkedKeyBinding;->getLinkedKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v6

    .line 127
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {p1, v6}, Lcom/amazon/whispersync/com/google/inject/Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->recursiveBinding()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 131
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/FactoryProxy;

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, v6, v2}, Lcom/amazon/whispersync/com/google/inject/internal/FactoryProxy;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->bindingData:Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;->addCreationListener(Lcom/amazon/whispersync/com/google/inject/internal/CreationListener;)V

    .line 133
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 135
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    new-instance v7, Lcom/amazon/whispersync/com/google/inject/internal/LinkedBindingImpl;

    iget-object v1, p1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/LinkedBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/Key;)V

    invoke-virtual {p1, v7}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->putBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    const/4 p1, 0x1

    .line 137
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderBinding;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ProviderBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 153
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot apply a non-module element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->prepareBinding()V

    .line 99
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;->getProviderInstance()Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object v6

    .line 100
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;->getInjectionPoints()Ljava/util/Set;

    move-result-object v7

    .line 101
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;)Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    invoke-virtual {p1, v0, v6, v1, v7}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->requestInjection(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Set;)Lcom/amazon/whispersync/com/google/inject/internal/Initializable;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactoryToProviderAdapter;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactoryToProviderAdapter;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Initializable;Ljava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    invoke-static {p1, v1, v0, v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 106
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    new-instance v8, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;

    iget-object v1, p1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/Provider;Ljava/util/Set;)V

    invoke-virtual {p1, v8}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->putBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    const/4 p1, 0x1

    .line 108
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ProviderKeyBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->prepareBinding()V

    .line 113
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderKeyBinding;->getProviderKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v6

    .line 114
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    invoke-direct {p1, v0, v6, v1}, Lcom/amazon/whispersync/com/google/inject/internal/BoundProviderFactory;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->bindingData:Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;->addCreationListener(Lcom/amazon/whispersync/com/google/inject/internal/CreationListener;)V

    .line 117
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v4

    .line 119
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;

    new-instance v7, Lcom/amazon/whispersync/com/google/inject/internal/LinkedProviderBindingImpl;

    iget-object v1, p1, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->source:Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor$Processor;->scoping:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/whispersync/com/google/inject/internal/LinkedProviderBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/Key;)V

    invoke-virtual {p1, v7}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->putBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    const/4 p1, 0x1

    .line 121
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/UntargettedBinding;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/UntargettedBinding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 141
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/ConstructorBinding;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ConstructorBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ConvertedConstantBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/ExposedBinding;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ExposedBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/InstanceBinding;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/InstanceBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/LinkedKeyBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderBinding;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderKeyBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/UntargettedBinding;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->visit(Lcom/amazon/whispersync/com/google/inject/spi/UntargettedBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected visitOther(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "+TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 158
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BindingProcessor should override all visitations"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected bridge synthetic visitOther(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;->visitOther(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
