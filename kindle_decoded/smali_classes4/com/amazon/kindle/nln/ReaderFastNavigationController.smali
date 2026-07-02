.class public final Lcom/amazon/kindle/nln/ReaderFastNavigationController;
.super Ljava/lang/Object;
.source "ReaderFastNavigationController.kt"


# instance fields
.field private final LONG_HIDE_DELAY:J

.field private final TAG:Ljava/lang/String;

.field private fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

.field private leftInset:I

.field private readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private readerLayoutEventListener:Lcom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1;

.field private rightInset:I

.field private shouldUpdateLPR:Z

.field private startPositionRange:Lcom/amazon/android/docviewer/IntPositionRange;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 2

    const-string v0, "readerLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(ReaderFastN\u2026onController::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x7d0

    .line 37
    iput-wide v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->LONG_HIDE_DELAY:J

    .line 46
    new-instance v0, Lcom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1;-><init>(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayoutEventListener:Lcom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1;

    .line 94
    iput-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->registerLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    .line 96
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getFastNavigationView$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    return-object p0
.end method

.method public static final synthetic access$getLONG_HIDE_DELAY$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->LONG_HIDE_DELAY:J

    return-wide v0
.end method

.method public static final synthetic access$getLeftInset$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->leftInset:I

    return p0
.end method

.method public static final synthetic access$getReaderLayout$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-object p0
.end method

.method public static final synthetic access$getRightInset$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->rightInset:I

    return p0
.end method

.method public static final synthetic access$getStartPositionRange$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)Lcom/amazon/android/docviewer/IntPositionRange;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->startPositionRange:Lcom/amazon/android/docviewer/IntPositionRange;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$inflateFastNavigationView(Lcom/amazon/kindle/nln/ReaderFastNavigationController;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->inflateFastNavigationView(Z)V

    return-void
.end method

.method public static final synthetic access$setLeftInset$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->leftInset:I

    return-void
.end method

.method public static final synthetic access$setRightInset$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->rightInset:I

    return-void
.end method

.method public static final synthetic access$setStartPositionRange$p(Lcom/amazon/kindle/nln/ReaderFastNavigationController;Lcom/amazon/android/docviewer/IntPositionRange;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->startPositionRange:Lcom/amazon/android/docviewer/IntPositionRange;

    return-void
.end method

.method private final areOverlaysVisible()Z
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final inflateFastNavigationView(Z)V
    .locals 6

    .line 250
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-nez v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_4

    .line 252
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 253
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v2

    .line 254
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 256
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lcom/amazon/kindle/krl/R$layout;->reader_fast_navigation_view:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    check-cast v1, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->initialize(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 259
    :cond_1
    invoke-virtual {v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    .line 262
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    :cond_2
    iput-object v1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz v1, :cond_3

    .line 269
    new-instance v2, Lcom/amazon/kindle/nln/ReaderFastNavigationController$inflateFastNavigationView$$inlined$let$lambda$1;

    invoke-direct {v2, v3, p0, p1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController$inflateFastNavigationView$$inlined$let$lambda$1;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kindle/nln/ReaderFastNavigationController;Z)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 285
    :cond_3
    iget p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->rightInset:I

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    const-string v0, "it.readerActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getOrientation()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 286
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 287
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 288
    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    const-string v2, "readerActivity.windowManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 290
    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 291
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Landscape rubberband edge case. realWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reportedWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 294
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {v0, v5, p1, v5, v5}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    .line 295
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setSafeInsets(Lcom/amazon/kcp/util/device/SafeInsets;)V

    .line 296
    iput p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->rightInset:I

    .line 297
    iput v5, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->leftInset:I

    :cond_4
    return-void
.end method


# virtual methods
.method public final getFastNavigationOverlayLayeredAnimator(ZZ)Landroid/animation/AnimatorSet;
    .locals 1

    .line 114
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->inflateFastNavigationView(Z)V

    .line 115
    iget-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getOverlayAnimators(Z)[Landroid/animation/Animator;

    move-result-object p2

    .line 117
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/animation/Animator;

    invoke-static {p2}, Lcom/amazon/kcp/animation/AnimatorUtils;->createAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->getOverlayAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return-object p2
.end method

.method public final getFastNavigationView()Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayoutEventListener:Lcom/amazon/kindle/nln/ReaderFastNavigationController$readerLayoutEventListener$1;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->removeLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 180
    iput-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->startPositionRange:Lcom/amazon/android/docviewer/IntPositionRange;

    .line 181
    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->onDestroy()V

    .line 183
    :cond_2
    iput-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    .line 184
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDocViewerChange(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    :cond_0
    return-void
.end method

.method public final onLayoutChange(IIII)V
    .locals 3

    .line 150
    iget-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz p1, :cond_3

    .line 151
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 152
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->fast_navigation_view_seekbar_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 153
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->fast_navigation_view_seekbar_padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr p2, v0

    add-int/2addr v1, p4

    .line 160
    iget-object p4, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p4}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 161
    iget v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->rightInset:I

    if-lez v0, :cond_1

    sub-int/2addr p3, v0

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    .line 163
    iget p4, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->leftInset:I

    if-lez p4, :cond_2

    sub-int/2addr p3, p4

    .line 167
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p4

    sub-int p4, p3, p4

    .line 169
    invoke-virtual {p1, p4, p2, p3, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_3
    return-void
.end method

.method public final onNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 7

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNavigationEvent type:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " navigation type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->PRE_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-ne v0, v1, :cond_5

    .line 196
    invoke-direct {p0}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    const-string v4, "event.rangeStart"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v5

    const-string v6, "event.rangeEnd"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v5

    invoke-static {v0, v1, v5}, Lcom/amazon/kcp/debug/FastNavigationUtils;->isPlaceholderRange(Lcom/amazon/android/docviewer/KindleDocViewer;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/amazon/android/docviewer/IntPositionRange;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    invoke-direct {v0, v1, v4}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    iput-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->startPositionRange:Lcom/amazon/android/docviewer/IntPositionRange;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldPreserveOverlays()Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onNavigationEvent$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onNavigationEvent$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/nln/ReaderFastNavigationController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 215
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->shouldUpdateLPR:Z

    .line 216
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setPreserveOverlays(Z)V

    .line 221
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    iget-object v1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v3

    .line 222
    :goto_2
    sget-object v4, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v5, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->PRE_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    .line 221
    invoke-static {v0, v1, v4, v5}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    .line 225
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne p1, v0, :cond_c

    .line 226
    iget-boolean p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->shouldUpdateLPR:Z

    if-eqz p1, :cond_9

    .line 227
    iget-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, v3

    :goto_3
    instance-of v0, p1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    if-nez v0, :cond_7

    move-object p1, v3

    :cond_7
    check-cast p1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->updateLastPageRead()V

    .line 228
    :cond_8
    iput-boolean v2, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->shouldUpdateLPR:Z

    .line 230
    :cond_9
    iget-object p1, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    goto :goto_4

    :cond_a
    move-object p1, v3

    :goto_4
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 231
    :cond_b
    sget-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->POST_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    .line 230
    invoke-static {p1, v3, v0, v1}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    :cond_c
    return-void
.end method

.method public final onRefresh(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->setCurrentSeekPosition(I)V

    :cond_0
    return-void
.end method

.method public final onRubberbandingStatusChange(Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->fastNavigationView:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onRubberbandingStatusChange$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController$onRubberbandingStatusChange$1;-><init>(Lcom/amazon/kindle/nln/ReaderFastNavigationController;Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
