.class public final Lcom/audible/hushpuppy/plugin/DebugPlugin;
.super Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;
.source "DebugPlugin.java"


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "com.audible.hushpuppy.plugin.DebugPlugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected debugDbDumpController:Lcom/audible/hushpuppy/controller/DebugDbDumpController;

.field protected debugModelDumpController:Lcom/audible/hushpuppy/controller/DebugModelDumpController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/plugin/DebugPlugin;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/plugin/DebugPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected disable()V
    .locals 0

    return-void
.end method

.method protected enable()V
    .locals 0

    return-void
.end method

.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.audible.hushpuppy.ApplicationPlugin"

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initializeEx(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 58
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$bool;->is_release_build:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object p1, Lcom/audible/hushpuppy/plugin/DebugPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "DebugPlugin won\'t be initialized in release build!"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/plugin/DebugPlugin;)V

    .line 66
    sget-object v0, Lcom/audible/hushpuppy/plugin/DebugPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "DebugPlugin initializing ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/audible/hushpuppy/plugin/DebugPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Register debug file log writer"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->registerLogWriter(Lcom/audible/hushpuppy/common/logging/ILogWriter;)V

    .line 71
    sget-object v0, Lcom/audible/hushpuppy/plugin/DebugPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Register broadcast receiver"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 72
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;-><init>(Lde/greenrobot/event/EventBus;)V

    sget-object v2, Lcom/audible/hushpuppy/common/debug/DebugBroadcastReceiver;->DEBUG_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    sget-object v0, Lcom/audible/hushpuppy/plugin/DebugPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Register DebugModelDumpController to event bus"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/DebugPlugin;->debugModelDumpController:Lcom/audible/hushpuppy/controller/DebugModelDumpController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/audible/hushpuppy/plugin/DebugPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Register DebugDbDumpController to event bus"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/DebugPlugin;->debugDbDumpController:Lcom/audible/hushpuppy/controller/DebugDbDumpController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/audible/hushpuppy/plugin/DebugPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Register AudibleDebugMenuProvider"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 82
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    new-instance v0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method
