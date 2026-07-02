.class final Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$3;
.super Ljava/lang/Object;
.source "RecapsActivity.kt"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/activity/RecapsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $chromeLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field final synthetic $chromeLeftPadding:I

.field final synthetic $chromeRightPadding:I


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout$LayoutParams;II)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$3;->$chromeLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput p2, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$3;->$chromeLeftPadding:I

    iput p3, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$3;->$chromeRightPadding:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$3;->$chromeLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    const-string v1, "windowInsets"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const-string v0, "view"

    .line 147
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    const-string v1, "view.rootWindowInsets"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 148
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    .line 149
    :cond_1
    iget v1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$3;->$chromeLeftPadding:I

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 150
    iget v3, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$3;->$chromeRightPadding:I

    add-int/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 149
    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
