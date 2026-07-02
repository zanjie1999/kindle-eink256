.class public final Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "ProfileBottomSheetDialogFragment.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget p3, Lcom/amazon/kcp/profiles/R$layout;->profile_bottom_sheet_dialog_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 23
    sget p2, Lcom/amazon/kcp/profiles/R$id;->family_sharing_settings:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 24
    new-instance p3, Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment$onCreateView$1;-><init>(Lcom/amazon/kcp/profiles/ui/button/ProfileBottomSheetDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
