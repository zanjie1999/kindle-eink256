.class public Lcom/google/android/material/appbar/SecondaryMenuBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "SecondaryMenuBehavior.java"


# static fields
.field private static final ANIMATE_OFFSET_DIPS_PER_SECOND:I = 0xfa

.field private static final MAX_OFFSET:I


# instance fields
.field private scrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    .line 23
    invoke-direct {p0}, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->init()V

    return-void
.end method

.method static synthetic access$001(Lcom/google/android/material/appbar/SecondaryMenuBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I
    .locals 0

    .line 16
    invoke-super/range {p0 .. p5}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I

    move-result p0

    return p0
.end method

.method private animateScrollOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 83
    iget-object p1, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    .line 90
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 91
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    iget-object v1, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/google/android/material/appbar/SecondaryMenuBehavior$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/material/appbar/SecondaryMenuBehavior$2;-><init>(Lcom/google/android/material/appbar/SecondaryMenuBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    sub-int p2, v0, p3

    .line 104
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, p1

    .line 106
    iget-object p1, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->scrollAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p2, p2, v1

    const/high16 v1, 0x437a0000    # 250.0f

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 108
    iget-object p1, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->scrollAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p3, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 109
    iget-object p1, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static constrain(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private init()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/android/material/appbar/SecondaryMenuBehavior$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/SecondaryMenuBehavior$1;-><init>(Lcom/google/android/material/appbar/SecondaryMenuBehavior;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    return-void
.end method


# virtual methods
.method bridge synthetic setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 0

    .line 16
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I

    move-result p1

    return p1
.end method

.method setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I
    .locals 7

    .line 45
    iget-object v0, p0, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->scrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-eqz p4, :cond_2

    if-lt v0, p4, :cond_2

    if-gt v0, p5, :cond_2

    .line 52
    invoke-static {p3, p4, p5}, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->constrain(III)I

    move-result p3

    if-eq v0, p3, :cond_2

    sub-int/2addr v0, p3

    .line 58
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 59
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    if-le v3, v4, :cond_2

    if-lez v0, :cond_1

    neg-int p3, v2

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->animateScrollOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/material/appbar/SecondaryMenuBehavior;->animateScrollOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V

    :goto_0
    return v0

    :cond_2
    move v4, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    .line 70
    invoke-super/range {v1 .. v6}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->setHeaderTopBottomOffset(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;III)I

    move-result p1

    return p1
.end method
