.class public Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions;
.super Lcom/amazon/whispersync/com/google/inject/AbstractModule;
.source "DefaultRoboModuleExtensions.java"


# instance fields
.field private final mNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions;->mNamespace:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions;)Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions;->mNamespace:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected configure()V
    .locals 3

    .line 32
    const-class v0, Lcom/amazon/whispersync/dcp/framework/WrappableSingletonScope;

    const-class v1, Lcom/amazon/whispersync/roboguice/inject/ContextScopedRoboInjector;

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions$1;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions$1;-><init>(Lcom/amazon/whispersync/dcp/framework/DefaultRoboModuleExtensions;)V

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 44
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/dcp/framework/LazyScopeWrapper;-><init>(Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->requestInjection(Ljava/lang/Object;)V

    .line 47
    const-class v2, Lcom/amazon/whispersync/dcp/framework/DCPSingleton;

    invoke-virtual {p0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bindScope(Ljava/lang/Class;Lcom/amazon/whispersync/com/google/inject/Scope;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/com/google/inject/Singleton;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    return-void
.end method
