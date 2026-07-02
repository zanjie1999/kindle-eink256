.class Lcom/amazon/android/widget/CommandBarPopupWindow;
.super Landroid/widget/PopupWindow;
.source "CommandBarPopupWindow.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    if-lez p3, :cond_0

    .line 26
    sget v1, Lcom/amazon/kindle/wl/R$layout;->command_bar_popup_container_restricted_height:I

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/widget/MaxHeightScrollView;

    .line 27
    invoke-virtual {p1, p3}, Lcom/amazon/android/widget/MaxHeightScrollView;->setMaxHeight(I)V

    goto :goto_0

    .line 29
    :cond_0
    sget p3, Lcom/amazon/kindle/wl/R$layout;->command_bar_popup_container:I

    invoke-virtual {p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    .line 32
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p3, -0x2

    .line 33
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 34
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 40
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method dismissPopup()V
    .locals 1

    .line 60
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method showPopup(Landroid/view/View;II)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method
