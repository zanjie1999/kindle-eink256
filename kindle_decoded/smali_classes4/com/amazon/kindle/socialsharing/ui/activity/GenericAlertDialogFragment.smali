.class public Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;
.super Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;
.source "GenericAlertDialogFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
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

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;)Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;
    .locals 1

    .line 35
    new-instance v0, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;-><init>()V

    .line 36
    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->prepareDialog(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment;->getDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 45
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_ok_text:I

    new-instance v1, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment$1;-><init>(Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
