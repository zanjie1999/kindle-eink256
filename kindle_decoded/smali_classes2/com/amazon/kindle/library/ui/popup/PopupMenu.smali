.class public abstract Lcom/amazon/kindle/library/ui/popup/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# instance fields
.field private animationStyle:I

.field protected context:Landroid/content/Context;

.field private popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->animationStyle:I

    .line 40
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->context:Landroid/content/Context;

    .line 41
    iput p3, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->animationStyle:I

    .line 42
    invoke-direct {p0, p2}, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->addRootViewPropertiesAndInflate(Landroid/view/View;)V

    return-void
.end method

.method private addRootViewPropertiesAndInflate(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 48
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 49
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 48
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$bool;->use_popup_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget v0, Lcom/amazon/kindle/librarymodule/R$drawable;->black_border_1dp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->inflatePopupWindow(Landroid/view/View;)V

    return-void
.end method

.method private createContentViewAccessibilityDelegate(I)Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .line 113
    new-instance v0, Lcom/amazon/kindle/library/ui/popup/PopupMenu$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/library/ui/popup/PopupMenu$1;-><init>(Lcom/amazon/kindle/library/ui/popup/PopupMenu;I)V

    return-object v0
.end method

.method private getXOffsetforOnScreenPopup(Landroid/view/View;)I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->popup_right_shift:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p1, v0

    mul-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private inflatePopupWindow(Landroid/view/View;)V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 103
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v1, p1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    .line 105
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 106
    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->animationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->initPopupMenu(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private popupFitsOnScreen(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 86
    aget v0, v0, v1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v0, p1

    .line 88
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected abstract initPopupMenu(Landroid/view/View;)V
.end method

.method public setContentDescription(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->createContentViewAccessibilityDelegate(I)Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->popup_left_shift:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 65
    iget-object v1, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->tablet_popup_top_shift:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->popupFitsOnScreen(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->getXOffsetforOnScreenPopup(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/library/ui/popup/PopupMenu;->popupWindow:Landroid/widget/PopupWindow;

    neg-int v1, v1

    invoke-virtual {v2, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    :cond_1
    return-void
.end method
