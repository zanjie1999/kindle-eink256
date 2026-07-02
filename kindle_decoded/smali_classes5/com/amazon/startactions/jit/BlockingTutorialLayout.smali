.class public Lcom/amazon/startactions/jit/BlockingTutorialLayout;
.super Landroid/widget/RelativeLayout;
.source "BlockingTutorialLayout.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

.field private holderOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private originalParent:Landroid/view/ViewGroup;

.field private reparented:Z

.field private targetLocation:[I

.field private targetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/startactions/jit/BlockingTutorialLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/startactions/jit/BlockingTutorialLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 32
    iput-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetLocation:[I

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->reparented:Z

    return-void
.end method

.method private reparentSwitchFromJitToWidget()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 163
    iget-object v1, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->originalParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 166
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->originalParent:Landroid/view/ViewGroup;

    .line 168
    iput-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    return-void
.end method

.method private reparentSwitchFromWidgetToJit()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 153
    iget-object v1, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->reparented:Z

    return-void
.end method


# virtual methods
.method public dismissAndRestore()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->originalParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->holderOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->reparentSwitchFromJitToWidget()V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 65
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 68
    iget-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getTargetView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 73
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 75
    iget-object p3, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {p3}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getTargetView()Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    .line 76
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 77
    iget-object p4, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    .line 78
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {v0}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getHolderView()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->originalParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 79
    iget-boolean v1, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->reparented:Z

    if-nez v1, :cond_3

    .line 80
    sget v1, Lcom/amazon/kindle/ea/R$id;->filler:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-direct {p0}, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->reparentSwitchFromWidgetToJit()V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 89
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->originalParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 92
    iget-object v0, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    aget v3, p2, v1

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    .line 93
    aget v0, v0, v3

    aget p2, p2, v3

    sub-int/2addr v0, p2

    .line 94
    iget-object p2, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    int-to-float v3, v2

    invoke-virtual {p2, v3}, Landroid/view/View;->setX(F)V

    .line 95
    iget-object p2, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->targetView:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {p2, v3}, Landroid/view/View;->setY(F)V

    .line 97
    iget-object p2, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {p2}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getContentView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 99
    iget-object v3, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {v3}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getTopPointerView()Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    move-result-object v3

    .line 101
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v4, v3

    .line 103
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v4, v3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v4, v3

    add-int/2addr p4, v0

    add-int/2addr v4, p4

    const/16 v3, 0x8

    const/16 v5, 0x50

    const/16 v6, 0x30

    if-lt v4, p5, :cond_4

    .line 109
    iget-object p5, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {p5}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getTopPointerView()Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    move-result-object p5

    .line 110
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v4, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {v4}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getBottomPointerView()Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x30

    goto :goto_2

    .line 114
    :cond_4
    iget-object p5, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {p5}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getBottomPointerView()Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    move-result-object p5

    .line 115
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v4, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-virtual {v4}, Lcom/amazon/startactions/jit/BlockingTutorialFragment;->getTopPointerView()Lcom/amazon/startactions/jit/BlockingTutorialPointerView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x50

    .line 119
    :goto_2
    div-int/2addr p3, p1

    add-int/2addr v2, p3

    and-int/lit8 p3, v3, 0x70

    if-ne p3, v6, :cond_5

    .line 125
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_3

    :cond_5
    if-ne p3, v5, :cond_7

    .line 127
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p4

    :goto_3
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setX(F)V

    int-to-float v3, v3

    .line 133
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setY(F)V

    new-array p2, p1, [I

    .line 136
    sget v3, Lcom/amazon/kindle/ea/R$id;->tutorial_bubble:I

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 137
    invoke-virtual {v3, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 139
    aget p2, p2, v1

    sub-int/2addr v2, p2

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, p1

    sub-int/2addr v2, p2

    int-to-float p1, v2

    invoke-virtual {p5, p1}, Landroid/view/View;->setX(F)V

    if-ne p3, v6, :cond_6

    .line 141
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p5, p1}, Landroid/view/View;->setY(F)V

    goto :goto_4

    :cond_6
    int-to-float p1, p4

    .line 143
    invoke-virtual {p5, p1}, Landroid/view/View;->setY(F)V

    :goto_4
    return-void

    .line 129
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Gravity isn\'t vertical"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    return-void
.end method

.method public setBlockingTutorialFragment(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/startactions/jit/BlockingTutorialLayout;->blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    return-void
.end method
