.class public Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;
.super Landroid/widget/ListPopupWindow;
.source "ActionListPopupWindow.java"


# instance fields
.field private adapter:Landroid/widget/ListAdapter;

.field private final context:Landroid/content/Context;

.field private secondaryHorizontalOffset:I

.field private secondaryVerticalOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;)Z
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->isVisibleToUser(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->adjustSizeAndPosition()V

    return-void
.end method

.method static synthetic access$201(Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;)V
    .locals 0

    .line 21
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method

.method private adjustSizeAndPosition()V
    .locals 4

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->measureContentWidth()I

    move-result v1

    .line 97
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 98
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    move v1, v2

    .line 102
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 103
    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->secondaryHorizontalOffset:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method

.method private static isVisibleToUser(Landroid/view/View;)Z
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private measureContentWidth()I
    .locals 10

    const/4 v0, 0x0

    .line 112
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 113
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 115
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move-object v7, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 117
    iget-object v8, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_0

    move-object v7, v4

    move v6, v8

    .line 122
    :cond_0
    iget-object v8, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-interface {v8, v0, v7, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 123
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_1

    .line 124
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    :cond_1
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 129
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method


# virtual methods
.method public performItemClick(I)Z
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->performItemClick(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->adapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setSecondaryHorizontalOffset(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->secondaryHorizontalOffset:I

    return-void
.end method

.method public setSecondaryVerticalOffset(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->secondaryVerticalOffset:I

    return-void
.end method

.method public show()V
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;->adjustSizeAndPosition()V

    .line 59
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 60
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 65
    new-instance v2, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$1;-><init>(Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;Landroid/view/View;)V

    .line 76
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 77
    new-instance v1, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$2;

    invoke-direct {v1, p0, v0, v2}, Lcom/amazon/kcp/reader/ui/ActionListPopupWindow$2;-><init>(Lcom/amazon/kcp/reader/ui/ActionListPopupWindow;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v1}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_1
    return-void
.end method
