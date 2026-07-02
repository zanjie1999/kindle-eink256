.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "BaseModalBottomSheetFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $args:Landroid/os/Bundle;

.field final synthetic $modalSheet$inlined:Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;

.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->$args:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;

    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->$modalSheet$inlined:Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->access$getSheetContainer$p(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/FrameLayout;

    .line 71
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    const-string v3, "BottomSheetBehavior.from(bottomSheet)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->setBehavior(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 72
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->$args:Landroid/os/Bundle;

    const-string v3, "SKIP_COLLAPSED_STATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setSkipCollapsed(Z)V

    .line 73
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->$args:Landroid/os/Bundle;

    const-string v2, "SHOW_FULL_HEIGHT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const-string v2, "dialog"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->$args:Landroid/os/Bundle;

    const-string v3, "MODAL_PEEK_HEIGHT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 79
    iget-object v3, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseModalBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    .line 80
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
