.class public Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "NetworkErrorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$NetworkErrorListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    instance-of v0, p1, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$NetworkErrorListener;

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " needs to implement NetworkErrorListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 65
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEInkBuild()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 66
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getStoreHostname()Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/amazon/bookwizard/R$style;->Theme_E3OS_EInk_Material_Light_Dialog_Alert_NonScrollable:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/amazon/bookwizard/R$string;->bookwizard_error_header:I

    .line 68
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/amazon/bookwizard/R$string;->bookwizard_eink_error_body:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    .line 70
    invoke-virtual {p0, v2, v3}, Landroid/app/DialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_error_retry:I

    new-instance v2, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$2;-><init>(Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment;)V

    .line 71
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_error_exit:I

    new-instance v2, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$1;-><init>(Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment;)V

    .line 77
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_error_header:I

    .line 88
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_error_body:I

    .line 89
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_error_retry:I

    new-instance v2, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$4;

    invoke-direct {v2, p0}, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$4;-><init>(Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment;)V

    .line 90
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_error_exit:I

    new-instance v2, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$3;-><init>(Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment;)V

    .line 96
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 104
    new-instance v0, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment$5;-><init>(Lcom/amazon/bookwizard/ui/fragment/NetworkErrorDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method
