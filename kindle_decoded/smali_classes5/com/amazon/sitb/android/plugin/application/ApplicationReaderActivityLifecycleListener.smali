.class public Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;
.super Ljava/lang/Object;
.source "ApplicationReaderActivityLifecycleListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/events/IMessageQueue;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method


# virtual methods
.method public onActionBarVisibilityChange(Z)V
    .locals 3

    .line 64
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application action bar visibility changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 52
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Application destroyed"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public onOverlayVisibilityChange(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/sitb/android/event/OverlayShownEvent;

    invoke-direct {v0}, Lcom/amazon/sitb/android/event/OverlayShownEvent;-><init>()V

    invoke-static {p1, v0}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/sitb/android/event/OverlayHiddenEvent;

    invoke-direct {v0}, Lcom/amazon/sitb/android/event/OverlayHiddenEvent;-><init>()V

    invoke-static {p1, v0}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 32
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Application paused"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/sitb/android/event/ApplicationPausedEvent;

    invoke-direct {v1}, Lcom/amazon/sitb/android/event/ApplicationPausedEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 45
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Application resumed"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/sitb/android/event/ApplicationResumedEvent;

    invoke-direct {v1}, Lcom/amazon/sitb/android/event/ApplicationResumedEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onSettingsChange()V
    .locals 2

    .line 58
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Application settings changed"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 39
    sget-object v0, Lcom/amazon/sitb/android/plugin/application/ApplicationReaderActivityLifecycleListener;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Application stopped"

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    return-void
.end method
