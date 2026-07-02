.class public Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;
.super Ljava/lang/Object;
.source "BreadcrumbAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;,
        Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$IBreadcrumbInfoProvider;
    }
.end annotation


# static fields
.field private static final MOTION_IN_DELAY:J = 0x32L

.field private static final MOTION_IN_DURATION:J = 0x1dbL

.field private static final MOTION_OUT_DURATION:J = 0x1ccL

.field private static final PAGE_FADE_IN_DURATION:J = 0x190L

.field private static final PAGE_FADE_OUT_DURATION:J = 0x186L

.field private static final SLIDE_ACROSS_DURATION:J = 0x15eL

.field private static final TRANSITION_IN_DURATION:J = 0xaaL

.field private static final TRANSITION_OUT_DURATION:J = 0x96L

.field private static final TRANSITION_SCALE:F = 1.81f

.field private static final TRANSITION_START_DELAY:J = 0x46L


# instance fields
.field private breadcrumbInAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private breadcrumbMotionAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private breadcrumbOutAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private breadcrumbPagePadding:Landroid/graphics/Rect;

.field private breadcrumbPageRects:[Landroid/graphics/Rect;

.field private infoProvider:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$IBreadcrumbInfoProvider;

.field private isBreadcrumbVisible:[Z

.field private mrprBreadcrumbContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

.field private transitioningBreadcrumb:Landroid/view/View;

.field private final viewRoot:Landroid/view/ViewGroup;

.field private waypointBreadcrumbContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$IBreadcrumbInfoProvider;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 58
    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->isBreadcrumbVisible:[Z

    .line 59
    sget v0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->BREADCRUMB_COUNT:I

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbPageRects:[Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbPagePadding:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbInAnimations:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbOutAnimations:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbMotionAnimations:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->viewRoot:Landroid/view/ViewGroup;

    .line 75
    iput-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->infoProvider:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$IBreadcrumbInfoProvider;

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$drawable;->breadcrumb_frame_mrpr:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 79
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbPagePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    const/4 p1, 0x0

    .line 81
    :goto_0
    sget p2, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->BREADCRUMB_COUNT:I

    if-ge p1, p2, :cond_0

    .line 82
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbPageRects:[Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;)[Z
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->isBreadcrumbVisible:[Z

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;)Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$IBreadcrumbInfoProvider;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->infoProvider:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$IBreadcrumbInfoProvider;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;ZLcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->transferBreadcrumbData(ZLcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    return-void
.end method

.method private getBreadcrumbLayout(Z)Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;
    .locals 0

    if-eqz p1, :cond_0

    .line 414
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->mrprBreadcrumbContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    return-object p1

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->waypointBreadcrumbContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    return-object p1
.end method

.method private getPageRect(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 509
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailView()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 511
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 513
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->viewRoot:Landroid/view/ViewGroup;

    invoke-static {p1, v2, v0}, Lcom/amazon/android/util/UIUtils;->getPositionInParent(Landroid/view/View;Landroid/view/View;[I)Z

    .line 514
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 515
    aget v0, v0, v2

    .line 516
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v0

    .line 519
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method private transferBreadcrumbData(ZLcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V
    .locals 1

    .line 524
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->getBreadcrumbLayout(Z)Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->transferContentToOther(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    .line 525
    invoke-virtual {p0, p2, p1}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->setBreadcrumbLayout(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Z)V

    return-void
.end method


# virtual methods
.method public animateBreadcrumbFrame(Landroid/view/View;IIZZ)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->isBreadcrumbVisible:[Z

    aput-boolean p4, v0, p2

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 103
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 108
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->viewRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p3

    if-eqz p4, :cond_2

    const-wide/16 v0, 0x1db

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x1cc

    :goto_1
    if-eqz p5, :cond_3

    const-wide/16 v0, 0x15e

    :cond_3
    long-to-float p4, v0

    .line 114
    sget p5, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float p4, p4, p5

    float-to-long p4, p4

    .line 115
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 116
    invoke-virtual {p3, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 118
    new-instance p4, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;

    invoke-direct {p4, p0, p1, p2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;Landroid/view/View;I)V

    invoke-virtual {p3, p4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 135
    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public animateTransition(Landroid/view/View;ZZLcom/amazon/kindle/nln/ReaderTransitionChoreographer;)V
    .locals 8

    .line 147
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->transitioningBreadcrumb:Landroid/view/View;

    const v0, 0x3fe7ae14    # 1.81f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    const v2, 0x3fe7ae14    # 1.81f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    cmpl-float v3, v2, v0

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-ne p3, v3, :cond_3

    div-float v2, v1, v2

    div-float v0, v1, v0

    :cond_3
    const/4 p3, 0x0

    if-eqz p2, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_2
    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz p2, :cond_6

    const-wide/16 v4, 0x46

    goto :goto_4

    :cond_6
    const-wide/16 v4, 0x0

    :goto_4
    if-eqz p2, :cond_7

    const-wide/16 p2, 0xaa

    goto :goto_5

    :cond_7
    const-wide/16 p2, 0x96

    :goto_5
    long-to-float v4, v4

    .line 161
    sget v5, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v4, v4, v5

    float-to-long v6, v4

    long-to-float p2, p2

    mul-float p2, p2, v5

    float-to-long p2, p2

    .line 166
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 167
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 168
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 170
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 171
    sget-boolean p2, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->useLutzInterpolator:Z

    if-eqz p2, :cond_8

    .line 172
    sget-object p2, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_8
    const-string p2, "Breadcrumb View"

    .line 174
    invoke-virtual {p4, p1, p2}, Lcom/amazon/kindle/nln/ReaderTransitionChoreographer;->addTransitionAnimation(Landroid/view/ViewPropertyAnimator;Ljava/lang/String;)V

    return-void
.end method

.method public cleanupTransition()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->transitioningBreadcrumb:Landroid/view/View;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->transitioningBreadcrumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 184
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->transitioningBreadcrumb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->transitioningBreadcrumb:Landroid/view/View;

    return-void
.end method

.method public clearBreadcrumbInAnimations()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbInAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewPropertyAnimator;

    .line 211
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbInAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearBreadcrumbOutAnimations()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbOutAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewPropertyAnimator;

    .line 195
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbMotionAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 199
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbOutAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbMotionAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public fadeBreadcrumbPage(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;ZLcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V
    .locals 9

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x4

    .line 234
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 235
    iget-boolean v1, p3, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    invoke-direct {p0, v1, p4}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->transferBreadcrumbData(ZLcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 239
    iget-object v2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->viewRoot:Landroid/view/ViewGroup;

    invoke-static {p1, v2, v1}, Lcom/amazon/android/util/UIUtils;->getPositionInParent(Landroid/view/View;Landroid/view/View;[I)Z

    .line 240
    aget v0, v1, v0

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setX(F)V

    const/4 v0, 0x1

    .line 241
    aget v0, v1, v0

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 242
    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 243
    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz p2, :cond_2

    const-wide/16 v3, 0x1db

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x1cc

    :goto_2
    long-to-float v1, v3

    .line 249
    sget v3, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v1, v1, v3

    float-to-long v3, v1

    .line 250
    invoke-virtual {p4, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 251
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v8, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;

    xor-int/lit8 v5, p2, 0x1

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;ZLcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;)V

    .line 252
    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 256
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbInAnimations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 259
    :cond_3
    iget-object p2, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbOutAnimations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method public scaleBreadcrumbPage(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/PageThumbnailViewHolder;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;ZLcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v5, p3

    move-object/from16 v0, p2

    move-object/from16 v2, p5

    .line 275
    invoke-direct {v7, v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->getPageRect(Lcom/amazon/kindle/nln/PageThumbnailViewHolder;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v3, v7, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbPageRects:[Landroid/graphics/Rect;

    iget-object v4, v5, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->direction:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo$Direction;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    .line 282
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    .line 285
    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const v4, 0x3c23d70a    # 0.01f

    :cond_2
    if-eqz p4, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    move v8, v4

    :goto_0
    if-eqz p4, :cond_4

    move v9, v4

    goto :goto_1

    :cond_4
    const/high16 v9, 0x3f800000    # 1.0f

    .line 293
    :goto_1
    iget-object v10, v7, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbPagePadding:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    neg-int v11, v11

    iget v10, v10, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    invoke-virtual {v3, v11, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 294
    iget-object v10, v7, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbPagePadding:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    mul-float v11, v11, v4

    float-to-int v11, v11

    .line 295
    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float v10, v10, v4

    float-to-int v4, v10

    neg-int v10, v11

    neg-int v4, v4

    .line 296
    invoke-virtual {v1, v10, v4}, Landroid/graphics/Rect;->offset(II)V

    const/4 v11, 0x0

    .line 299
    invoke-virtual {v2, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 300
    iget-boolean v12, v5, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    invoke-direct {v7, v12, v2}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->transferBreadcrumbData(ZLcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    const/4 v12, 0x4

    move-object/from16 v13, p1

    .line 301
    invoke-virtual {v13, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p4, :cond_5

    .line 304
    iget v14, v3, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_5
    iget v14, v1, Landroid/graphics/Rect;->left:I

    :goto_2
    int-to-float v14, v14

    if-eqz p4, :cond_6

    .line 305
    iget v15, v1, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_6
    iget v15, v3, Landroid/graphics/Rect;->left:I

    :goto_3
    int-to-float v15, v15

    if-eqz p4, :cond_7

    .line 306
    iget v6, v3, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :cond_7
    iget v6, v1, Landroid/graphics/Rect;->top:I

    :goto_4
    int-to-float v6, v6

    if-eqz p4, :cond_8

    .line 307
    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_5

    :cond_8
    iget v1, v3, Landroid/graphics/Rect;->top:I

    :goto_5
    int-to-float v1, v1

    const/4 v3, 0x0

    if-eqz p4, :cond_9

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_9
    const/4 v12, 0x0

    :goto_6
    if-eqz p4, :cond_a

    const/4 v11, 0x0

    goto :goto_7

    :cond_a
    const/high16 v11, 0x3f800000    # 1.0f

    .line 311
    :goto_7
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 312
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 313
    invoke-virtual {v2, v14}, Landroid/widget/FrameLayout;->setX(F)V

    .line 314
    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setY(F)V

    .line 315
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 316
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 318
    sget-boolean v3, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->doBreadcrumbFade:Z

    const-wide/16 v17, 0x0

    if-eqz v3, :cond_e

    .line 319
    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 320
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->getLabelContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/view/View;->setAlpha(F)V

    if-eqz p4, :cond_b

    const-wide/16 v19, 0x186

    goto :goto_8

    :cond_b
    const-wide/16 v19, 0x190

    :goto_8
    move-wide/from16 v12, v19

    long-to-float v3, v12

    .line 324
    sget v12, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v3, v3, v12

    float-to-long v12, v3

    .line 325
    invoke-virtual/range {p5 .. p5}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v19, 0x2

    .line 326
    div-long v12, v12, v19

    move/from16 v16, v8

    move/from16 v19, v9

    if-eqz p4, :cond_c

    move-wide/from16 v8, v17

    goto :goto_9

    :cond_c
    move-wide v8, v12

    .line 328
    :goto_9
    invoke-virtual/range {p5 .. p5}, Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;->getLabelContainer()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 329
    invoke-virtual {v0, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p4, :cond_d

    .line 330
    iget-object v8, v7, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbOutAnimations:Ljava/util/List;

    goto :goto_a

    :cond_d
    iget-object v8, v7, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbInAnimations:Ljava/util/List;

    .line 331
    :goto_a
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_e
    move/from16 v16, v8

    move/from16 v19, v9

    const/high16 v0, 0x3f000000    # 0.5f

    .line 334
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_b
    if-eqz p4, :cond_f

    const-wide/16 v8, 0x1cc

    goto :goto_c

    :cond_f
    const-wide/16 v8, 0x1db

    :goto_c
    if-eqz p4, :cond_10

    goto :goto_d

    :cond_10
    const-wide/16 v17, 0x32

    :goto_d
    move-wide/from16 v11, v17

    long-to-float v0, v8

    .line 340
    sget v3, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v0, v0, v3

    float-to-long v8, v0

    long-to-float v0, v11

    mul-float v0, v0, v3

    float-to-long v11, v0

    if-eqz p4, :cond_11

    .line 347
    new-instance v0, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailView()Landroid/view/View;

    move-result-object v3

    sget-object v13, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;->TRACK_X:Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    invoke-direct {v0, v2, v3, v13, v10}, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;-><init>(Landroid/view/View;Landroid/view/View;Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;I)V

    const/4 v3, 0x2

    new-array v10, v3, [Ljava/lang/Object;

    .line 349
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v10, v14

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v10, v14

    const-string v13, "x"

    invoke-static {v2, v13, v0, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 351
    new-instance v10, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/nln/PageThumbnailViewHolder;->getThumbnailView()Landroid/view/View;

    move-result-object v13

    sget-object v15, Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;->TRACK_Y:Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;

    invoke-direct {v10, v2, v13, v15, v4}, Lcom/amazon/kindle/nln/MotionTrackingEvaluator;-><init>(Landroid/view/View;Landroid/view/View;Lcom/amazon/kindle/nln/MotionTrackingEvaluator$TrackAxis;I)V

    new-array v4, v3, [Ljava/lang/Object;

    .line 353
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v13, 0x0

    aput-object v6, v4, v13

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v14

    const-string v1, "y"

    invoke-static {v2, v1, v10, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 355
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v3, [F

    aput v16, v6, v13

    aput v19, v6, v14

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 356
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v10, v3, [F

    aput v16, v10, v13

    aput v19, v10, v14

    invoke-static {v2, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 358
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 359
    invoke-virtual {v10, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v0, v8, v13

    aput-object v1, v8, v14

    aput-object v4, v8, v3

    const/4 v0, 0x3

    aput-object v6, v8, v0

    .line 360
    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 361
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 362
    iget-object v0, v7, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbMotionAnimations:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v8, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;

    const/4 v6, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;ZLcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;)V

    invoke-virtual {v10, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_e

    .line 367
    :cond_11
    invoke-virtual/range {p5 .. p5}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    move/from16 v4, v19

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 368
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 370
    invoke-virtual {v8, v15}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 371
    sget-object v0, Lcom/amazon/kindle/nln/NlnTransitionManager;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v8, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 372
    new-instance v9, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$MotionResetAnimatorListener;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;ZLcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$1;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 373
    iget-object v0, v7, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbInAnimations:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void
.end method

.method public setBreadcrumbLayout(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 400
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->mrprBreadcrumbContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    goto :goto_0

    .line 402
    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->waypointBreadcrumbContent:Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;

    :goto_0
    return-void
.end method

.method public setBreadcrumbPageRect(IIIII)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbPageRects:[Landroid/graphics/Rect;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public slideBreadcrumbAcross(Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;)V
    .locals 8

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 427
    iget-boolean v1, p4, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;->isMrpr:Z

    invoke-direct {p0, v1, p3}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->transferBreadcrumbData(ZLcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 428
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 429
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 430
    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    .line 435
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->viewRoot:Landroid/view/ViewGroup;

    invoke-static {p1, v3, v2}, Lcom/amazon/android/util/UIUtils;->getPositionInParent(Landroid/view/View;Landroid/view/View;[I)Z

    .line 436
    iget-object v3, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->viewRoot:Landroid/view/ViewGroup;

    invoke-static {p2, v3, v1}, Lcom/amazon/android/util/UIUtils;->getPositionInParent(Landroid/view/View;Landroid/view/View;[I)Z

    .line 437
    aget v3, v2, v0

    int-to-float v3, v3

    invoke-virtual {p3, v3}, Landroid/widget/FrameLayout;->setX(F)V

    const/4 v3, 0x1

    .line 438
    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->setY(F)V

    const/4 v2, 0x4

    .line 439
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 440
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-wide/16 v4, 0x15e

    long-to-float v2, v4

    .line 444
    sget v4, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float v2, v2, v4

    float-to-long v4, v2

    .line 445
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    aget v0, v1, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;->breadcrumbOutAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 450
    new-instance v1, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager$2;-><init>(Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbAnimationManager;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbInfo;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;Lcom/amazon/kindle/nln/breadcrumb/BreadCrumbContentLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
