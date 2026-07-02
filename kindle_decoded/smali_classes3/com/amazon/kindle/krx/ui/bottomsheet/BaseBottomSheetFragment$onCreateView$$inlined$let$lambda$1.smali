.class final Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "BaseBottomSheetFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $args:Landroid/os/Bundle;

.field final synthetic $sheetDialog$inlined:Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;

.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->$args:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->$sheetDialog$inlined:Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->$args:Landroid/os/Bundle;

    const-string v0, "HAS_DIM_BG"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->disableDimBackgroundWithAnimation()V

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void
.end method
