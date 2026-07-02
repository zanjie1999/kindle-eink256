.class public final Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;
.super Landroid/widget/LinearLayout;
.source "ReaderFastNavigationView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$OnFastNavigationChangeListener;
    }
.end annotation


# instance fields
.field private final NORMAL_HIDE_DELAY:J

.field private final TAG:Ljava/lang/String;

.field private final WITHOUT_HIDE_DELAY:J

.field private _$_findViewCache:Ljava/util/HashMap;

.field private final breadcrumbClickListener:Landroid/view/View$OnClickListener;

.field private breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private hideThumbHandler:Landroid/os/Handler;

.field private hideThumbRunnable:Ljava/lang/Runnable;

.field private isDragging:Z

.field private isThumbVisible:Z

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$OnFastNavigationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private pageIndicatorController:Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;

.field private pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

.field private readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private final seekBarChangeListener:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;

.field private shouldMakeThumbVisible:Z

.field private stopDraggingHandler:Landroid/os/Handler;

.field private stopDraggingRunnable:Ljava/lang/Runnable;

.field private verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-class p1, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Utils.getTag(ReaderFastNavigationView::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->TAG:Ljava/lang/String;

    const-wide/16 p1, 0x3e8

    .line 43
    iput-wide p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->NORMAL_HIDE_DELAY:J

    .line 72
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->listeners:Ljava/util/Set;

    .line 74
    new-instance p1, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->seekBarChangeListener:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;

    .line 154
    new-instance p1, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$breadcrumbClickListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$breadcrumbClickListener$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$cancelHideThumbCallbacks(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->cancelHideThumbCallbacks()V

    return-void
.end method

.method public static final synthetic access$getBreadcrumbController$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    return-object p0
.end method

.method public static final synthetic access$getDocViewer$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method public static final synthetic access$getListeners$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/util/Set;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getNORMAL_HIDE_DELAY$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->NORMAL_HIDE_DELAY:J

    return-wide v0
.end method

.method public static final synthetic access$getPageIndicatorController$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->pageIndicatorController:Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;

    return-object p0
.end method

.method public static final synthetic access$getReaderLayout$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-object p0
.end method

.method public static final synthetic access$getSeekBarChangeListener$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->seekBarChangeListener:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;

    return-object p0
.end method

.method public static final synthetic access$getShouldMakeThumbVisible$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->shouldMakeThumbVisible:Z

    return p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getVerticalSeekBarController$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    return-object p0
.end method

.method public static final synthetic access$isThumbVisible$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isThumbVisible:Z

    return p0
.end method

.method public static final synthetic access$setIsDragging(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->setIsDragging(Z)V

    return-void
.end method

.method public static final synthetic access$setShouldMakeThumbVisible$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->shouldMakeThumbVisible:Z

    return-void
.end method

.method public static final synthetic access$setThumbVisible$p(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;Z)V
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isThumbVisible:Z

    return-void
.end method

.method public static final synthetic access$startThumbAnimation(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->startThumbAnimation(Z)V

    return-void
.end method

.method public static final synthetic access$updateChapterInfo(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->updateChapterInfo(I)V

    return-void
.end method

.method public static final synthetic access$updateVisibility(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->updateVisibility()V

    return-void
.end method

.method private final cancelHideThumbCallbacks()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->hideThumbRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->hideThumbHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private final setFastNavVisibilityToGone()V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->setSeekBarToNormalState()V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->hideBreadcrumbView()V

    :cond_1
    const/16 v0, 0x8

    .line 524
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 525
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isThumbVisible:Z

    return-void
.end method

.method private final setIsDragging(Z)V
    .locals 3

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsDragging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isDragging:Z

    .line 466
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->shouldMakeThumbVisible:Z

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isThumbVisible:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->updateBreadcrumbView(ZZZ)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->pageIndicatorController:Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;

    if-eqz v0, :cond_1

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;->updatePageIndicatorVisibility(ZZ)V

    :cond_1
    return-void
.end method

.method private final startThumbAnimation(Z)V
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v0, :cond_0

    .line 472
    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$startThumbAnimation$thumbAnimator$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$startThumbAnimation$thumbAnimator$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    .line 471
    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->getThumbAnimator(ZLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 478
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method private final updateChapterInfo(I)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekPosition(I)V

    :cond_1
    return-void
.end method

.method private final updateVisibility()V
    .locals 2

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->areOverlaysVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " shouldMakeThumbVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->shouldMakeThumbVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->getCurrentReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq v0, v1, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->setFastNavVisibilityToGone()V

    goto :goto_1

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->areOverlaysVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 497
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->setSeekBarToNormalState()V

    .line 499
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isDragging:Z

    if-nez v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->onOverlaysVisible()V

    goto :goto_0

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->hideBreadcrumbView()V

    .line 504
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isThumbVisible:Z

    goto :goto_1

    .line 506
    :cond_4
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->shouldMakeThumbVisible:Z

    if-eqz v0, :cond_7

    .line 507
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->setSeekBarToThumbState()V

    .line 509
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->hideBreadcrumbView()V

    :cond_6
    const/4 v0, 0x1

    .line 510
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isThumbVisible:Z

    goto :goto_1

    .line 513
    :cond_7
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->setFastNavVisibilityToGone()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final areOverlaysVisible()Z
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->isTouchInsideSeekBar(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->isTouchInsideBreadcrumb(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    .line 222
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public final getOverlayAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .line 312
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$getOverlayAnimatorListener$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    return-object v0
.end method

.method public final getOverlayAnimators(Z)[Landroid/animation/Animator;
    .locals 5

    .line 540
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->cancelHideThumbCallbacks()V

    if-eqz p1, :cond_0

    .line 543
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->location_seeker_show_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->hide_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_0
    int-to-long v0, v0

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    .line 550
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, v0, v1}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->getOverlayAnimator(ZJ)Landroid/animation/Animator;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_2

    .line 553
    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/animation/Animator;

    .line 557
    :cond_2
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->shouldMakeThumbVisible:Z

    invoke-virtual {v3, p1, v4, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->getOverlayAnimators(ZZJ)[Landroid/animation/Animator;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_5

    .line 558
    array-length p1, v4

    const/4 v0, 0x1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    xor-int/2addr p1, v0

    if-eqz p1, :cond_5

    .line 559
    invoke-static {v2, v4}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [Landroid/animation/Animator;

    :cond_5
    return-object v2
.end method

.method public final getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    return-object v0
.end method

.method public final getSeekBar()Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->getSeekBar()Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getSeekBarCoordinateValues(I)Landroid/graphics/Point;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->getSeekBarCoordinateValues(I)Landroid/graphics/Point;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getSeekBarTop()I
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->getSeekBarTop()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSeekBarWidth()I
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->getSeekBarWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hideThumb(J)V
    .locals 2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideThumb delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->hideThumbRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$hideThumb$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$hideThumb$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->hideThumbRunnable:Ljava/lang/Runnable;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->hideThumbHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 366
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->hideThumbHandler:Landroid/os/Handler;

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->hideThumbRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 370
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->hideThumbHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final initialize(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    const-string v0, "readerLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->initialize(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 175
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 176
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public final isDragging()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isDragging:Z

    return v0
.end method

.method public final isThumbVisible()Z
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isThumbVisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isThumbVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isThumbVisible:Z

    return v0
.end method

.method public final onActivityLifecycleEvent(Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 421
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->setIsDragging(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 405
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 406
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->onDestroy()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->onDestroy()V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 410
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    .line 411
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    .line 412
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->pageIndicatorController:Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;

    .line 413
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public final onExternalScreenEvent(Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;->isOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 432
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isThumbVisible:Z

    if-eqz p1, :cond_0

    .line 434
    iget-wide v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->WITHOUT_HIDE_DELAY:J

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->hideThumb(J)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 180
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 182
    sget v0, Lcom/amazon/kindle/krl/R$id;->vertical_seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;

    if-eqz v0, :cond_1

    .line 184
    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    invoke-direct {v1, v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;-><init>(Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBar;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->seekBarChangeListener:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$seekBarChangeListener$1;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->addSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 188
    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$id;->cs_page_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;

    if-nez v1, :cond_2

    move-object v0, v2

    :cond_2
    check-cast v0, Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;

    if-eqz v0, :cond_3

    .line 190
    new-instance v1, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;

    invoke-direct {v1, v0, p0}, Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;-><init>(Lcom/amazon/kindle/nln/pageIndicator/CSPageIndicatorView;Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->pageIndicatorController:Lcom/amazon/kcp/reader/ui/CSPageIndicatorController;

    .line 193
    :cond_3
    sget v0, Lcom/amazon/kindle/krl/R$id;->cs_breadcrumb:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v0

    :goto_0
    check-cast v2, Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;

    if-eqz v2, :cond_5

    .line 195
    new-instance v0, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    invoke-direct {v0, v2, p0}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;-><init>(Lcom/amazon/kindle/nln/breadcrumb/CSBreadcrumbView;Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    if-eqz v0, :cond_5

    .line 196
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->setBreadcrumbClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 202
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 204
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p2

    .line 205
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 206
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    sub-int/2addr p5, p3

    .line 207
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    .line 208
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2, p4, p5}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->onLayoutChange(IIII)V

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->breadcrumbController:Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isDragging:Z

    iget-boolean p3, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->shouldMakeThumbVisible:Z

    iget-boolean p4, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->isThumbVisible:Z

    invoke-virtual {p1, p2, p3, p4}, Lcom/amazon/kcp/reader/ui/CSBreadcrumbController;->onLayoutChange(ZZZ)V

    :cond_1
    return-void
.end method

.method public final onRubberbandingStatusChange(Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;->getEventType()Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;->RUBBERBANDING_BEGIN:Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;

    if-ne v0, v1, :cond_0

    .line 442
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent;->getEventType()Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;->RUBBERBANDING_END:Lcom/amazon/kindle/event/RubberbandingStatusChangeEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 456
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$onRubberbandingStatusChange$2;-><init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final setCurrentSeekPosition(I)V
    .locals 2

    .line 236
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->areOverlaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->updateSeekBarProgress(IZ)V

    :cond_0
    return-void
.end method

.method public final setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 247
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 248
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->verticalSeekBarController:Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderVerticalSeekBarController;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 250
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->pageLabelProvider:Lcom/amazon/android/docviewer/IPageLabelProvider;

    :cond_1
    return-void
.end method

.method public final showThumb()V
    .locals 2

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->shouldMakeThumbVisible:Z

    .line 282
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->cancelHideThumbCallbacks()V

    .line 286
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->areOverlaysVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->startThumbAnimation(Z)V

    :cond_0
    return-void
.end method

.method public final startDragging()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->stopDraggingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->stopDraggingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    .line 378
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->setIsDragging(Z)V

    return-void
.end method

.method public final stopDraggingWithDelay()V
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->stopDraggingRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$stopDraggingWithDelay$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$stopDraggingWithDelay$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->stopDraggingRunnable:Ljava/lang/Runnable;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->stopDraggingHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 392
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->stopDraggingHandler:Landroid/os/Handler;

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->stopDraggingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 396
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->stopDraggingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 397
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$integer;->fade_animation_duration:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 396
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
