.class public Lcom/amazon/kcp/reader/ui/ObjectSelectionView;
.super Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;
.source "ObjectSelectionView.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

.field private windowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->windowRect:Landroid/graphics/Rect;

    return-void
.end method

.method private preventInfoCardOverlay(Landroid/graphics/Rect;)V
    .locals 5

    .line 142
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    iget-object v1, v1, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 144
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getInfoCardController()Lcom/amazon/kcp/reader/InfoCardController;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 148
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/InfoCardController;->getInfoCardContainer()Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 153
    :cond_2
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 155
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 157
    iget-boolean v4, v1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isOnBottom:Z

    if-eqz v4, :cond_3

    .line 158
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getDesiredOnScreenHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v3, Landroid/graphics/Rect;->top:I

    .line 160
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 161
    iget p1, v3, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v2

    .line 162
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 163
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->disableMarker()V

    goto :goto_1

    .line 166
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getDesiredOnScreenHeight()I

    move-result p1

    iput p1, v3, Landroid/graphics/Rect;->bottom:I

    .line 168
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 169
    iget p1, v3, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v2

    .line 170
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 171
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->disableMarker()V

    .line 175
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    iput-object v0, p1, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/kcp/reader/ui/ObjectSelectionView;)V

    .line 138
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->destroy()V

    return-void
.end method

.method protected getCardSelectionCoverage(Landroid/view/View;)I
    .locals 9

    .line 184
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v0

    :goto_0
    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 189
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_8

    .line 193
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 194
    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-ge v5, v1, :cond_3

    move v1, v5

    .line 195
    :cond_3
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v2, :cond_2

    move v2, v4

    goto :goto_1

    .line 198
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 205
    sget v5, Lcom/amazon/kindle/krl/R$dimen;->tablet_selection_row_height:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 209
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 212
    sget v6, Lcom/amazon/kindle/krl/R$drawable;->ic_keyboard_left_selector:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 213
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v3, v7, v3

    const/4 v8, 0x1

    aput v0, v7, v8

    .line 218
    invoke-static {v3, v7}, Lcom/amazon/kcp/util/Utils;->maxInt(I[I)I

    move-result v0

    add-int/2addr v2, v0

    new-array v0, v8, [I

    aput v3, v0, v3

    .line 222
    invoke-static {v5, v0}, Lcom/amazon/kcp/util/Utils;->maxInt(I[I)I

    move-result v0

    sub-int/2addr v1, v0

    .line 224
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getInfoCardHeight()I

    move-result v0

    if-eqz p1, :cond_6

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    if-le v0, p1, :cond_7

    goto :goto_4

    :cond_7
    move v0, p1

    .line 231
    :goto_4
    iget p1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr p1, v0

    if-gt p1, v2, :cond_8

    const/4 p1, 0x1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    if-gt v1, v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    if-eqz p1, :cond_a

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    or-int/lit8 p1, v6, 0x0

    or-int/2addr p1, v8

    return p1

    :cond_b
    :goto_8
    return v3
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onFinishInflate()V

    .line 90
    sget v0, Lcom/amazon/kindle/krl/R$id;->selection_buttons:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/SelectionButtons;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 114
    invoke-super/range {p0 .. p5}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onLayout(ZIIII)V

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 119
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getButtonsOnlyHeight()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getMaxWidth()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getMaxHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->layoutOnScreen(IIII)V

    .line 121
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->windowRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 126
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->windowRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->preventInfoCardOverlay(Landroid/graphics/Rect;)V

    .line 127
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->windowRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 129
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    iget-object p2, p1, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not properly measured/laid out"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 100
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 104
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    const/high16 v3, -0x80000000

    .line 105
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 106
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 104
    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 109
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onMeasure(II)V

    return-void
.end method

.method public setContentMargins(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->selectionButtons:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0, p1, p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/kcp/reader/ui/ObjectSelectionView;)V

    .line 66
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDefaultCustomSelectionButtonsController()Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->getSupportedReaderActivityFeatures()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;->getDefaultSelectionButtons(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setCustomButtons(Ljava/util/List;)V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    return-void
.end method
