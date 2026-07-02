.class public Lcom/amazon/readingactions/ui/widget/BookGridView;
.super Landroid/view/ViewGroup;
.source "BookGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;,
        Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;,
        Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;,
        Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;
    }
.end annotation


# static fields
.field private static final MAX_COVER_SHRINKAGE:D = 0.2


# instance fields
.field private final accessibilityStateListener:Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;

.field private adapter:Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;

.field private animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

.field private blockTouches:Z

.field private bubbleBodyBackground:Landroid/graphics/drawable/Drawable;

.field private bubbleBodyLayoutId:I

.field private bubbleBodyView:Landroid/view/ViewGroup;

.field private bubbleContentView:Landroid/view/View;

.field private bubbleNeedleBackground:Landroid/graphics/drawable/Drawable;

.field private bubbleNeedleLayoutId:I

.field private bubbleNeedleView:Landroid/view/View;

.field private final collapseListener:Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;

.field private coverHeight:I

.field private final coverOnClickListener:Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;

.field private coverPadding:I

.field private coverWidth:I

.field private coversPerRow:I

.field private final darkenOnTouchListener:Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

.field private def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

.field private desiredCoverHeight:I

.field private desiredCoverWidth:I

.field private needleOffset:I

.field private numberOfRows:I

.field private final recycledBodyViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final recycledContentViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final recycledNeedleViews:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private selectedCover:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 107
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->darkenOnTouchListener:Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

    .line 49
    new-instance p1, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Lcom/amazon/readingactions/ui/widget/BookGridView$1;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverOnClickListener:Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;

    .line 52
    new-instance p1, Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;

    invoke-direct {p1, p0, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Lcom/amazon/readingactions/ui/widget/BookGridView$1;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->collapseListener:Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;

    .line 55
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledBodyViews:Ljava/util/Stack;

    .line 56
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledNeedleViews:Ljava/util/Stack;

    .line 57
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledContentViews:Ljava/util/Stack;

    .line 60
    new-instance p1, Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;

    invoke-direct {p1, p0, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Lcom/amazon/readingactions/ui/widget/BookGridView$1;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->accessibilityStateListener:Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->selectedCover:I

    .line 90
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyLayoutId:I

    .line 91
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleLayoutId:I

    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->needleOffset:I

    .line 108
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->darkenOnTouchListener:Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

    .line 49
    new-instance p1, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Lcom/amazon/readingactions/ui/widget/BookGridView$1;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverOnClickListener:Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;

    .line 52
    new-instance p1, Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;

    invoke-direct {p1, p0, p2}, Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Lcom/amazon/readingactions/ui/widget/BookGridView$1;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->collapseListener:Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;

    .line 55
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledBodyViews:Ljava/util/Stack;

    .line 56
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledNeedleViews:Ljava/util/Stack;

    .line 57
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledContentViews:Ljava/util/Stack;

    .line 60
    new-instance p1, Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;

    invoke-direct {p1, p0, p2}, Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Lcom/amazon/readingactions/ui/widget/BookGridView$1;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->accessibilityStateListener:Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->selectedCover:I

    .line 90
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyLayoutId:I

    .line 91
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleLayoutId:I

    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->needleOffset:I

    .line 122
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p1, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;-><init>(Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->darkenOnTouchListener:Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

    .line 49
    new-instance p1, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Lcom/amazon/readingactions/ui/widget/BookGridView$1;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverOnClickListener:Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;

    .line 52
    new-instance p1, Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;

    invoke-direct {p1, p0, p2}, Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Lcom/amazon/readingactions/ui/widget/BookGridView$1;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->collapseListener:Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;

    .line 55
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledBodyViews:Ljava/util/Stack;

    .line 56
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledNeedleViews:Ljava/util/Stack;

    .line 57
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledContentViews:Ljava/util/Stack;

    .line 60
    new-instance p1, Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;

    invoke-direct {p1, p0, p2}, Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Lcom/amazon/readingactions/ui/widget/BookGridView$1;)V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->accessibilityStateListener:Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->selectedCover:I

    .line 90
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyLayoutId:I

    .line 91
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleLayoutId:I

    const/4 p1, 0x0

    .line 92
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->needleOffset:I

    .line 138
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->init()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/readingactions/ui/widget/BookGridView;)Ljava/util/Stack;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledNeedleViews:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/readingactions/ui/widget/BookGridView;)Ljava/util/Stack;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledBodyViews:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/readingactions/ui/widget/BookGridView;)Ljava/util/Stack;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledContentViews:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/readingactions/ui/widget/BookGridView;)Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->adapter:Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/readingactions/ui/widget/BookGridView;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->selectedCover:I

    return p0
.end method

.method static synthetic access$800(Lcom/amazon/readingactions/ui/widget/BookGridView;)Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-object p0
.end method

.method static synthetic access$902(Lcom/amazon/readingactions/ui/widget/BookGridView;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->blockTouches:Z

    return p1
.end method

.method private destroyBubble(Z)V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 412
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    if-eqz p1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    new-instance v1, Lcom/amazon/readingactions/ui/widget/BookGridView$1;

    invoke-direct {v1, p0}, Lcom/amazon/readingactions/ui/widget/BookGridView$1;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;)V

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/ui/AnimationCoordinator;->removeView(Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;)V

    .line 422
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleContentView:Landroid/view/View;

    .line 423
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/amazon/readingactions/ui/widget/BookGridView$2;

    invoke-direct {v2, p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridView$2;-><init>(Lcom/amazon/readingactions/ui/widget/BookGridView;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/ui/AnimationCoordinator;->removeView(Landroid/view/View;Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;)V

    goto :goto_0

    .line 432
    :cond_1
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleContentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 433
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 434
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x0

    .line 438
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    .line 439
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleContentView:Landroid/view/View;

    .line 440
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method private initBubble(IZ)V
    .locals 3

    .line 364
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledBodyViews:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->getBubbleBodyLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledBodyViews:Ljava/util/Stack;

    .line 367
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_0
    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    .line 368
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledNeedleViews:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->getBubbleNeedleLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledNeedleViews:Ljava/util/Stack;

    .line 369
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    .line 371
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledContentViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledContentViews:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_2
    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleContentView:Landroid/view/View;

    .line 372
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->adapter:Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    invoke-interface {v1, p1, v0, v2}, Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;->getBubbleContentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleContentView:Landroid/view/View;

    .line 373
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 374
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->isNeedleCreated()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 375
    iget p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverWidth:I

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setBubbleNeedleViewWidth(I)V

    .line 378
    :cond_3
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/BookGridActions;->CLICK_OPEN_BOOK_DETAIL:Lcom/amazon/ea/metrics/BookGridActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    if-eqz p2, :cond_4

    .line 380
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    if-eqz p1, :cond_4

    .line 381
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0, p2}, Lcom/amazon/ea/ui/AnimationCoordinator;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 382
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    invoke-virtual {p1, p0, p2}, Lcom/amazon/ea/ui/AnimationCoordinator;->addView(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 385
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->selectedCover:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible(Landroid/view/View;)V

    .line 386
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/amazon/ea/ui/AnimationCoordinator;->scrollToVisible(Landroid/view/View;)V

    goto :goto_3

    .line 388
    :cond_4
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 389
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 392
    :goto_3
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    .line 393
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    invoke-static {p2, p1}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 395
    :cond_5
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    .line 396
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    invoke-static {p2, p1}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method private isNeedleCreated()Z
    .locals 1

    .line 351
    iget v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverWidth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 597
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->blockTouches:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getBubbleBodyLayoutId()I
    .locals 2

    .line 314
    iget v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyLayoutId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/amazon/kindle/ea/R$layout;->endactions_detail_bubble_body:I

    :cond_0
    return v0
.end method

.method public getBubbleNeedleLayoutId()I
    .locals 2

    .line 329
    iget v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleLayoutId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget v0, Lcom/amazon/kindle/ea/R$layout;->endactions_detail_bubble_needle:I

    :cond_0
    return v0
.end method

.method public getSelectedCover()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->selectedCover:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 445
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 447
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 449
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->accessibilityStateListener:Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 454
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 456
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 458
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->accessibilityStateListener:Lcom/amazon/readingactions/ui/widget/BookGridView$AccessibilityStateListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 534
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->adapter:Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;->getCount()I

    move-result p1

    :goto_0
    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 546
    :goto_1
    iget v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->numberOfRows:I

    if-ge p3, v2, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 547
    :goto_2
    iget v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coversPerRow:I

    if-ge v2, v4, :cond_3

    if-lt v0, p1, :cond_1

    goto :goto_3

    .line 552
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 553
    iget v5, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverWidth:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverHeight:I

    add-int/2addr v6, p5

    invoke-virtual {v4, v3, p5, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 557
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 558
    iget v6, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverWidth:I

    iget v7, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverHeight:I

    invoke-static {v5, v6, v7}, Lcom/amazon/startactions/ui/helpers/ImageUtil;->getScaleFitCenter(Landroid/graphics/drawable/Drawable;II)F

    move-result v6

    .line 559
    iget v7, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverHeight:I

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v6

    sub-float/2addr v7, v5

    float-to-int v5, v7

    invoke-virtual {v4, p2, v5, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 562
    iget v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->selectedCover:I

    if-ne v0, v4, :cond_2

    move v1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 568
    iget v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverWidth:I

    iget v5, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverPadding:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 573
    :cond_3
    :goto_3
    iget v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverHeight:I

    iget v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverPadding:I

    add-int/2addr v2, v3

    add-int/2addr p5, v2

    .line 576
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    if-nez p4, :cond_4

    iget v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->selectedCover:I

    if-ge v2, v0, :cond_4

    .line 577
    iget-object p4, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 578
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 580
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p2

    iget-object v5, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    .line 581
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, p5

    .line 580
    invoke-virtual {v3, p2, p5, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 584
    iget v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    div-int/lit8 v4, p4, 0x2

    sub-int/2addr v3, v4

    sub-int v4, p5, v2

    .line 585
    iget v5, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->needleOffset:I

    add-int/2addr v4, v5

    .line 586
    iget-object v5, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    add-int/2addr p4, v3

    add-int/2addr v2, v4

    invoke-virtual {v5, v3, v4, p4, v2}, Landroid/view/View;->layout(IIII)V

    .line 589
    iget-object p4, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p4

    iget v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverPadding:I

    add-int/2addr p4, v2

    add-int/2addr p5, p4

    const/4 p4, 0x1

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 468
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->adapter:Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;->getCount()I

    move-result v0

    .line 471
    :goto_0
    iget v2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->desiredCoverWidth:I

    mul-int v2, v2, v0

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverPadding:I

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    .line 472
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v2

    .line 475
    iput v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coversPerRow:I

    move v3, v2

    .line 477
    :goto_1
    iget v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->desiredCoverWidth:I

    const/4 v5, 0x1

    if-le v3, v4, :cond_1

    .line 478
    iget v6, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverPadding:I

    add-int/2addr v4, v6

    sub-int/2addr v3, v4

    .line 479
    iget v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coversPerRow:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coversPerRow:I

    goto :goto_1

    .line 481
    :cond_1
    iget v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coversPerRow:I

    if-gez v3, :cond_2

    .line 482
    iput v5, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coversPerRow:I

    .line 487
    :cond_2
    iget v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coversPerRow:I

    iget v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->desiredCoverWidth:I

    mul-int v6, v3, v4

    add-int/lit8 v7, v3, -0x1

    iget v8, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverPadding:I

    mul-int v7, v7, v8

    add-int/2addr v6, v7

    add-int/2addr v4, v8

    sub-int v6, v2, v6

    sub-int/2addr v4, v6

    int-to-double v6, v4

    add-int/2addr v3, v5

    int-to-double v3, v3

    div-double/2addr v6, v3

    .line 489
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v4, v3

    .line 491
    iget v6, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->desiredCoverWidth:I

    int-to-float v7, v6

    div-float/2addr v4, v7

    float-to-double v7, v4

    const-wide v9, 0x3fc999999999999aL    # 0.2

    cmpg-double v4, v7, v9

    if-gez v4, :cond_3

    sub-int/2addr v6, v3

    .line 493
    iput v6, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverWidth:I

    .line 494
    iget v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coversPerRow:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coversPerRow:I

    goto :goto_2

    .line 496
    :cond_3
    iput v6, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverWidth:I

    .line 500
    :goto_2
    iget v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->desiredCoverWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->desiredCoverHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 501
    iget v4, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverWidth:I

    int-to-float v6, v4

    div-float/2addr v6, v3

    float-to-int v3, v6

    iput v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverHeight:I

    const/high16 v3, -0x80000000

    .line 504
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 505
    iget v6, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverHeight:I

    invoke-static {v6, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :goto_3
    if-ge v1, v0, :cond_4

    .line 507
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v3}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 511
    :cond_4
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 512
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 513
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :cond_5
    int-to-double v0, v0

    .line 518
    iget p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coversPerRow:I

    int-to-double v3, p1

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->numberOfRows:I

    .line 519
    iget v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverHeight:I

    mul-int v0, v0, p1

    sub-int/2addr p1, v5

    iget v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverPadding:I

    mul-int p1, p1, v1

    add-int/2addr v0, p1

    .line 520
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    .line 521
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverPadding:I

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 523
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    .line 526
    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 527
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->isNeedleCreated()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 528
    iget p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverWidth:I

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setBubbleNeedleViewWidth(I)V

    :cond_7
    return-void
.end method

.method public reloadCover(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->adapter:Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 225
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAdapter(Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;)V
    .locals 4

    .line 183
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->adapter:Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->destroyBubble(Z)V

    .line 187
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 188
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->recycledContentViews:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    if-eqz p1, :cond_1

    .line 193
    invoke-interface {p1}, Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;->getCount()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 195
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverDrawable(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/amazon/readingactions/helpers/RecommendationsCoverImageHelper;->getCoverContentDescription(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 198
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 199
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->darkenOnTouchListener:Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 200
    iget-object v3, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverOnClickListener:Lcom/amazon/readingactions/ui/widget/BookGridView$CoverOnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    iget p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->selectedCover:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 206
    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->initBubble(IZ)V

    .line 210
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setAnimationCoordinator(Lcom/amazon/ea/ui/AnimationCoordinator;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->collapseListener:Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;

    invoke-virtual {v0, v1}, Lcom/amazon/ea/ui/AnimationCoordinator;->removeCollapseListener(Lcom/amazon/ea/ui/AnimationCoordinator$CollapseListener;)V

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    if-eqz p1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->collapseListener:Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->addCollapseListener(Lcom/amazon/ea/ui/AnimationCoordinator$CollapseListener;)V

    :cond_1
    return-void
.end method

.method public setBubbleBodyBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBubbleBodyLayoutId(I)V
    .locals 0

    .line 307
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleBodyLayoutId:I

    return-void
.end method

.method public setBubbleNeedleBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBubbleNeedleLayoutId(I)V
    .locals 0

    .line 322
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleLayoutId:I

    return-void
.end method

.method public setBubbleNeedleViewWidth(I)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 296
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 297
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    sget p1, Lcom/amazon/kindle/ea/R$array;->readingactions_bubble_needle:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridView;->setBubbleNeedleBackground(Landroid/graphics/drawable/Drawable;)V

    .line 299
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleView:Landroid/view/View;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->bubbleNeedleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCoverPadding(I)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->coverPadding:I

    .line 235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setCoverSize(II)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->desiredCoverWidth:I

    .line 172
    iput p2, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->desiredCoverHeight:I

    .line 174
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setDef(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-void
.end method

.method public setNeedleOffset(I)V
    .locals 1

    .line 339
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->needleOffset:I

    return-void
.end method

.method public setSelectedCover(I)V
    .locals 2

    .line 245
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 247
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    iput p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->selectedCover:I

    .line 252
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->adapter:Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 256
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->destroyBubble(Z)V

    if-eq p1, v1, :cond_2

    .line 259
    invoke-direct {p0, p1, v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->initBubble(IZ)V

    .line 260
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->adapter:Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;

    invoke-interface {v0, p1}, Lcom/amazon/readingactions/ui/widget/BookGridView$BookGridAdapter;->onExpand(I)V

    .line 261
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView;->collapseListener:Lcom/amazon/readingactions/ui/widget/BookGridView$CollapseListener;

    invoke-virtual {p1, v0}, Lcom/amazon/ea/ui/AnimationCoordinator;->collapseOthers(Lcom/amazon/ea/ui/AnimationCoordinator$CollapseListener;)V

    :cond_2
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
