.class public Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AaDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private dialog:Landroid/app/AlertDialog;

.field private dialogView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 24
    const-class v0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(AaDialogFragment::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 30
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->dialogView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 34
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    return-object p1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Activity cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final setDialogView(Landroid/view/View;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->dialogView:Landroid/view/View;

    return-void
.end method
