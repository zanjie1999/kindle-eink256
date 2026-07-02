.class final Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementProcessor;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;
.source "PrivateElementProcessor.java"


# instance fields
.field private final injectorShellBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    .line 30
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementProcessor;->injectorShellBuilders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getInjectorShellBuilders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementProcessor;->injectorShellBuilders:Ljava/util/List;

    return-object v0
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Ljava/lang/Boolean;
    .locals 2

    .line 37
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;-><init>()V

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;->parent(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;->privateElements(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementProcessor;->injectorShellBuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/PrivateElementProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
