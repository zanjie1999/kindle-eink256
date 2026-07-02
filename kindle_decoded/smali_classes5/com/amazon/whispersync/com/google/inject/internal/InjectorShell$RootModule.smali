.class Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$RootModule;
.super Ljava/lang/Object;
.source "InjectorShell.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Module;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootModule"
.end annotation


# instance fields
.field final stage:Lcom/amazon/whispersync/com/google/inject/Stage;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/com/google/inject/Stage;)V
    .locals 1

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "stage"

    .line 271
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/Stage;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$RootModule;->stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/Stage;Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$1;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$RootModule;-><init>(Lcom/amazon/whispersync/com/google/inject/Stage;)V

    return-void
.end method


# virtual methods
.method public configure(Lcom/amazon/whispersync/com/google/inject/Binder;)V
    .locals 2

    .line 275
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/Binder;

    move-result-object p1

    .line 276
    const-class v0, Lcom/amazon/whispersync/com/google/inject/Stage;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/Binder;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$RootModule;->stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 277
    const-class v0, Lcom/amazon/whispersync/com/google/inject/Singleton;

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/Scopes;->SINGLETON:Lcom/amazon/whispersync/com/google/inject/Scope;

    invoke-interface {p1, v0, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->bindScope(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V

    .line 278
    const-class v0, Lcom/amazon/whispersync/javax/inject/Singleton;

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/Scopes;->SINGLETON:Lcom/amazon/whispersync/com/google/inject/Scope;

    invoke-interface {p1, v0, v1}, Lcom/amazon/whispersync/com/google/inject/Binder;->bindScope(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V

    return-void
.end method
