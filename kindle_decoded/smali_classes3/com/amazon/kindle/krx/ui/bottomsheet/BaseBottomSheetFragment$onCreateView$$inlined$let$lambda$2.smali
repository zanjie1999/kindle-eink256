.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "BaseBottomSheetFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $peekHeight:I

.field final synthetic $sheetDialog$inlined:Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;

.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;


# direct methods
.method constructor <init>(ILcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;)V
    .locals 0

    iput p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$2;->$peekHeight:I

    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$2;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$2;->$sheetDialog$inlined:Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$2;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->access$getSheetContainer$p(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 146
    iget v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$2;->$peekHeight:I

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$2;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$2;->$peekHeight:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$2;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$onCreateView$$inlined$let$lambda$2;->this$0:Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;

    invoke-static {v1}, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->access$getSheetContainer$p(Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    :goto_0
    return-void
.end method
