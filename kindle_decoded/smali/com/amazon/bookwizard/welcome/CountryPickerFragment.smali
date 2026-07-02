.class public Lcom/amazon/bookwizard/welcome/CountryPickerFragment;
.super Landroid/app/DialogFragment;
.source "CountryPickerFragment.java"


# static fields
.field private static final KEY_COUNTRIES:Ljava/lang/String; = "countries"

.field private static final KEY_INDEX:Ljava/lang/String; = "index"


# instance fields
.field private activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance([Ljava/lang/String;I)Lcom/amazon/bookwizard/welcome/CountryPickerFragment;
    .locals 2

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "countries"

    .line 41
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "index"

    .line 42
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    new-instance p0, Lcom/amazon/bookwizard/welcome/CountryPickerFragment;

    invoke-direct {p0}, Lcom/amazon/bookwizard/welcome/CountryPickerFragment;-><init>()V

    .line 45
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 56
    check-cast p1, Lcom/amazon/bookwizard/ui/BookWizardActivity;

    iput-object p1, p0, Lcom/amazon/bookwizard/welcome/CountryPickerFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 64
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "countries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/amazon/bookwizard/R$string;->bookwizard_country_label:I

    .line 68
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/bookwizard/welcome/CountryPickerFragment;->activity:Lcom/amazon/bookwizard/ui/BookWizardActivity;

    .line 69
    invoke-virtual {v2}, Lcom/amazon/bookwizard/ui/BookWizardActivity;->getWelcomeScreenController()Lcom/amazon/bookwizard/welcome/WelcomeScreenController;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
