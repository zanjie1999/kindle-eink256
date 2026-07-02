.class public Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;
.super Lcom/amazon/kindle/seekbar/LayeredSeekBar;
.source "ReaderLayoutSeekBar.java"


# instance fields
.field private context:Landroid/content/Context;

.field protected delegates:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayerTouchEventDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private isReversed:Z

.field private waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->isReversed:Z

    .line 51
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->delegates:Ljava/util/TreeMap;

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->context:Landroid/content/Context;

    .line 53
    sget p2, Lcom/amazon/kindle/krl/R$string;->location_seekbar_description:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getViewAccessibilityInitializer()Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer$ViewType;->SEEK_BAR:Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer$ViewType;

    .line 55
    invoke-interface {p1, p0, p2}, Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer;->initializeForAccessibility(Landroid/view/View;Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer$ViewType;)V

    .line 57
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    .line 58
    instance-of p2, p1, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz p2, :cond_1

    .line 59
    check-cast p1, Lcom/amazon/kcp/reader/ReaderActivity;

    .line 60
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    .line 63
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->initLayers()V

    :cond_1
    return-void
.end method

.method private doInvalidate()V
    .locals 2

    .line 89
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->postInvalidate()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public initLayers()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/amazon/kindle/seekbar/SeekBarUtils;->initLayers(Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method

.method protected isEventNearThumb(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 138
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->location_seekbar_waypoint_snap_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result v0

    .line 140
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->isEventNearThumb(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->delegates:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayerTouchEventDelegate;

    .line 107
    iget-object v3, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    invoke-interface {v2, p1, v3}, Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayerTouchEventDelegate;->onTouchEvent(Landroid/view/MotionEvent;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    return v1

    .line 114
    :cond_2
    invoke-super {p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWaypointsModelEvent(Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel$WaypointsModelEvent;->getPublisher()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->waypointsModel:Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->doInvalidate()V

    :cond_0
    return-void
.end method

.method public setSeekerDirection(Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;)V
    .locals 2

    .line 119
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar$1;->$SwitchMap$com$amazon$kindle$krx$ui$KRXBookReadingDirection:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->isReversed:Z

    goto :goto_0

    .line 121
    :cond_0
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;->isReversed:Z

    .line 128
    :goto_0
    invoke-super {p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setSeekerDirection(Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;)V

    return-void
.end method
