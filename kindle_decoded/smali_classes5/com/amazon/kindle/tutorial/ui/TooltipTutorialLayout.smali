.class public Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;
.super Landroid/widget/FrameLayout;
.source "TooltipTutorialLayout.java"


# static fields
.field private static final ANIMATION_TIME:J = 0xafL

.field private static final CENTER_ALIGNMENT:Ljava/lang/String; = "center"


# instance fields
.field private anchor:Landroid/view/View;

.field private anchorLocation:Landroid/view/View;

.field private anchorTouchTarget:Landroid/view/View;

.field private anchorView:Lcom/amazon/kindle/tutorial/ui/AnchorView;

.field private buttonLabel:Ljava/lang/String;

.field private buttonListener:Landroid/view/View$OnClickListener;

.field private caretView:Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;

.field private closeButton:Landroid/widget/ImageButton;

.field private container:Landroid/widget/RelativeLayout;

.field private containerPaint:Landroid/graphics/Paint;

.field private containerRect:Landroid/graphics/RectF;

.field private contentLayout:Landroid/widget/LinearLayout;

.field private cornerRadius:F

.field private displayCounter:Lcom/amazon/kindle/tutorial/ui/DisplayCounter;

.field private highlightAnchor:Z

.field private imageView:Landroid/widget/ImageView;

.field private final insetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

.field private message:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

.field offset:Landroid/graphics/Rect;

.field private settings:Lcom/amazon/kindle/tutorial/model/TooltipSettings;

.field private shadowView:Landroid/view/View;

.field private strokePaint:Landroid/graphics/Paint;

.field private supportBackgroundStroke:Z

.field private textView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;

.field private tooltipButton:Landroid/widget/Button;

.field private touchTargetRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->containerRect:Landroid/graphics/RectF;

    .line 97
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->offset:Landroid/graphics/Rect;

    .line 99
    new-instance p1, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$1;-><init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->insetsListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    .line 123
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_0

    .line 124
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$bool;->tooltip_highlight_anchor:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->highlightAnchor:Z

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$bool;->tooltip_add_background_stroke:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->supportBackgroundStroke:Z

    if-eqz p1, :cond_1

    .line 133
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->containerPaint:Landroid/graphics/Paint;

    .line 134
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 135
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->containerPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 136
    sget v0, Lcom/amazon/kindle/krl/R$attr;->utm_tutorial_background:I

    const/4 v1, 0x0

    aput v0, p1, v1

    sget v0, Lcom/amazon/kindle/krl/R$attr;->utm_tutorial_tooltip_outline:I

    aput v0, p1, p2

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->containerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->strokePaint:Landroid/graphics/Paint;

    .line 142
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->tooltip_border_stroke_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 146
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->strokePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$dimen;->tooltip_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->cornerRadius:F

    .line 151
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->calculateAnchorPosition()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 67
    invoke-static {p0, p1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->buttonTouch(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->message:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Landroid/widget/Button;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->tooltipButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->buttonListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->container:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->caretView:Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Landroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->shadowView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)Landroid/view/View;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorTouchTarget:Landroid/view/View;

    return-object p0
.end method

.method private static buttonTouch(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .line 687
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 688
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 691
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 692
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private calculateAnchorPosition()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchor:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->getWindowRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->offset:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 231
    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->touchTargetRect:Landroid/graphics/Rect;

    .line 232
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 233
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorTouchTarget:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-boolean v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->highlightAnchor:Z

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorView:Lcom/amazon/kindle/tutorial/ui/AnchorView;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/tutorial/ui/AnchorView;->setRectAnchor(Landroid/graphics/Rect;)V

    :cond_1
    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorLocation:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 242
    invoke-static {v2}, Lcom/amazon/android/util/UIUtils;->getWindowRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 243
    iget-boolean v2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->highlightAnchor:Z

    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorView:Lcom/amazon/kindle/tutorial/ui/AnchorView;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/tutorial/ui/AnchorView;->setRectLocation(Landroid/graphics/Rect;)V

    const v2, 0x3ecccccd    # 0.4f

    .line 245
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setIcons(F)V

    .line 249
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->getTutorialOrientation()Lcom/amazon/kindle/krx/tutorial/Orientation;

    move-result-object v2

    .line 250
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->caretView:Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;

    invoke-virtual {v3, v0, v1, v2}, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->setVertices(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/amazon/kindle/krx/tutorial/Orientation;)V

    return-void
.end method

.method private getTutorialOrientation()Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->message:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 676
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->message:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getLandscapeOrientation()Lcom/amazon/kindle/krx/tutorial/Orientation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 678
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->message:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getPortraitOrientation()Lcom/amazon/kindle/krx/tutorial/Orientation;

    move-result-object v0

    return-object v0

    .line 682
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->TOP:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object v0
.end method

.method private setIcons(Landroid/view/ViewGroup;F)V
    .locals 4

    .line 659
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 661
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 662
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchor:Landroid/view/View;

    if-eq v2, v3, :cond_0

    .line 663
    invoke-virtual {v2, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 664
    :cond_0
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchor:Landroid/view/View;

    if-eq v2, v3, :cond_1

    .line 665
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setIcons(Landroid/view/ViewGroup;F)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setupAnimation(FFII)Landroid/animation/AnimatorSet;
    .locals 6

    .line 594
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 p1, 0x1

    aput p2, v2, p1

    .line 595
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 596
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 597
    new-instance p2, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$10;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$10;-><init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0xaf

    .line 606
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 608
    new-instance p2, Landroid/animation/ValueAnimator;

    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v2, v1, [I

    aput p3, v2, v3

    aput p4, v2, p1

    .line 609
    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 610
    new-instance p3, Landroid/animation/ArgbEvaluator;

    invoke-direct {p3}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 611
    new-instance p3, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$11;

    invoke-direct {p3, p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$11;-><init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 617
    invoke-virtual {p2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 619
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p4, v1, [Landroid/animation/Animator;

    aput-object p2, p4, v3

    aput-object v0, p4, p1

    .line 620
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p3
.end method

.method private setupTutorialImage()V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->message:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getTutorialResourceMetadata()Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 307
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->imageView:Landroid/widget/ImageView;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->setImage(Landroid/widget/ImageView;Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateViewsIn()V
    .locals 4

    .line 547
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$color;->tutorial_transparent_background:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 548
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->clear_transparent_background:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 546
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setupAnimation(FFII)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 550
    new-instance v1, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$8;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$8;-><init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 564
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public animateViewsOut(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    .line 574
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$color;->clear_transparent_background:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 575
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->tutorial_transparent_background:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 573
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setupAnimation(FFII)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 577
    new-instance v1, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$9;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$9;-><init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 589
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 590
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public hideViews()V
    .locals 3

    .line 629
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->highlightAnchor:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorView:Lcom/amazon/kindle/tutorial/ui/AnchorView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/tutorial/ui/AnchorView;->setRectLocation(Landroid/graphics/Rect;)V

    .line 631
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorView:Lcom/amazon/kindle/tutorial/ui/AnchorView;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/tutorial/ui/AnchorView;->setRectAnchor(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorView:Lcom/amazon/kindle/tutorial/ui/AnchorView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 635
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorTouchTarget:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->tooltipButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 638
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->shadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->displayCounter:Lcom/amazon/kindle/tutorial/ui/DisplayCounter;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->caretView:Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->clearPath()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 436
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->supportBackgroundStroke:Z

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->containerRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->containerRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->cornerRadius:F

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 441
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->caretView:Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->getPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->containerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 444
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->containerRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->cornerRadius:F

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->containerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 450
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 314
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/16 v0, 0x400

    .line 316
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 318
    sget v0, Lcom/amazon/kindle/krl/R$id;->tool_tip_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->container:Landroid/widget/RelativeLayout;

    .line 319
    sget v0, Lcom/amazon/kindle/krl/R$id;->tool_tip_tutorial_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->contentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 321
    sget v1, Lcom/amazon/kindle/krl/R$id;->tool_tip_tutorial_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->titleView:Landroid/widget/TextView;

    .line 322
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->contentLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/amazon/kindle/krl/R$id;->tool_tip_tutorial_image:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->imageView:Landroid/widget/ImageView;

    .line 323
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->contentLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/amazon/kindle/krl/R$id;->tool_tip_tutorial_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->textView:Landroid/widget/TextView;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->container:Landroid/widget/RelativeLayout;

    sget v1, Lcom/amazon/kindle/krl/R$id;->tool_tip_close_button:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->closeButton:Landroid/widget/ImageButton;

    .line 326
    sget v0, Lcom/amazon/kindle/krl/R$id;->tool_tip_tutorial_caret:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->caretView:Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;

    .line 327
    sget v0, Lcom/amazon/kindle/krl/R$id;->anchor_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/ui/AnchorView;

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorView:Lcom/amazon/kindle/tutorial/ui/AnchorView;

    .line 328
    sget v0, Lcom/amazon/kindle/krl/R$id;->anchor_touch_target:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorTouchTarget:Landroid/view/View;

    .line 329
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->container:Landroid/widget/RelativeLayout;

    sget v1, Lcom/amazon/kindle/krl/R$id;->tool_tip_button:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->tooltipButton:Landroid/widget/Button;

    .line 330
    sget v0, Lcom/amazon/kindle/krl/R$id;->tool_tip_display_count:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/ui/DisplayCounter;

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->displayCounter:Lcom/amazon/kindle/tutorial/ui/DisplayCounter;

    .line 331
    sget v0, Lcom/amazon/kindle/krl/R$id;->shadow_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->shadowView:Landroid/view/View;

    .line 332
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->hideViews()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 356
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 358
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->caretView:Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->getPath()Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 360
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->caretView:Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/ui/ToolTipCaretView;->getVertices()[Landroid/graphics/Point;

    move-result-object p1

    .line 361
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    .line 362
    iget-object p3, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p3

    .line 366
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->getTutorialOrientation()Lcom/amazon/kindle/krx/tutorial/Orientation;

    move-result-object p4

    .line 368
    sget-object p5, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$12;->$SwitchMap$com$amazon$kindle$krx$tutorial$Orientation:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, p5, p4

    const/4 p5, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p4, p5, :cond_2

    if-eq p4, v1, :cond_1

    const/4 v2, 0x3

    if-eq p4, v2, :cond_0

    .line 386
    aget-object p4, p1, v0

    iget p4, p4, Landroid/graphics/Point;->x:I

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p4, p2

    div-int/2addr p4, v1

    .line 387
    aget-object p1, p1, p5

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p3

    goto :goto_0

    .line 381
    :cond_0
    aget-object p4, p1, v0

    iget p4, p4, Landroid/graphics/Point;->x:I

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p4, p2

    div-int/2addr p4, v1

    .line 382
    aget-object p1, p1, p5

    iget p1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 376
    :cond_1
    aget-object p4, p1, p5

    iget p4, p4, Landroid/graphics/Point;->x:I

    sub-int/2addr p4, p2

    .line 377
    aget-object p1, p1, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, p3

    div-int/2addr p1, v1

    goto :goto_0

    .line 371
    :cond_2
    aget-object p4, p1, p5

    iget p4, p4, Landroid/graphics/Point;->x:I

    .line 372
    aget-object p1, p1, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, p3

    div-int/2addr p1, v1

    :goto_0
    add-int p5, p4, p2

    .line 392
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 397
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->tooltip_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-le p5, v1, :cond_3

    sub-int v1, p5, v1

    add-int/2addr v1, v2

    sub-int/2addr p5, v1

    sub-int/2addr p4, v1

    goto :goto_1

    :cond_3
    if-gez p4, :cond_4

    neg-int v1, p4

    add-int/2addr v1, v2

    add-int/2addr p5, v1

    add-int/2addr p4, v1

    :cond_4
    :goto_1
    if-lez p2, :cond_5

    .line 410
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setupButtons(I)V

    .line 413
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/krl/R$bool;->tooltip_add_shadows:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 415
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->shadowView:Landroid/view/View;

    add-int v1, p1, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->shadow_depth:I

    .line 416
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 415
    invoke-virtual {p2, p4, v1, p5, v2}, Landroid/view/View;->layout(IIII)V

    .line 417
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->shadowView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 420
    :cond_6
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->container:Landroid/widget/RelativeLayout;

    add-int/2addr p3, p1

    invoke-virtual {p2, p4, p1, p5, p3}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 421
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->containerRect:Landroid/graphics/RectF;

    int-to-float p4, p4

    int-to-float p1, p1

    int-to-float p5, p5

    int-to-float p3, p3

    invoke-virtual {p2, p4, p1, p5, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 423
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->touchTargetRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_7

    .line 424
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorTouchTarget:Landroid/view/View;

    iget p3, p1, Landroid/graphics/Rect;->left:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    iget p5, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3, p4, p5, p1}, Landroid/view/View;->layout(IIII)V

    .line 425
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorTouchTarget:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :cond_7
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 429
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 430
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 337
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 339
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->container:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 342
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    .line 344
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->tooltip_screen_width_percentage:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int v0, v0, p2

    .line 346
    div-int/lit8 v0, v0, 0x64

    const/high16 p2, -0x80000000

    .line 348
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 349
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 350
    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout;->measure(II)V

    :cond_0
    return-void
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchor:Landroid/view/View;

    return-void
.end method

.method public setAnchorLocation(Landroid/view/View;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorLocation:Landroid/view/View;

    return-void
.end method

.method public setDisplayCount(II)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->displayCounter:Lcom/amazon/kindle/tutorial/ui/DisplayCounter;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/tutorial/ui/DisplayCounter;->setCurrentPageNumber(I)V

    .line 184
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->displayCounter:Lcom/amazon/kindle/tutorial/ui/DisplayCounter;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/tutorial/ui/DisplayCounter;->setMaxNumber(I)V

    const/4 p1, 0x1

    if-le p2, p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->displayCounter:Lcom/amazon/kindle/tutorial/ui/DisplayCounter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->displayCounter:Lcom/amazon/kindle/tutorial/ui/DisplayCounter;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setIcons(F)V
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorLocation:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 654
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setIcons(Landroid/view/ViewGroup;F)V

    :cond_0
    return-void
.end method

.method public setTooltipButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->buttonLabel:Ljava/lang/String;

    .line 167
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->buttonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTooltipMessage(Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;)V
    .locals 1

    .line 156
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->message:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    .line 158
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getAlignment()Ljava/lang/String;

    move-result-object p1

    const-string v0, "center"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->contentLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->contentLayout:Landroid/widget/LinearLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setTooltipSettings(Lcom/amazon/kindle/tutorial/model/TooltipSettings;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->settings:Lcom/amazon/kindle/tutorial/model/TooltipSettings;

    return-void
.end method

.method public setupButtons(I)V
    .locals 6

    .line 462
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->buttonLabel:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->tooltipButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setWidth(I)V

    .line 464
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->tooltipButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->buttonLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->tooltipButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 466
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->tooltipButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->tooltipButton:Landroid/widget/Button;

    new-instance v0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$3;-><init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 475
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->tooltip_layout_left_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 476
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->tooltip_layout_right_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 477
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->tooltip_layout_top_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 479
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/krl/R$dimen;->tooltip_button_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, p1, v2, v0, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    .line 484
    :cond_0
    new-instance p1, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$4;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$4;-><init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->container:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->tooltipButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 494
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$bool;->tooltip_support_close_button:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 496
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->closeButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->closeButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$5;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$5;-><init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->settings:Lcom/amazon/kindle/tutorial/model/TooltipSettings;

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->getDisableClickAnywhere()Z

    move-result p1

    if-nez p1, :cond_2

    .line 509
    new-instance p1, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$6;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$6;-><init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorTouchTarget:Landroid/view/View;

    new-instance v0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$7;-><init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupTutorialText()V
    .locals 4

    .line 258
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->message:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 261
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 263
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->settings:Lcom/amazon/kindle/tutorial/model/TooltipSettings;

    invoke-virtual {v3}, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->getTitleAllCaps()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 267
    :cond_0
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->titleView:Landroid/widget/TextView;

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->tooltip_title_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 270
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->settings:Lcom/amazon/kindle/tutorial/model/TooltipSettings;

    invoke-virtual {v1}, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->getTitleFontName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 273
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/krl/R$string;->tooltip_title_fontface:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v3

    .line 277
    invoke-static {v1}, Lcom/mobipocket/android/drawing/FontFamily;->fromTypeFaceName(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    .line 276
    invoke-virtual {v3, v1}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 278
    iget-object v3, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 280
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->titleView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->titleView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->message:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    invoke-virtual {v3}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->textView:Landroid/widget/TextView;

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->tooltip_body_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 288
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->message:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getAccessibilityText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 291
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->settings:Lcom/amazon/kindle/tutorial/model/TooltipSettings;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->getTextFontName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 296
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->tooltip_text_fontface:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    .line 300
    invoke-static {v0}, Lcom/mobipocket/android/drawing/FontFamily;->fromTypeFaceName(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    .line 299
    invoke-virtual {v1, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public showTutorialViews()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchor:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 199
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorView:Lcom/amazon/kindle/tutorial/ui/AnchorView;

    if-eqz v1, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->calculateAnchorPosition()V

    .line 201
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorTouchTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->message:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->getAnchorAccessibilityType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->anchorTouchTarget:Landroid/view/View;

    new-instance v2, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$2;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout$2;-><init>(Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setupTutorialText()V

    .line 220
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/ui/TooltipTutorialLayout;->setupTutorialImage()V

    :cond_1
    return-void
.end method
