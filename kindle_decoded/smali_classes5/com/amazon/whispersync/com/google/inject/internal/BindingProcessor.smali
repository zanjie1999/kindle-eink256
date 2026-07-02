.class final Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;
.source "BindingProcessor.java"


# instance fields
.field private final initializer:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/Initializer;Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;)V

    .line 48
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;->initializer:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;)Lcom/amazon/whispersync/com/google/inject/internal/Initializer;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;->initializer:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    return-object p0
.end method

.method private bindExposed(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;Lcom/amazon/whispersync/com/google/inject/Key;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 171
    new-instance v4, Lcom/amazon/whispersync/com/google/inject/internal/ExposedKeyFactory;

    invoke-direct {v4, p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/ExposedKeyFactory;-><init>(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)V

    .line 172
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->bindingData:Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;

    invoke-virtual {v0, v4}, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;->addCreationListener(Lcom/amazon/whispersync/com/google/inject/internal/CreationListener;)V

    .line 173
    new-instance v6, Lcom/amazon/whispersync/com/google/inject/internal/ExposedBindingImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    invoke-interface {p1, p2}, Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;->getExposedSource(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v6

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whispersync/com/google/inject/internal/ExposedBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)V

    invoke-virtual {p0, v6}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractBindingProcessor;->putBinding(Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/Binding;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/Key;->getTypeLiteral()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 53
    const-class v1, Ljava/lang/Void;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    .line 65
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 54
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;

    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;->getProviderInstance()Lcom/amazon/whispersync/com/google/inject/Provider;

    move-result-object p1

    instance-of p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/ProviderMethod;

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->voidProviderMethod()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->missingConstantValues()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    :goto_0
    return-object v2

    .line 63
    :cond_1
    const-class v1, Lcom/amazon/whispersync/com/google/inject/Provider;

    if-ne v0, v1, :cond_2

    .line 64
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->bindingToProvider()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    return-object v2

    .line 68
    :cond_2
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;

    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binding;->acceptTargetVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Ljava/lang/Boolean;
    .locals 2

    .line 164
    invoke-interface {p1}, Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;->getExposedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/Key;

    .line 165
    invoke-direct {p0, p1, v1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;->bindExposed(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;Lcom/amazon/whispersync/com/google/inject/Key;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
