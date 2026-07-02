.class public final Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "SuccessBottomSheet.kt"


# instance fields
.field private final buttonListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onDismiss:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismiss"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget v0, Lcom/amazon/kindle/ffs/R$style;->BottomSheetDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;->buttonListener:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;->onDismiss:Lkotlin/jvm/functions/Function1;

    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/ffs/R$layout;->success_bottom_sheet:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;->view:Landroid/view/View;

    const-string p2, "view"

    .line 25
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getButtonListener$p(Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;->buttonListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getOnDismiss$p(Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;->onDismiss:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .line 29
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onStart()V

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;->view:Landroid/view/View;

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "behavior"

    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    return-void

    .line 32
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 39
    sget v0, Lcom/amazon/kindle/ffs/R$id;->success_bottom_sheet_positive_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet$setContentView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet$setContentView$1;-><init>(Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    new-instance p1, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet$setContentView$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet$setContentView$2;-><init>(Lcom/amazon/kindle/ffs/view/success/SuccessBottomSheet;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
