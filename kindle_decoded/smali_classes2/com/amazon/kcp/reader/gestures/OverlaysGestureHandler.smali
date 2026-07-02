.class public Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "OverlaysGestureHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private gestureIsMoreThanOneFinger:Z

.field private gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

.field private lastSingleTapEventTime:J

.field private savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

.field private tapWiggleThresholdSquared:F

.field private triggeredOverlaysAfterUpEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureService;F)V
    .locals 3

    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->triggeredOverlaysAfterUpEvent:Z

    const-wide/16 v1, 0x0

    .line 26
    iput-wide v1, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->lastSingleTapEventTime:J

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    .line 30
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->gestureIsMoreThanOneFinger:Z

    mul-float p2, p2, p2

    .line 31
    iput p2, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->tapWiggleThresholdSquared:F

    return-void
.end method

.method private areOverlaysVisible()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    return v0
.end method

.method private moreThanAWiggle(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 8

    .line 125
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-double v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    iget p1, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->tapWiggleThresholdSquared:F

    float-to-double v4, p1

    cmpl-double p1, v2, v4

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method private setOverlaysVisible(Z)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    .line 90
    new-instance v0, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Lcom/amazon/kindle/krx/gesture/GestureEvent;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->triggeredOverlaysAfterUpEvent:Z

    return p1
.end method

.method public onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 5

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->gestureIsMoreThanOneFinger:Z

    .line 63
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->isPageTurnInteractionDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-static {v1, p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->checkUnconfirmedSingleTapFromUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->lastSingleTapEventTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    const/4 p1, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return p1

    .line 77
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->lastSingleTapEventTime:J

    .line 79
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->areOverlaysVisible()Z

    move-result v0

    xor-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->setOverlaysVisible(Z)V

    .line 81
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->triggeredOverlaysAfterUpEvent:Z

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public onScroll(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->areOverlaysVisible()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->moreThanAWiggle(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0, p3}, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->setOverlaysVisible(Z)V

    :cond_0
    return p3
.end method

.method public onSecondPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->gestureIsMoreThanOneFinger:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->isPageTurnInteractionDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->triggeredOverlaysAfterUpEvent:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    .line 47
    :cond_1
    iget-boolean v2, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->gestureIsMoreThanOneFinger:Z

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->lastSingleTapEventTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long p1, v1, v3

    if-gez p1, :cond_2

    return v0

    .line 52
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->lastSingleTapEventTime:J

    .line 53
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->areOverlaysVisible()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/OverlaysGestureHandler;->setOverlaysVisible(Z)V

    return v0

    :cond_3
    :goto_0
    return v1
.end method
