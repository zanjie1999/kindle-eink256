.class public final Lcom/audible/hushpuppy/plugin/UpsellPlugin;
.super Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;
.source "UpsellPlugin.java"


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    entry = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;
    name = "com.audible.hushpuppy.UpsellPlugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field protected startActionsProvider:Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;

.field protected userController:Lcom/audible/hushpuppy/controller/UserController;

.field protected viewController:Lcom/audible/hushpuppy/controller/ViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/plugin/UpsellPlugin;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected disable()V
    .locals 2

    .line 77
    sget-object v0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Disabling com.audible.hushpuppy.UpsellPlugin"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isToaEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Deregistering UserController, TOA is not enabled!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->userController:Lcom/audible/hushpuppy/controller/UserController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected enable()V
    .locals 2

    .line 62
    sget-object v0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "HP-AppStart: Enabling com.audible.hushpuppy.UpsellPlugin"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->startActionsProvider:Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomWidgetProvider(Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidgetProvider;)V

    .line 64
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getKindleReaderSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isToaEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Registering UserController to handle events!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->userController:Lcom/audible/hushpuppy/controller/UserController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Deregistering UserController, TOA is not enabled!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/audible/hushpuppy/plugin/HushpuppyReaderPluginBase;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/plugin/UpsellPlugin;->userController:Lcom/audible/hushpuppy/controller/UserController;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    :goto_0
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
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public initializeEx(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 56
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/plugin/UpsellPlugin;)V

    return-void
.end method
