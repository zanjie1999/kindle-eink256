.class public Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProgressDialogFragment.java"


# static fields
.field private static final KEY_INDETERMINATE:Ljava/lang/String; = "is_indeterminate"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "str_message"

.field private static final KEY_TITLE:Ljava/lang/String; = "str_title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;
    .locals 3

    .line 41
    new-instance v0, Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/amazon/bookwizard/ui/fragment/ProgressDialogFragment;-><init>()V

    .line 42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "str_title"

    .line 43
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "str_message"

    .line 44
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "is_indeterminate"

    .line 45
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 55
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 58
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/amazon/bookwizard/R$style;->bookwizard_dialog_fragment:I

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "str_title"

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "str_message"

    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string v1, "is_indeterminate"

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    return-object v0
.end method
