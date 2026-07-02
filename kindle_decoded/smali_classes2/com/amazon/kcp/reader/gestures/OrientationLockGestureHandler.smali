.class public Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "OrientationLockGestureHandler.java"


# instance fields
.field private activity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private hasExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lockClickedOnUp:Z

.field private orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

.field private savedDown:Lcom/amazon/kindle/krx/gesture/GestureEvent;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/IOrientationLockManager;Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->hasExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    .line 33
    iput-object p2, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 35
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method areOtherViewsVisible()Z
    .locals 3

    .line 159
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->areOverlaysVisible()Z

    move-result v0

    .line 160
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->hasSelectionOnScreen()Z

    move-result v1

    .line 161
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->hasExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected areOverlaysVisible()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x46

    return v0
.end method

.method hasSelectionOnScreen()Z
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 188
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 193
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getObjectSelectionController()Lcom/amazon/android/docviewer/selection/IObjectSelectionController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 194
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionController;->hasSelectionOnScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method isEventPointingToLock(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->isPointInOrientationLock(II)Z

    move-result p1

    return p1
.end method

.method isLockAvailable()Z
    .locals 4

    .line 77
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->screenHasActionableFooter()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 78
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->isOrientationLockVisible()Z

    move-result v2

    .line 79
    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v3}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method isSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->savedDown:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->checkUnconfirmedSingleTapFromUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->lockClickedOnUp:Z

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->savedDown:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->areOverlaysVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->shouldSavePointerDownEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->savedDown:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    :cond_1
    :goto_0
    return v0
.end method

.method public onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 97
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->shouldHandleClick(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->onOrientationLockClick()Z

    move-result v1

    .line 113
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->lockClickedOnUp:Z

    :cond_1
    return v1
.end method

.method public onKRXExternalScreenEvent(Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 218
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;->isOpened()Z

    move-result p1

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->hasExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    .line 199
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 206
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->lockClickedOnUp:Z

    return p1
.end method

.method screenHasActionableFooter()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->hasActionableFooterFromProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldHandleClick(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 125
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->isEventPointingToLock(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v0

    .line 126
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->areOtherViewsVisible()Z

    move-result v1

    .line 127
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->isSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method shouldSavePointerDownEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->isEventPointingToLock(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;->isLockAvailable()Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
