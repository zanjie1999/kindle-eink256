.class public Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;
.super Landroid/app/DialogFragment;
.source "SpinnerDialogFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MESSAGE_KEY:Ljava/lang/String; = "message"


# instance fields
.field private message:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;
    .locals 3

    .line 41
    new-instance v0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;-><init>()V

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    .line 46
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->message:Ljava/lang/String;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 61
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 62
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getSharedInstance()Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getDialogTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    sget-object v0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Title is null or empty, using default title"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->spinner_dialog_fragment_message:I

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->message:Ljava/lang/String;

    .line 69
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 70
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 72
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 90
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method
