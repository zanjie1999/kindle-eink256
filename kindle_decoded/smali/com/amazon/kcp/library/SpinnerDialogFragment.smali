.class public Lcom/amazon/kcp/library/SpinnerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SpinnerDialogFragment.java"


# static fields
.field private static final CANCELLABLE_KEY:Ljava/lang/String; = "SpinnerDialogFragment_Cancellable"

.field private static final MESSAGE_KEY:Ljava/lang/String; = "SpinnerDialogFragment_Message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IZ)Lcom/amazon/kcp/library/SpinnerDialogFragment;
    .locals 2

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SpinnerDialogFragment_Message"

    .line 28
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "SpinnerDialogFragment_Cancellable"

    .line 29
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    new-instance p0, Lcom/amazon/kcp/library/SpinnerDialogFragment;

    invoke-direct {p0}, Lcom/amazon/kcp/library/SpinnerDialogFragment;-><init>()V

    .line 32
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "SpinnerDialogFragment_Cancellable"

    .line 42
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 43
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "SpinnerDialogFragment_Message"

    .line 53
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-static {v0}, Lcom/amazon/kindle/utils/KindleDialogUtils;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 57
    invoke-virtual {v2, p1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 65
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/amazon/kindle/krl/R$style;->Theme_Dialog_SpinnerOnly:I

    invoke-direct {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 67
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$layout;->loading_spinner_large:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    :cond_1
    return-object v2
.end method
