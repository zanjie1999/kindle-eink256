.class public Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.speedreading.doubletime.ActivityLifecycleListener"


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private shouldRestartDoubleTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    .line 37
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    .line 39
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 40
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->shouldRestartDoubleTime:Z

    return p1
.end method


# virtual methods
.method public onActionBarVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLocalBookItemEvent(Lcom/amazon/kindle/krx/events/LocalBookItemEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/LocalBookItemEvent;->getType()Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;->PROPOSE_LOCATION:Lcom/amazon/kindle/krx/events/LocalBookItemEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 50
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getControlPanel()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->pauseDoubleTime()V

    :cond_0
    return-void
.end method

.method public onOverlayVisibilityChange(Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getOverlayHeader()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 150
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getControlPanel()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getControlPanel()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->isDoubleTimePaused()Z

    move-result p1

    if-nez p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getControlPanel()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->pauseDoubleTime()V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->onActivityPaused()V

    :cond_0
    return-void
.end method

.method public declared-synchronized onReaderModeChangedEvent(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->DOUBLETIME:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq p1, v0, :cond_0

    .line 62
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->stopDoubletimeMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onResume()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->onActivityResume()V

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/GateKeeper;->allowDoubleTime(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->stopDoubletimeMode()V

    goto :goto_0

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->shouldRestartDoubleTime:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->controller:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->startDoubletimeMode(Lcom/amazon/kindle/krx/content/IBook;)V

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->shouldRestartDoubleTime:Z

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->TAG:Ljava/lang/String;

    const-string v2, "Double Time restarted"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSettingsChange()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 70
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->TAG:Ljava/lang/String;

    const-string v1, "ThemeChangedEvent received"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 72
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
