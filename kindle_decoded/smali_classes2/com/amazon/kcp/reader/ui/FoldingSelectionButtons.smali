.class public Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;
.super Lcom/amazon/kcp/reader/ui/SelectionButtons;
.source "FoldingSelectionButtons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;,
        Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;,
        Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected container:Landroid/view/ViewGroup;

.field protected popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

.field private storedCustomSelectionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;"
        }
    .end annotation
.end field

.field protected final topLevelButtonHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/SelectionButtons;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->topLevelButtonHandlers:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->newSimpleTopLevelButtonView(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Landroid/widget/TextView;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->setTextColor(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getFirstVisibleButtonView()Landroid/view/View;
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->topLevelButtonHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;

    .line 392
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private newSimpleTopLevelButtonView(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 569
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$layout;->simple_top_level_selection_button:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private setTextColor(Landroid/widget/TextView;)V
    .locals 2

    .line 490
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/kindle/krl/R$color;->black_mode_text:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$color;->white_mode_text:I

    .line 493
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
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

    .line 383
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 386
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method protected buttonViewCount()I
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->topLevelButtonHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected filterVisible(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;"
        }
    .end annotation

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 622
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 623
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getButtonState(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;->ENABLED:Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;

    if-ne v2, v3, :cond_0

    .line 624
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getButtonView(I)Landroid/view/View;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->topLevelButtonHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected layoutButtons(III)V
    .locals 2

    .line 203
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    .line 204
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    .line 203
    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method public layoutOnScreen(IIII)V
    .locals 10

    .line 208
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 209
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 215
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    .line 216
    iget-object p4, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p4

    .line 218
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    .line 219
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getDocViewerMargins(Landroid/app/Activity;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v4

    .line 224
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v5}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getSelectionBottomAdjustedForAccessibilityControl(Landroid/app/Activity;Landroid/graphics/Rect;)I

    move-result v3

    .line 229
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->getInfoCardRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 234
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 235
    :goto_0
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 239
    :goto_1
    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-eqz v7, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    add-int/2addr v8, v9

    .line 243
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v9, v4

    .line 246
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    if-eqz v4, :cond_4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p2

    div-int/lit8 v5, p3, 0x2

    sub-int/2addr v4, v5

    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    .line 248
    invoke-virtual {v7, v2}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSelectionOffsetY(Z)I

    move-result v7

    add-int/2addr v4, v7

    if-lt v4, v8, :cond_4

    .line 253
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/krl/R$dimen;->selection_bar_shadow_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p2

    .line 254
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 255
    invoke-virtual {v0, v2, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 258
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 260
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    .line 261
    sget-object p2, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Above:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    goto :goto_4

    .line 264
    :cond_4
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    if-eqz v4, :cond_5

    add-int v4, v3, p2

    div-int/lit8 v5, p4, 0x2

    add-int/2addr v4, v5

    iget-object v7, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    .line 266
    invoke-virtual {v7, v6}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSelectionOffsetY(Z)I

    move-result v7

    add-int/2addr v4, v7

    if-gt v4, v9, :cond_5

    add-int/2addr v3, v5

    .line 271
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/krl/R$dimen;->selection_bar_shadow_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    .line 272
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 273
    invoke-virtual {v0, v2, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 276
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->lastLine:Landroid/graphics/Rect;

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 278
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->targetArea:Landroid/graphics/Rect;

    .line 279
    sget-object p2, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Below:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    goto :goto_4

    .line 284
    :cond_5
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    div-int/lit8 v3, v3, 0x4

    .line 285
    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 287
    iput v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    .line 288
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 290
    sget-object p2, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Center:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    move v3, v4

    .line 293
    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcom/amazon/kindle/krl/R$dimen;->selection_buttons_x_margin:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 296
    div-int/lit8 v4, p1, 0x2

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v3

    .line 297
    iput p1, v0, Landroid/graphics/Rect;->right:I

    if-ge v3, p2, :cond_6

    sub-int/2addr p2, v3

    add-int/2addr v3, p2

    .line 304
    iput v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    .line 305
    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_6
    add-int v4, p1, p2

    .line 306
    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_7

    add-int/2addr p2, p1

    sub-int/2addr p2, v5

    sub-int/2addr v3, p2

    .line 309
    iput v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    .line 310
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 313
    :cond_7
    :goto_5
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->position:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    sget-object p2, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Center:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    if-ne p1, p2, :cond_8

    .line 318
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSelectionOffsetX()I

    move-result p1

    .line 319
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    invoke-virtual {p2, v6}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->getSelectionOffsetY(Z)I

    move-result p2

    .line 320
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int p1, v4, p1

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int v5, v3, p2

    invoke-virtual {v0, p1, v3, v4, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 326
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->firstLine:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    iget p2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 331
    :cond_8
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->adjustToFitInBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 334
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    iget p3, v0, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p4

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 335
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->desiredLocation:Landroid/graphics/Rect;

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

    .line 670
    new-instance v0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$3;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$3;-><init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Landroid/content/Context;ILjava/util/List;)V

    return-object v0
.end method

.method protected newImageAndTextDropDownButtonView(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 606
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->image_and_text_dropdown_selection_button:I

    const/4 v2, 0x0

    .line 607
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 608
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->setTextColor(Landroid/widget/TextView;)V

    .line 609
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getOverflowMenuText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->speak_selection_button_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 612
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->dropdown_selection_button_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 613
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getDrawable(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 614
    invoke-virtual {p1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x0

    .line 615
    invoke-virtual {p2, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method protected newImageOnlyDropDownButtonView(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 595
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->image_only_dropdown_selection_button:I

    const/4 v2, 0x0

    .line 596
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 598
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getDrawable(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 599
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getOverflowMenuText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->speak_selection_button_title:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method protected newSpinnerTopLevelButtonView(Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 573
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->spinner_top_level_selection_button:I

    const/4 v2, 0x0

    .line 574
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 576
    sget v0, Lcom/amazon/kindle/krl/R$id;->image_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 577
    sget v1, Lcom/amazon/kindle/krl/R$id;->text_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 579
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getDrawable(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/krl/R$string;->speak_selection_button_title:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/krl/R$bool;->top_level_selection_buttons_have_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 587
    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->setTextColor(Landroid/widget/TextView;)V

    :cond_1
    return-object p2
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 67
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 69
    sget v0, Lcom/amazon/kindle/krl/R$id;->selection_buttons_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    .line 70
    sget v0, Lcom/amazon/kindle/krl/R$id;->selection_buttons_marker_top:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerTop:Landroid/widget/ImageView;

    .line 71
    sget v0, Lcom/amazon/kindle/krl/R$id;->selection_buttons_marker_bottom:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->markerBottom:Landroid/widget/ImageView;

    .line 73
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->disableMarker()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 179
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->updateButtons()V

    .line 180
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 181
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    const/high16 v1, -0x80000000

    .line 184
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 185
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 183
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 192
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 196
    invoke-virtual {p0, v2, p1, p2}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setValuesForLayout(III)V

    .line 198
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSelectionStateChanged()V
    .locals 2

    .line 153
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->onSelectionStateChanged()V

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    .line 366
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 367
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 370
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$string;->speak_selection:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    .line 372
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->getFirstVisibleButtonView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x40

    const/4 v0, 0x0

    .line 374
    invoke-static {p1, p2, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public setCustomButtons(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->storedCustomSelectionButtons:Ljava/util/List;

    goto :goto_0

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setCustomButtons(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/kcp/reader/ui/ObjectSelectionView;)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Lcom/amazon/kcp/reader/ui/ObjectSelectionView;)V

    .line 143
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->storedCustomSelectionButtons:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 145
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->setCustomButtons(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 146
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->storedCustomSelectionButtons:Ljava/util/List;

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->updateButtons()V

    return-void
.end method

.method protected setUpButton(IILcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton$CustomSelectionButtonState;)V
    .locals 0

    .line 346
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected setUpImageButtons(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;",
            ">;)V"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 93
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->topLevelButtonHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;

    .line 96
    invoke-interface {v2}, Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;->getCategory()Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;

    move-result-object v3

    if-nez v3, :cond_0

    .line 98
    new-instance v3, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;

    invoke-direct {v3, p0, v2}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SimpleButtonHandler;-><init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)V

    .line 99
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->topLevelButtonHandlers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;

    if-nez v4, :cond_2

    .line 104
    new-instance v4, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;

    invoke-direct {v4, p0, v3}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;-><init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;)V

    .line 105
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-interface {v3}, Lcom/amazon/kcp/reader/ui/buttons/ISelectionButtonCategory;->getNameResourceId()I

    move-result v3

    sget v5, Lcom/amazon/kindle/krl/R$string;->overflow_button_desc:I

    if-ne v3, v5, :cond_1

    move-object v1, v4

    goto :goto_1

    .line 109
    :cond_1
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->topLevelButtonHandlers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_2
    :goto_1
    invoke-virtual {v4, v2}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$SpinnerButtonHandler;->add(Lcom/amazon/kcp/reader/ui/buttons/ICustomSelectionButton;)V

    goto :goto_0

    .line 117
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->getFirstVisibleButtonView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 119
    new-instance v0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$1;-><init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_4
    if-eqz v1, :cond_5

    .line 136
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->topLevelButtonHandlers:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->getButtonView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method protected setUpOverflowButton()V
    .locals 1

    .line 351
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected setupPopupButtonBackgrounds()V
    .locals 0

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

    .line 638
    new-instance p3, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p3, v0, v2, v1}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    .line 639
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 641
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$dimen;->selection_button_dropdown_horz_offset:I

    .line 642
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 641
    invoke-virtual {p3, v3}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->setSecondaryHorizontalOffset(I)V

    .line 643
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    invoke-virtual {p3, v1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 644
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$dimen;->selection_button_dropdown_vertical_offset:I

    .line 645
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 644
    invoke-virtual {p3, v3}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->setSecondaryVerticalOffset(I)V

    .line 646
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->newAdapter(Ljava/util/List;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 647
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    invoke-virtual {p3, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 648
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    new-instance p3, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$2;

    invoke-direct {p3, p0, p2}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$2;-><init>(Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;Ljava/util/List;)V

    invoke-virtual {p1, p3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 656
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->show()V

    .line 657
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->popupWindow:Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 658
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 660
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result p2

    .line 661
    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 662
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/16 p2, 0x800

    .line 665
    invoke-static {p0, p2, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    const p2, 0x8000

    .line 666
    invoke-static {p1, p2, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void
.end method

.method protected updateButtons()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons;->selectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons;->topLevelButtonHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;

    .line 173
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/FoldingSelectionButtons$TopLevelButtonHandler;->updateButtonView()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
