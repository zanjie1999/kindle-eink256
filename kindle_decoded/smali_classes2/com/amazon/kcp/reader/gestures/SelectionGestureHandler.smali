.class public Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "SelectionGestureHandler.java"

# interfaces
.implements Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;,
        Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;
    }
.end annotation


# static fields
.field private static final INVALID_X:I = -0x1

.field private static final INVALID_Y:I = -0x1

.field private static final POST_DELAY:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_BEFORE_MULTIPAGE_HIGHLIGHT_PAGE_FLIP:I = 0x3e8


# instance fields
.field private cachedVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

.field private context:Landroid/content/Context;

.field private currentWordElement:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

.field didDismissSelectionOnDown:Z

.field private draggingSelection:Z

.field protected flipPage:Ljava/lang/Runnable;

.field protected gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

.field private handler:Landroid/os/Handler;

.field private hoverEnterVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

.field private hoverFingersDown:I

.field private hoverMoveVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

.field lastKnownSelectionPoint:Landroid/graphics/Point;

.field protected lastKnownSelectionPointWithOffset:Landroid/graphics/Point;

.field private mphlEnabled:Z

.field protected pageTurnHandler:Landroid/os/Handler;

.field private runnableSubmitted:Z

.field private savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

.field private selectedWordElement:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

.field private tapDownEventAfterShowSelectionOptions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureService;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->lastKnownSelectionPointWithOffset:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->tapDownEventAfterShowSelectionOptions:Z

    .line 72
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->draggingSelection:Z

    .line 75
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->didDismissSelectionOnDown:Z

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->currentWordElement:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    .line 80
    iput-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->selectedWordElement:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    .line 81
    iput-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->handler:Landroid/os/Handler;

    .line 83
    iput v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverFingersDown:I

    .line 87
    iput-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->cachedVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 100
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->runnableSubmitted:Z

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->pageTurnHandler:Landroid/os/Handler;

    .line 123
    new-instance v0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$1;-><init>(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->flipPage:Ljava/lang/Runnable;

    .line 103
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    .line 105
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->context:Landroid/content/Context;

    .line 107
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->isMphlEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->mphlEnabled:Z

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->registerForAccessibility(Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;)Z

    .line 113
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->handler:Landroid/os/Handler;

    .line 114
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->lastKnownSelectionPoint:Landroid/graphics/Point;

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->runnableSubmitted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->draggingSelection:Z

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)Lcom/amazon/kindle/krx/accessibility/IVirtualView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverMoveVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)Lcom/amazon/kindle/krx/accessibility/IVirtualView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverEnterVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverFingersDown:I

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->currentWordElement:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;)Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->selectedWordElement:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;)Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->selectedWordElement:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    return-object p1
.end method

.method private announceWordElementForAccessibility(Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;)V
    .locals 4

    .line 754
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$WordSelectorRunnable;-><init>(Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private magnifyTouchPoint(FF)V
    .locals 8

    .line 323
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getMagnifyingGlass()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 329
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnifiedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 330
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnification()F

    move-result v4

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 332
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnification()F

    move-result v5

    div-float/2addr v3, v5

    div-float/2addr v3, v4

    .line 334
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnifiedView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 335
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnification()F

    move-result v7

    div-float/2addr v6, v7

    div-float/2addr v6, v4

    sub-float/2addr v5, v6

    .line 337
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnification()F

    move-result v7

    div-float/2addr v6, v7

    div-float/2addr v6, v4

    .line 339
    new-instance v4, Landroid/graphics/PointF;

    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-direct {v4, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 341
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setMagnifiedCenterPoint(Landroid/graphics/PointF;)V

    .line 342
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    return-void
.end method

.method private onSelectionAreaChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 395
    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->cachedVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 396
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    return-void
.end method

.method private onSelectionStateChange()V
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 356
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    .line 358
    sget-object v1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$2;->$SwitchMap$com$amazon$android$docviewer$selection$IObjectSelectionModel$SelectionState:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->draggingSelection:Z

    .line 375
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getMagnifyingGlass()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->setVisibility(I)V

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, v2, :cond_3

    .line 385
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->dealWithPointUp()V

    goto :goto_0

    .line 363
    :cond_2
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->draggingSelection:Z

    .line 366
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getMagnifyingGlassWithoutInflating()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 368
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private selectNearestWordElement(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, v2, p1, v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 736
    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 737
    check-cast p1, Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    .line 738
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->announceWordElementForAccessibility(Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;)V

    .line 739
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->currentWordElement:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 741
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->currentWordElement:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    :goto_0
    return v1
.end method


# virtual methods
.method protected dealWithPointUp()V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    .line 571
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->draggingSelection:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 572
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionEditor()Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 574
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/ISelectionEditor;->endSelection()V

    :cond_0
    return-void
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getVirtualViews(Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation

    .line 650
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 652
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 653
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->cachedVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    if-eqz v1, :cond_1

    .line 657
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 660
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 661
    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 663
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 664
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 665
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 666
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 668
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->context:Landroid/content/Context;

    sget v5, Lcom/amazon/kindle/krl/R$string;->speak_selection:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 670
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 671
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 675
    :cond_2
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/VirtualView;

    invoke-direct {v0, v1, p1, v7}, Lcom/amazon/kcp/reader/accessibility/VirtualView;-><init>(Landroid/graphics/Rect;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->cachedVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 676
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    .line 678
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->cachedVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 654
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 680
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method magnifyTouchPoint(Lcom/amazon/kindle/krx/gesture/GestureEvent;)V
    .locals 5

    .line 296
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getMagnifyingGlass()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getOffsets()Landroid/graphics/Point;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 303
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    .line 304
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v2

    .line 305
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v2, :cond_2

    int-to-float v0, v3

    int-to-float v2, p1

    .line 306
    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->magnifyTouchPoint(FF)V

    goto :goto_1

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    move-result-object v0

    if-nez v0, :cond_3

    .line 310
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->TAG:Ljava/lang/String;

    const-string v0, "objSelectionView is null, touch event cannot be handled in this state."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    int-to-float v2, v3

    const/4 v4, 0x1

    .line 313
    invoke-virtual {v0, v4}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSelectionOffsetY(Z)I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->magnifyTouchPoint(FF)V

    :goto_1
    if-eqz v1, :cond_4

    .line 316
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 318
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, v3

    int-to-float p1, p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setMagnifiedCenterPositionPoint(Landroid/graphics/PointF;)V

    :cond_5
    return-void
.end method

.method public onAccessibilityDisabled()V
    .locals 0

    return-void
.end method

.method public onAccessibilityEnabled()V
    .locals 0

    return-void
.end method

.method public onActivate()V
    .locals 1

    .line 177
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onDeactivate()V
    .locals 1

    .line 645
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 10

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 200
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    const-string v3, ", dragging state="

    if-eqz v2, :cond_1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling DOWN event, selection state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->draggingSelection:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    :cond_1
    new-instance v2, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v2, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Lcom/amazon/kindle/krx/gesture/GestureEvent;)V

    iput-object v2, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    .line 210
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->didDismissSelectionOnDown:Z

    .line 212
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionEditor()Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    move-result-object v2

    if-nez v2, :cond_2

    .line 216
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->TAG:Ljava/lang/String;

    const-string v0, "Selection model does not support creating selections, but SelectionGestureListener is active!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 220
    :cond_2
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->tapDownEventAfterShowSelectionOptions:Z

    .line 222
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v4

    sget-object v5, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v4, v5, :cond_9

    .line 223
    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    move-result-object v3

    if-nez v3, :cond_3

    .line 225
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->TAG:Ljava/lang/String;

    const-string v0, "objSelectionView is null, touch event cannot be handled in this state."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 231
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 232
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x1

    .line 238
    iput-boolean v6, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->tapDownEventAfterShowSelectionOptions:Z

    .line 240
    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->pointIsInStartHandle(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 242
    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getStartHandleCoordAtPoint(II)Landroid/graphics/Point;

    move-result-object v7

    .line 244
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 245
    iget v7, v7, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 246
    :cond_4
    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->pointIsInEndHandle(II)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 248
    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getEndHandleCoordAtPoint(II)Landroid/graphics/Point;

    move-result-object v7

    .line 250
    iget v8, v7, Landroid/graphics/Point;->x:I

    .line 251
    iget v7, v7, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 255
    :cond_5
    invoke-virtual {v3, v6}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSelectionOffsetY(Z)I

    move-result v7

    sub-int v7, v5, v7

    move v8, v4

    .line 258
    :goto_0
    iget-object v9, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v9, v8, v7, v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v1

    if-nez v1, :cond_6

    .line 261
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 262
    iput-boolean v6, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->didDismissSelectionOnDown:Z

    goto :goto_1

    .line 263
    :cond_6
    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->pointIsInStartHandle(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 264
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 265
    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 266
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/selection/ISelectionEditor;->startSelectionBeginChange(Lcom/amazon/android/docviewer/IPageElement;)V

    .line 267
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->magnifyTouchPoint(Lcom/amazon/kindle/krx/gesture/GestureEvent;)V

    goto :goto_1

    .line 268
    :cond_7
    invoke-virtual {v3, v4, v5}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->pointIsInEndHandle(II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 270
    iput v5, v0, Landroid/graphics/Point;->y:I

    .line 271
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/selection/ISelectionEditor;->startSelectionEndChange(Lcom/amazon/android/docviewer/IPageElement;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->magnifyTouchPoint(Lcom/amazon/kindle/krx/gesture/GestureEvent;)V

    goto :goto_1

    .line 274
    :cond_8
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 275
    iput-boolean v6, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->didDismissSelectionOnDown:Z

    :goto_1
    return v6

    .line 280
    :cond_9
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done handling DOWN event, selection state="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->draggingSelection:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_a
    return v1
.end method

.method public onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 586
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionEditor()Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 590
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->TAG:Ljava/lang/String;

    const-string v0, "Selection model does not support creating selections, but SelectionGestureListener is active!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->lastKnownSelectionPoint:Landroid/graphics/Point;

    const/4 v2, -0x1

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 597
    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 599
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->dealWithPointUp()V

    .line 601
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->didDismissSelectionOnDown:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getPageTurnOffset()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 611
    :goto_0
    iget-boolean v3, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->tapDownEventAfterShowSelectionOptions:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-static {v3, p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->checkUnconfirmedSingleTapFromUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    if-eqz v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public onHoverEnter(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    .line 685
    iget v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverFingersDown:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverFingersDown:I

    .line 686
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getVirtualView()Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    monitor-enter p0

    .line 690
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getVirtualView()Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverEnterVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 691
    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverMoveVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 692
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->selectNearestWordElement(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 692
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onHoverExit(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    .line 710
    iget v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverFingersDown:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getVirtualView()Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 711
    iget p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverFingersDown:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverFingersDown:I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onHoverMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 698
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverEnterVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getVirtualView()Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getVirtualView()Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->selectNearestWordElement(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1

    .line 699
    :cond_1
    :goto_0
    monitor-enter p0

    .line 700
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getVirtualView()Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->hoverMoveVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 701
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onLongPress(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 8

    .line 401
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 405
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->didDismissSelectionOnDown:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 417
    :cond_2
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionEditor()Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    move-result-object v3

    if-nez v3, :cond_3

    .line 422
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->TAG:Ljava/lang/String;

    const-string v0, "Selection model does not support creating selections, but SelectionGestureListener is active!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 424
    :cond_3
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v4

    sget-object v5, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-eq v4, v5, :cond_4

    return v1

    .line 429
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 430
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 434
    iget-object v6, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->selectedWordElement:Lcom/amazon/android/docviewer/mobi/MobiWordPageElement;

    .line 436
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v6, :cond_6

    .line 440
    :cond_5
    iget-object v6, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v6, v4, v5, v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getElementAtPoint(IIZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v6

    :cond_6
    if-eqz v6, :cond_7

    .line 444
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 445
    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 446
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;->TOUCH:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setSelectionMethod(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionMethod;)V

    .line 447
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->NONE:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->setSelectionType(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;)V

    .line 448
    invoke-interface {v3, v6}, Lcom/amazon/android/docviewer/selection/ISelectionEditor;->startSelection(Lcom/amazon/android/docviewer/IPageElement;)V

    .line 449
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->magnifyTouchPoint(Lcom/amazon/kindle/krx/gesture/GestureEvent;)V

    .line 451
    :cond_7
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    new-instance v0, Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;

    sget-object v1, Lcom/amazon/kcp/events/ReaderEventTypes;->HIGHLIGHT_SELECTION_EVENT:Lcom/amazon/kcp/events/ReaderEventTypes;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;-><init>(Lcom/amazon/kcp/events/ReaderEventTypes;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->publishEvent(Lcom/amazon/kcp/reader/gestures/GestureService$GestureServiceEvent;)V

    return v2
.end method

.method public onMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 9

    .line 458
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 463
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionEditor()Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 467
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->TAG:Ljava/lang/String;

    const-string v0, "Selection model does not support creating selections, but SelectionGestureListener is active!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 472
    :cond_1
    iget-boolean v3, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->draggingSelection:Z

    if-eqz v3, :cond_8

    .line 478
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 479
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 481
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v5, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    const/4 v6, 0x1

    if-ne v0, v5, :cond_2

    move v5, v3

    move v0, v4

    const/4 v7, 0x0

    goto :goto_1

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    move-result-object v0

    if-nez v0, :cond_3

    .line 488
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->TAG:Ljava/lang/String;

    const-string v0, "objSelectionView is null, onMove cannot be handled in this state."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 492
    :cond_3
    invoke-virtual {v0, v3, v4}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->pointIsInStartHandle(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 493
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSelectionOffsetX()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_0

    .line 494
    :cond_4
    invoke-virtual {v0, v3, v4}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->pointIsInEndHandle(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 495
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSelectionOffsetX()I

    move-result v5

    sub-int v5, v3, v5

    goto :goto_0

    :cond_5
    move v5, v3

    .line 497
    :goto_0
    invoke-virtual {v0, v6}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSelectionOffsetY(Z)I

    move-result v0

    sub-int v0, v4, v0

    const/4 v7, 0x1

    .line 501
    :goto_1
    iget-object v8, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v8, v5, v0, v1, v7}, Lcom/amazon/kcp/reader/gestures/GestureService;->getElementAtPoint(IIZZ)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 506
    iget-object v7, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iput v3, v7, Landroid/graphics/Point;->x:I

    .line 507
    iput v4, v7, Landroid/graphics/Point;->y:I

    .line 509
    iget-object v3, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->lastKnownSelectionPointWithOffset:Landroid/graphics/Point;

    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 510
    iput v0, v3, Landroid/graphics/Point;->y:I

    .line 512
    invoke-interface {v2, v1}, Lcom/amazon/android/docviewer/selection/ISelectionEditor;->updateSelectionBounds(Lcom/amazon/android/docviewer/IPageElement;)V

    .line 513
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->magnifyTouchPoint(Lcom/amazon/kindle/krx/gesture/GestureEvent;)V

    .line 517
    :cond_6
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->mphlEnabled:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->runnableSubmitted:Z

    if-nez p1, :cond_7

    .line 518
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->flipPage:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_7
    return v6

    :cond_8
    return v1
.end method

.method public onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 182
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getPublisher()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne v0, v1, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->onSelectionStateChange()V

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne p1, v0, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->onSelectionAreaChanged()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onScroll(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z
    .locals 0

    .line 632
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->draggingSelection:Z

    return p1
.end method

.method public onSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 1

    .line 617
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->tapDownEventAfterShowSelectionOptions:Z

    if-eqz p1, :cond_0

    .line 622
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->tapDownEventAfterShowSelectionOptions:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public onSwipe(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;FF)Z
    .locals 0

    .line 639
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->draggingSelection:Z

    return p1
.end method

.method protected performFlipPage()Z
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->lastKnownSelectionPoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->pointInPageTurnBox(II)Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->OUTSIDE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    .line 149
    :cond_1
    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionEditor()Lcom/amazon/android/docviewer/selection/ISelectionEditor;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 154
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->turnPage(Lcom/amazon/android/docviewer/selection/ISelectionEditor;Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->pageTurnHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->flipPage:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected pointInPageTurnBox(II)Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 527
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->OUTSIDE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 531
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 532
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiView;

    :cond_1
    if-nez v0, :cond_2

    .line 537
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->OUTSIDE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    return-object p1

    .line 540
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->getCurrentPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 542
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->OUTSIDE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    return-object p1

    .line 544
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getPageRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v1, v2, :cond_5

    .line 548
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v1, :cond_4

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ge p2, v1, :cond_4

    .line 549
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->PREV_PAGE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    return-object p1

    .line 552
    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-le p1, v1, :cond_7

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    if-le p2, p1, :cond_7

    .line 553
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->NEXT_PAGE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    return-object p1

    .line 556
    :cond_5
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-le p1, v1, :cond_6

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ge p2, v1, :cond_6

    .line 557
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->PREV_PAGE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    return-object p1

    .line 560
    :cond_6
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v1, :cond_7

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    if-le p2, p1, :cond_7

    .line 561
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->NEXT_PAGE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    return-object p1

    .line 564
    :cond_7
    sget-object p1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->OUTSIDE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    return-object p1
.end method

.method protected turnPage(Lcom/amazon/android/docviewer/selection/ISelectionEditor;Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;->NEXT_PAGE_BOX:Lcom/amazon/kcp/reader/gestures/SelectionGestureHandler$PageTurnBox;

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    .line 163
    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/selection/ISelectionEditor;->setPageTurnedBySelection(Z)V

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getNavigator()Lcom/amazon/kcp/reader/ReaderNavigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->pageNext()Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 168
    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/selection/ISelectionEditor;->setPageTurnedBySelection(Z)V

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getNavigator()Lcom/amazon/kcp/reader/ReaderNavigator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->pagePrev()Z

    :cond_1
    :goto_0
    return-void
.end method
