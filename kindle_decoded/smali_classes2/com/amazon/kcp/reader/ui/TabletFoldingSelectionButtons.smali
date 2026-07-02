.class public Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;
.super Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;
.source "TabletFoldingSelectionButtons.java"


# instance fields
.field private backgroundView:Landroid/widget/LinearLayout;

.field private context:Landroid/content/Context;

.field private dummyView:Landroid/widget/LinearLayout;

.field private grid:Landroid/widget/GridView;

.field private gridOverFlow:Z

.field private overflowGridWidth:I

.field private selectedCategoryButton:Landroid/view/View;

.field private visibleCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 52
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->gridOverFlow:Z

    const/4 p2, 0x0

    .line 66
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->selectedCategoryButton:Landroid/view/View;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$integer;->maxNumberOfTabletSelectionButtons:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxNumberOfDisplayedButtons:I

    .line 74
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/GridView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->backgroundView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Landroid/widget/LinearLayout;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->dummyView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$302(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->selectedCategoryButton:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->gridOverFlow:Z

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->overflowGridWidth:I

    return p0
.end method

.method static synthetic access$502(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->overflowGridWidth:I

    return p1
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->adjustPosition()V

    return-void
.end method

.method private adjustPosition()V
    .locals 8

    .line 419
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 420
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->tablet_selection_button_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 421
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 423
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 424
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->dummyView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 426
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 428
    :cond_0
    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int v5, v0, v5

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    if-le v2, v5, :cond_1

    .line 432
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->backgroundView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setY(F)V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->backgroundView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setY(F)V

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 440
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getLocationOnScreen([I)V

    .line 442
    iput-boolean v4, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->gridOverFlow:Z

    .line 445
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    int-to-double v2, v2

    .line 453
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v5}, Landroid/widget/GridView;->getNumColumns()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 455
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    add-int/lit8 v5, v2, -0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-interface {v3, v5, v6, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 456
    invoke-virtual {v3, v4, v4}, Landroid/view/View;->measure(II)V

    .line 457
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    mul-int v2, v2, v3

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    .line 462
    aget v5, v1, v3

    add-int/2addr v5, v2

    if-lt v5, v0, :cond_3

    .line 464
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 465
    aget v5, v1, v3

    sub-int/2addr v0, v5

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 466
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->gridOverFlow:Z

    .line 468
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_2

    .line 472
    :cond_3
    aget v0, v1, v3

    if-gtz v0, :cond_4

    .line 474
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 475
    aget v2, v1, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 476
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 477
    iput-boolean v3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->gridOverFlow:Z

    .line 478
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_2

    .line 481
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    if-lez v2, :cond_5

    .line 485
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 486
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 487
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    :cond_5
    :goto_2
    aget v0, v1, v4

    if-gez v0, :cond_6

    .line 492
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->backgroundView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setX(F)V

    :cond_6
    return-void
.end method

.method private getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 99
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$drawable;->selection_buttons_background_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$drawable;->selection_buttons_background_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getButtonDivider()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 112
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$drawable;->selection_button_divider_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$drawable;->selection_button_divider_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private initPopup()V
    .locals 3

    .line 376
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$layout;->selection_popup_gridview:I

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 385
    sget v1, Lcom/amazon/kindle/krl/R$id;->background_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->backgroundView:Landroid/widget/LinearLayout;

    .line 386
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 388
    sget v1, Lcom/amazon/kindle/krl/R$id;->grid_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    .line 389
    sget v1, Lcom/amazon/kindle/krl/R$id;->dummy_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->dummyView:Landroid/widget/LinearLayout;

    .line 390
    new-instance v1, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$4;-><init>(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFocusable(Z)V

    return-void
.end method

.method private newDivider()Landroid/view/View;
    .locals 3

    .line 408
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 409
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->getButtonDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 410
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    .line 411
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-object v0
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->selectedCategoryButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method protected newAdapter(Ljava/util/List;)Landroid/widget/ListAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;)",
            "Landroid/widget/ListAdapter;"
        }
    .end annotation

    .line 258
    new-instance v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$3;-><init>(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;Landroid/content/Context;ILjava/util/List;)V

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->onFinishInflate()V

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onSelectionStateChanged()V
    .locals 3

    .line 121
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->onSelectionStateChanged()V

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 124
    :goto_0
    sget-object v2, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->dummyView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->backgroundView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->dummyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->selectedCategoryButton:Landroid/view/View;

    :cond_1
    return-void
.end method

.method protected showPopup(Landroid/view/View;Ljava/util/List;Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;",
            "Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;",
            ")V"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->initPopup()V

    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 206
    invoke-interface {p3}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getNameResourceId()I

    move-result v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->annotation_highlight:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 207
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {p3, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 208
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->topLevelButtonHandlers:Ljava/util/List;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;

    invoke-virtual {p3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 209
    :cond_0
    invoke-interface {p3}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getNameResourceId()I

    move-result p3

    sget v1, Lcom/amazon/kindle/krl/R$string;->overflow_button_desc:I

    if-ne p3, v1, :cond_1

    .line 210
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {p3, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 p3, -0x2

    .line 211
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 212
    iput p3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->overflowGridWidth:I

    .line 214
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {p3, v0}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {p3, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 216
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {p3, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 217
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->newAdapter(Ljava/util/List;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    new-instance v0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$1;-><init>(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;Ljava/util/List;)V

    invoke-virtual {p3, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->dummyView:Landroid/widget/LinearLayout;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->backgroundView:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 233
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {p2, v4}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 234
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOverScrollMode(I)V

    .line 235
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    invoke-virtual {p2, v3}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 238
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->grid:Landroid/widget/GridView;

    new-instance p3, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$2;

    invoke-direct {p3, p0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons$2;-><init>(Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;)V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->selectedCategoryButton:Landroid/view/View;

    return-void
.end method

.method protected updateButtons()V
    .locals 8

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->visibleCount:I

    .line 144
    new-instance v7, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/krl/R$string;->overflow_button_desc:I

    sget v4, Lcom/amazon/kindle/krl/R$drawable;->ic_overflow_amazon_light:I

    sget v5, Lcom/amazon/kindle/krl/R$drawable;->ic_overflow_amazon_dark:I

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/reader/ui/buttons/SelectionButtonCategory;-><init>(Landroid/content/Context;IIIZ)V

    .line 148
    new-instance v1, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;

    invoke-direct {v1, p0, v7}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;-><init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;)V

    .line 150
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->topLevelButtonHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;

    .line 151
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->updateButtonView()V

    .line 153
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonState()Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    move-result-object v4

    sget-object v5, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->ENABLED:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    if-ne v4, v5, :cond_1

    .line 154
    instance-of v4, v3, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;

    if-eqz v4, :cond_4

    .line 155
    move-object v4, v3

    check-cast v4, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->getCategory()Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

    move-result-object v5

    .line 157
    invoke-interface {v5}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getNameResourceId()I

    move-result v5

    sget v6, Lcom/amazon/kindle/krl/R$string;->overflow_button_desc:I

    if-ne v5, v6, :cond_2

    .line 159
    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->getButtons()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->addAll(Ljava/util/List;)V

    goto :goto_0

    .line 160
    :cond_2
    iget v4, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->visibleCount:I

    iget v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxNumberOfDisplayedButtons:I

    if-ge v4, v5, :cond_1

    if-lez v4, :cond_3

    .line 162
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->newDivider()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    :cond_3
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    iget v3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->visibleCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->visibleCount:I

    goto :goto_0

    .line 167
    :cond_4
    instance-of v4, v3, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;

    if-eqz v4, :cond_1

    .line 168
    iget v4, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->visibleCount:I

    iget v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->maxNumberOfDisplayedButtons:I

    if-ne v4, v5, :cond_5

    .line 169
    check-cast v3, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;->getButton()Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->add(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)V

    goto :goto_0

    :cond_5
    if-lez v4, :cond_6

    .line 172
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->newDivider()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    :cond_6
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 175
    iget v3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->visibleCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->visibleCount:I

    goto/16 :goto_0

    .line 181
    :cond_7
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->getButtons()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 185
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->getButtons()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->sortCustomButtonsByPriority(Ljava/util/List;)V

    .line 187
    iget v2, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->visibleCount:I

    if-lez v2, :cond_8

    .line 188
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->newDivider()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 190
    :cond_8
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    :cond_9
    iget v1, p0, Lcom/amazon/kcp/reader/ui/TabletFoldingSelectionButtons;->visibleCount:I

    if-nez v1, :cond_a

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 197
    :cond_a
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method
