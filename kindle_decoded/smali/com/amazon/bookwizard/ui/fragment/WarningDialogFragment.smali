.class public Lcom/amazon/bookwizard/ui/fragment/WarningDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "WarningDialogFragment.java"


# instance fields
.field private activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 32
    check-cast p1, Lcom/amazon/bookwizard/ui/BookWizardActivity;

    iput-object p1, p0, Lcom/amazon/bookwizard/ui/fragment/WarningDialogFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 40
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/WarningDialogFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/WarningDialogFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    .line 41
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_warning_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/WarningDialogFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    .line 42
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_warning_body:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_warning_positive:I

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/WarningDialogFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    .line 43
    invoke-virtual {v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getRatingsController()Lcom/amazon/bookwizard/ratings/RatingsController;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/amazon/bookwizard/R$string;->bookwizard_warning_negative:I

    iget-object v1, p0, Lcom/amazon/bookwizard/ui/fragment/WarningDialogFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    .line 44
    invoke-virtual {v1}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getRatingsController()Lcom/amazon/bookwizard/ratings/RatingsController;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 53
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/amazon/bookwizard/ui/fragment/WarningDialogFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    return-void
.end method
