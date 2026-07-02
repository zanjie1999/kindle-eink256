.class public Lcom/amazon/kcp/library/ActivityDataDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "ActivityDataDialogFragment.java"


# instance fields
.field private userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/ActivityDataDialogFragment;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/kcp/library/ActivityDataDialogFragment;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ActivityDataDialogFragment;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 34
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 36
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->activity_data_fragment_message:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/library/ActivityDataDialogFragment;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->disable:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->enable:I

    :goto_0
    new-instance v1, Lcom/amazon/kcp/library/ActivityDataDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/ActivityDataDialogFragment$1;-><init>(Lcom/amazon/kcp/library/ActivityDataDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 46
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
