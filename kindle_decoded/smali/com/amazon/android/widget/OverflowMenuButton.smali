.class Lcom/amazon/android/widget/OverflowMenuButton;
.super Lcom/amazon/android/widget/AbstractActionWidgetItem;
.source "OverflowMenuButton.java"


# instance fields
.field private actionView:Lcom/amazon/android/widget/CommandActionView;

.field private buttonColor:I


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/CommandActionView;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/android/widget/AbstractActionWidgetItem;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/android/widget/OverflowMenuButton;->actionView:Lcom/amazon/android/widget/CommandActionView;

    .line 23
    iput p2, p0, Lcom/amazon/android/widget/OverflowMenuButton;->buttonColor:I

    return-void
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "OverflowButton"

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 47
    sget v0, Lcom/amazon/kindle/wl/R$id;->overflow_menu_button:I

    return v0
.end method

.method public getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 53
    sget v0, Lcom/amazon/kindle/wl/R$drawable;->ic_overflow_button:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/amazon/android/widget/OverflowMenuButton;->buttonColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-object p1
.end method

.method public getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/wl/R$string;->overflow_button_content_description:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/content/Context;)Z
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/amazon/android/widget/OverflowMenuButton;->actionView:Lcom/amazon/android/widget/CommandActionView;

    invoke-virtual {p1}, Lcom/amazon/android/widget/CommandActionView;->showPopupWindow()V

    const/4 p1, 0x1

    return p1
.end method
