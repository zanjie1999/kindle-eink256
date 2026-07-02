.class public Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;
.super Ljava/lang/Object;
.source "KRIFSettingsChangeListener.java"

# interfaces
.implements Lcom/amazon/krf/platform/SettingsChangedListener;


# instance fields
.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final weakDocViewer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;->weakDocViewer:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    .line 38
    const-class v1, Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public onSettingsChanged(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/ViewSettings;)V
    .locals 2

    .line 29
    iget-object p1, p0, Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;->weakDocViewer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_0

    .line 31
    new-instance p2, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;

    sget-object v0, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;->POST_CHANGE:Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$ChangeType;Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent$SettingType;)V

    invoke-direct {p0, p2}, Lcom/amazon/kindle/listeners/KRIFSettingsChangeListener;->publishEvent(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method
