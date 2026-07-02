.class public Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "BaseAlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected callback:Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;

.field protected message:Ljava/lang/String;

.field protected title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3

    .line 79
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 80
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getSharedInstance()Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 82
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    sget-object v0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Title is null or empty, using default title"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_title_error:I

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->title:Ljava/lang/String;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->message:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    :cond_2
    sget-object v0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Message is null or empty, using default message"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_message_generic_error:I

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->message:Ljava/lang/String;

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->title:Ljava/lang/String;

    const-string v0, "message"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->message:Ljava/lang/String;

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->callback:Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;->onAlertDialogFragmentDetached(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public prepareDialog(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;)V
    .locals 2

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    .line 45
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "message"

    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->callback:Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;

    return-void
.end method
