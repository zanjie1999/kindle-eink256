.class public Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "EinkNetworkErrorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment$NetworkErrorListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 54
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$style;->Theme_E3OS_EInk_Material_Light_Dialog_Alert_NonScrollable:I

    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_error_header:I

    .line 55
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_eink_error_body:I

    .line 57
    invoke-virtual {p0, v1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_error_retry:I

    new-instance v2, Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment$2;-><init>(Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment;)V

    .line 58
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_error_exit:I

    new-instance v2, Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment$1;-><init>(Lcom/amazon/bookwizard/ui/fragment/EinkNetworkErrorDialogFragment;)V

    .line 64
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
