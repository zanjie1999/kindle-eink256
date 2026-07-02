.class Lcom/amazon/kindle/tutorial/BrochureActivity$5;
.super Ljava/lang/Object;
.source "BrochureActivity.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/BrochureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/BrochureActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$5;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 144
    invoke-static {p2}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getDisplayCutoutSafeInsets(Landroid/view/WindowInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p1

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$5;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    sget v1, Lcom/amazon/kindle/krl/R$id;->brochure_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 147
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v3

    .line 148
    invoke-virtual {p1}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result p1

    .line 147
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-object p2
.end method
