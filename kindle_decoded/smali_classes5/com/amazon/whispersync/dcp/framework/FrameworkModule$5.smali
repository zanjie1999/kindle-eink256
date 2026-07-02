.class Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5;
.super Lcom/amazon/whispersync/com/google/inject/AbstractModule;
.source "FrameworkModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/FrameworkModule;->configure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/FrameworkModule;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5;->this$0:Lcom/amazon/whispersync/dcp/framework/FrameworkModule;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 2

    .line 100
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5$1;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5$1;-><init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5;)V

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 110
    const-class v0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5$2;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5$2;-><init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5;)V

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 121
    const-class v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5$3;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5$3;-><init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5;)V

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 132
    const-class v0, Lcom/amazon/identity/auth/device/api/TokenManagement;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5$4;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5$4;-><init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5;)V

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    return-void
.end method
