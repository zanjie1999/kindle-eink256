.class public Lcom/amazon/device/sync/platform/SyncModule;
.super Lcom/amazon/whispersync/com/google/inject/AbstractModule;
.source "SyncModule.java"


# static fields
.field private static final DEFERRED_POOL_SIZE:Lcom/amazon/whispersync/dcp/settings/SettingInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    const-string v1, "com.amazon.device.sync.DEFERRED_POOL_SIZE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/sync/platform/SyncModule;->DEFERRED_POOL_SIZE:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 2

    .line 37
    const-class v0, Lcom/amazon/device/sync/platform/WhispersyncConfig;

    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isMapR5Supported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/sync/platform/AmazonWhispersyncConfig;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->to(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/Scopes;->SINGLETON:Lcom/amazon/whispersync/com/google/inject/Scope;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Lcom/amazon/whispersync/com/google/inject/Scope;)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/sync/platform/ThirdPartyWhispersyncConfig;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->to(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/Scopes;->SINGLETON:Lcom/amazon/whispersync/com/google/inject/Scope;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Lcom/amazon/whispersync/com/google/inject/Scope;)V

    .line 49
    :goto_0
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isDCMFor3PSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/FeatureHelpers;->isMapR5Supported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Lcom/amazon/device/sync/platform/SyncModule$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/sync/platform/SyncModule$1;-><init>(Lcom/amazon/device/sync/platform/SyncModule;)V

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->install(Lcom/amazon/whispersync/com/google/inject/Module;)V

    :cond_1
    return-void
.end method

.method deferredExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Provides;
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/com/google/inject/name/Named;
        value = "DeferredExecutor"
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/dcp/framework/DCPSingleton;
    .end annotation

    .line 65
    sget-object v0, Lcom/amazon/device/sync/platform/SyncModule;->DEFERRED_POOL_SIZE:Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result v0

    new-instance v1, Lcom/amazon/device/sync/platform/SyncModule$2;

    invoke-direct {v1, p0}, Lcom/amazon/device/sync/platform/SyncModule$2;-><init>(Lcom/amazon/device/sync/platform/SyncModule;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method getRetryPolicy()Lcom/amazon/device/sync/gear/RetryPolicy;
    .locals 2
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Provides;
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/dcp/framework/DCPSingleton;
    .end annotation

    .line 90
    new-instance v0, Lcom/amazon/device/sync/ExecutorTimeout;

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;

    invoke-direct {v1}, Lcom/amazon/whispersync/dcp/framework/SystemWrapper;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/device/sync/ExecutorTimeout;-><init>(Lcom/amazon/whispersync/dcp/framework/SystemWrapper;)V

    return-object v0
.end method
