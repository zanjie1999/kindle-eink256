.class final Lcom/amazon/whispersync/com/google/inject/internal/TypeListenerBindingProcessor;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;
.source "TypeListenerBindingProcessor.java"


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;)Ljava/lang/Boolean;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/State;->addTypeListener(Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;)V

    const/4 p1, 0x1

    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/TypeListenerBindingProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
