.class final Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;
.super Ljava/lang/Object;
.source "InjectorShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$RootModule;,
        Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$LoggerFactory;,
        Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$InjectorFactory;,
        Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;


# direct methods
.method private constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;Ljava/util/List;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;->elements:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;Ljava/util/List;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;Ljava/util/List;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;->bindInjector(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;->bindLogger(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V

    return-void
.end method

.method private static bindInjector(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V
    .locals 11

    .line 208
    const-class v0, Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    .line 209
    new-instance v7, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$InjectorFactory;

    const/4 v1, 0x0

    invoke-direct {v7, p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$InjectorFactory;-><init>(Lcom/amazon/whispersync/com/google/inject/Injector;Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$1;)V

    .line 210
    iget-object v9, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    new-instance v10, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;

    sget-object v4, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    sget-object v6, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->UNSCOPED:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v8

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v8}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/Provider;Ljava/util/Set;)V

    invoke-interface {v9, v0, v10}, Lcom/amazon/whispersync/com/google/inject/internal/State;->putBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    return-void
.end method

.method private static bindLogger(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)V
    .locals 11

    .line 242
    const-class v0, Ljava/util/logging/Logger;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/Key;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object v0

    .line 243
    new-instance v7, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$LoggerFactory;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$LoggerFactory;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$1;)V

    .line 244
    iget-object v9, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    new-instance v10, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;

    sget-object v4, Lcom/amazon/whispersync/com/google/inject/internal/util/$SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    sget-object v6, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->UNSCOPED:Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v8

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v5, v7

    invoke-direct/range {v1 .. v8}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderInstanceBindingImpl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Key;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;Lcom/amazon/whispersync/com/google/inject/internal/Scoping;Lcom/amazon/whispersync/com/google/inject/Provider;Ljava/util/Set;)V

    invoke-interface {v9, v0, v10}, Lcom/amazon/whispersync/com/google/inject/internal/State;->putBinding(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;)V

    return-void
.end method


# virtual methods
.method getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Element;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;->elements:Ljava/util/List;

    return-object v0
.end method

.method getInjector()Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    return-object v0
.end method
