.class public Lcom/amazon/notebook/module/NotebookScreenListView;
.super Landroid/widget/ListView;
.source "NotebookScreenListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;
    }
.end annotation


# static fields
.field private static final FOCUSABLE_VIEW_ORDER:[I

.field private static final PAN_SPEED:F = 1200.0f


# instance fields
.field private currentFocusPosition:I

.field private currentSubFocusPosition:I

.field private panningAnimation:Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 20
    sget v1, Lcom/amazon/notebook/module/R$id;->notebook_module_ruby_list_item_overlay:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/amazon/notebook/module/R$id;->notebook_module_ruby_star_image:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/amazon/notebook/module/NotebookScreenListView;->FOCUSABLE_VIEW_ORDER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentFocusPosition:I

    .line 19
    iput p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    .line 21
    new-instance p1, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;-><init>(Lcom/amazon/notebook/module/NotebookScreenListView;Lcom/amazon/notebook/module/NotebookScreenListView$1;)V

    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->panningAnimation:Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method private focusBack()Z
    .locals 4

    .line 92
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 93
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 95
    iget v2, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentFocusPosition:I

    const/4 v3, -0x1

    if-lt v2, v0, :cond_0

    if-le v2, v1, :cond_1

    .line 96
    :cond_0
    iput v3, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentFocusPosition:I

    .line 99
    :cond_1
    iget v0, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentFocusPosition:I

    if-ne v0, v3, :cond_2

    .line 100
    iput v3, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    const/4 v0, 0x0

    return v0

    .line 103
    :cond_2
    iget v1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    if-gtz v1, :cond_3

    .line 104
    sget-object v1, Lcom/amazon/notebook/module/NotebookScreenListView;->FOCUSABLE_VIEW_ORDER:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    add-int/lit8 v0, v0, -0x1

    .line 105
    iput v0, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentFocusPosition:I

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 107
    iput v1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookScreenListView;->requestNewFocus()Z

    move-result v0

    return v0
.end method

.method private focusForward()Z
    .locals 4

    .line 61
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 62
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 64
    iget v2, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentFocusPosition:I

    const/4 v3, -0x1

    if-lt v2, v0, :cond_0

    if-le v2, v1, :cond_1

    .line 65
    :cond_0
    iput v3, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentFocusPosition:I

    .line 68
    :cond_1
    iget v1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentFocusPosition:I

    const/4 v2, 0x0

    if-ne v1, v3, :cond_3

    .line 69
    iput v0, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentFocusPosition:I

    if-ne v0, v3, :cond_2

    .line 71
    iput v3, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    goto :goto_0

    .line 73
    :cond_2
    iput v2, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    goto :goto_0

    .line 76
    :cond_3
    iget v0, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    sget-object v3, Lcom/amazon/notebook/module/NotebookScreenListView;->FOCUSABLE_VIEW_ORDER:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_4

    .line 77
    iput v2, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    add-int/lit8 v1, v1, 0x1

    .line 78
    iput v1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentFocusPosition:I

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 80
    iput v0, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    .line 84
    :goto_0
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookScreenListView;->requestNewFocus()Z

    move-result v0

    return v0
.end method

.method private requestNewFocus()Z
    .locals 5

    .line 33
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 34
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 36
    iget v2, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentFocusPosition:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-lt v2, v0, :cond_3

    if-gt v2, v1, :cond_3

    if-eq v2, v4, :cond_3

    iget v1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v0

    .line 43
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    .line 48
    :cond_1
    sget-object v1, Lcom/amazon/notebook/module/NotebookScreenListView;->FOCUSABLE_VIEW_ORDER:[I

    iget v2, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    .line 53
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0

    .line 38
    :cond_3
    :goto_0
    iput v4, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentFocusPosition:I

    .line 39
    iput v4, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->currentSubFocusPosition:I

    return v3
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x13

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 141
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookScreenListView;->focusForward()Z

    move-result p1

    return p1

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookScreenListView;->focusBack()Z

    move-result p1

    return p1

    .line 127
    :cond_2
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->panningAnimation:Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;

    const/high16 p2, 0x44960000    # 1200.0f

    invoke-virtual {p1, v2, p2}, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->startScrollingPan(FF)V

    .line 128
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->panningAnimation:Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->panningAnimation:Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 129
    :cond_3
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->panningAnimation:Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;->startAnimation()V

    :cond_4
    return v1

    .line 134
    :cond_5
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->panningAnimation:Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;

    const/high16 p2, -0x3b6a0000    # -1200.0f

    invoke-virtual {p1, v2, p2}, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->startScrollingPan(FF)V

    .line 135
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->panningAnimation:Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->panningAnimation:Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 136
    :cond_6
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->panningAnimation:Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;->startAnimation()V

    :cond_7
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x13

    if-eq p1, p2, :cond_0

    const/16 p2, 0x14

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenListView;->panningAnimation:Lcom/amazon/notebook/module/NotebookScreenListView$NotebookListPanningAnimation;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->stopScrollingPan()V

    const/4 p1, 0x1

    return p1
.end method
