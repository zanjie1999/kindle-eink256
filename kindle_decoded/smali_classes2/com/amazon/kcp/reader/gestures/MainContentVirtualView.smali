.class Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;
.super Lcom/amazon/kcp/reader/accessibility/VirtualView;
.source "MainContentVirtualView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;
    }
.end annotation


# static fields
.field private static final MINIMUM_WAIT_BETWEEN_WORDS:I = 0x1f4

.field private static final POST_DELAY:I = 0xc8


# instance fields
.field private gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

.field private lastHoveredVirtualView:I

.field lastReadElement:Lcom/amazon/android/docviewer/IPageElement;

.field private lastReadTime:J


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Ljava/lang/String;ZLcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/accessibility/VirtualView;-><init>(Landroid/graphics/Rect;Ljava/lang/String;Z)V

    const-wide/16 p1, -0x1

    .line 27
    iput-wide p1, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->lastReadTime:J

    const/4 p1, -0x1

    .line 29
    iput p1, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->lastHoveredVirtualView:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->lastReadElement:Lcom/amazon/android/docviewer/IPageElement;

    .line 35
    iput-object p4, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->lastHoveredVirtualView:I

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->lastReadTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;J)J
    .locals 0

    .line 23
    iput-wide p1, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->lastReadTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->speakText(Ljava/lang/String;)V

    return-void
.end method

.method private areOverlaysVisible()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private postDelay(Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;Lcom/amazon/kindle/krx/gesture/GestureEvent;)V
    .locals 2

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView$WordSelectorRunnable;-><init>(Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;Lcom/amazon/kindle/krx/gesture/GestureEvent;)V

    const-wide/16 p1, 0xc8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private selectWordElement(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 5

    .line 57
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->areOverlaysVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/amazon/kcp/reader/gestures/GestureService;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 70
    :cond_2
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 71
    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    .line 72
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->postDelay(Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;Lcom/amazon/kindle/krx/gesture/GestureEvent;)V

    return v4

    :cond_3
    return v1
.end method

.method private speakText(Ljava/lang/String;)V
    .locals 2

    .line 103
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public handleHoverEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getVirtualView()Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->lastHoveredVirtualView:I

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/MainContentVirtualView;->selectWordElement(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    :catchall_0
    move-exception p1

    .line 43
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
