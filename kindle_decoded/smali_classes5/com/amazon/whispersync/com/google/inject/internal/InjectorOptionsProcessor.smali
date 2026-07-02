.class Lcom/amazon/whispersync/com/google/inject/internal/InjectorOptionsProcessor;
.super Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;
.source "InjectorOptionsProcessor.java"


# instance fields
.field private disableCircularProxies:Z

.field private jitDisabled:Z


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorOptionsProcessor;->disableCircularProxies:Z

    .line 35
    iput-boolean p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorOptionsProcessor;->jitDisabled:Z

    return-void
.end method


# virtual methods
.method getOptions(Lcom/amazon/whispersync/com/google/inject/Stage;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;)Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;
    .locals 5

    const-string/jumbo v0, "stage must be set"

    .line 54
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 56
    new-instance p2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorOptionsProcessor;->jitDisabled:Z

    iget-boolean v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorOptionsProcessor;->disableCircularProxies:Z

    invoke-direct {p2, p1, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;-><init>(Lcom/amazon/whispersync/com/google/inject/Stage;ZZ)V

    return-object p2

    .line 61
    :cond_0
    iget-object v0, p2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "child & parent stage don\'t match"

    invoke-static {v0, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 62
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-boolean v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorOptionsProcessor;->jitDisabled:Z

    if-nez v3, :cond_3

    iget-boolean v3, p2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    iget-boolean v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorOptionsProcessor;->disableCircularProxies:Z

    if-nez v4, :cond_5

    iget-boolean p2, p2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_3
    invoke-direct {v0, p1, v3, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;-><init>(Lcom/amazon/whispersync/com/google/inject/Stage;ZZ)V

    return-object v0
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/DisableCircularProxiesOption;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorOptionsProcessor;->disableCircularProxies:Z

    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lcom/amazon/whispersync/com/google/inject/spi/RequireExplicitBindingsOption;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorOptionsProcessor;->jitDisabled:Z

    .line 50
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/DisableCircularProxiesOption;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorOptionsProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/DisableCircularProxiesOption;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/amazon/whispersync/com/google/inject/spi/RequireExplicitBindingsOption;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorOptionsProcessor;->visit(Lcom/amazon/whispersync/com/google/inject/spi/RequireExplicitBindingsOption;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
