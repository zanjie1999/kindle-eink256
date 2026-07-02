.class public Lcom/amazon/whispersync/dcp/framework/FrameworkModule;
.super Lcom/amazon/whispersync/com/google/inject/AbstractModule;
.source "FrameworkModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 4

    .line 40
    const-class v0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/amazon/whispersync/dcp/framework/StateMetrics;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 42
    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-string v2, "Context_packageName"

    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/name/Names;->named(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/name/Named;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;->annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$1;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$1;-><init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule;)V

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 52
    const-class v1, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-string v2, "SystemContext"

    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/name/Names;->named(Ljava/lang/String;)Lcom/amazon/whispersync/com/google/inject/name/Named;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;->annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->to(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 54
    const-class v1, Landroid/app/DownloadManager;

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v3, "download"

    invoke-direct {v2, v3}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 55
    const-class v1, Landroid/os/DropBoxManager;

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;

    const-string v3, "dropbox"

    invoke-direct {v2, v3}, Lcom/amazon/whispersync/roboguice/inject/SystemServiceProvider;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 56
    const-class v1, Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$2;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$2;-><init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule;)V

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 67
    const-class v1, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$3;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$3;-><init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule;)V

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 79
    const-class v1, Lcom/amazon/whispersync/dcp/metrics/MetricsCollector;

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$4;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$4;-><init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule;)V

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 91
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isMapR5Supported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$5;-><init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule;)V

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->install(Lcom/amazon/whispersync/com/google/inject/Module;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/dcp/framework/auth/MapR5AccountManager;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->to(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isLwaSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$6;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$6;-><init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule;)V

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->install(Lcom/amazon/whispersync/com/google/inject/Module;)V

    .line 167
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/dcp/framework/auth/LwaAccountManager;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->to(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/dcp/framework/DCPSingleton;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isSSOSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$7;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/FrameworkModule$7;-><init>(Lcom/amazon/whispersync/dcp/framework/FrameworkModule;)V

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->install(Lcom/amazon/whispersync/com/google/inject/Module;)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/dcp/framework/auth/SSOAccountManager;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->to(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 191
    :cond_2
    :goto_0
    const-class v0, Lorg/apache/http/client/HttpClient;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->to(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    .line 193
    const-class v0, Lcom/amazon/whispersync/dcp/framework/IntentEvent$Factory;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    return-void
.end method
