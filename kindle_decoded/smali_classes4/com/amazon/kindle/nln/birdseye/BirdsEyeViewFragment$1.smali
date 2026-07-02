.class Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$1;
.super Ljava/lang/Object;
.source "BirdsEyeViewFragment.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment$1;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 83
    invoke-static {p2}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getDisplayCutoutSafeInsets(Landroid/view/WindowInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 82
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-object p2
.end method
