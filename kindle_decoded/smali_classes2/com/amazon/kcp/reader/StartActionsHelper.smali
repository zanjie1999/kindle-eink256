.class public Lcom/amazon/kcp/reader/StartActionsHelper;
.super Ljava/lang/Object;
.source "StartActionsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hasReceivedInitialNavigationEnd:Z

.field private shouldTriggerStartActionsOnNavigationEnd:Z

.field private startActionsTriggered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/reader/StartActionsHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/StartActionsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/StartActionsHelper;->hasReceivedInitialNavigationEnd:Z

    .line 35
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/StartActionsHelper;->shouldTriggerStartActionsOnNavigationEnd:Z

    .line 42
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/StartActionsHelper;->startActionsTriggered:Z

    .line 48
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 53
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/StartActionsHelper;->hasReceivedInitialNavigationEnd:Z

    if-eqz v0, :cond_0

    .line 56
    sget-object p1, Lcom/amazon/kcp/reader/StartActionsHelper;->TAG:Ljava/lang/String;

    const-string v0, "Receiving nav end event more than once, but we should have unsubscribed ourselves the first time we received it!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 63
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/StartActionsHelper;->hasReceivedInitialNavigationEnd:Z

    .line 65
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/StartActionsHelper;->shouldTriggerStartActionsOnNavigationEnd:Z

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/StartActionsHelper;->triggerStartActions(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    :cond_1
    return-void
.end method

.method public triggerStartActions(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 4

    .line 84
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/StartActionsHelper;->startActionsTriggered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 97
    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/StartActionsHelper;->hasReceivedInitialNavigationEnd:Z

    if-nez v0, :cond_2

    .line 103
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/StartActionsHelper;->shouldTriggerStartActionsOnNavigationEnd:Z

    return-void

    .line 108
    :cond_2
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 110
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 111
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isOpeningToSrl()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 112
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderEventHandler()Lcom/amazon/kindle/tutorial/IReaderEventHandler;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/amazon/kindle/tutorial/IReaderEventHandler;->onBookOpenStart(Lcom/amazon/kindle/model/content/ILocalBookItem;Z)V

    .line 115
    :cond_5
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/StartActionsHelper;->startActionsTriggered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 117
    sget-object v0, Lcom/amazon/kcp/reader/StartActionsHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unable to publish book open to SRL event"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
