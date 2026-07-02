.class public Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;
.super Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;
.source "EnableWhisperSyncDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonRubyDialogBuilder()Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 3

    .line 30
    iget v0, p0, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->themeID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 31
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 33
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->themeID:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 36
    sget v1, Lcom/amazon/versioning/R$string;->whispersync_dialog_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 37
    sget v1, Lcom/amazon/versioning/R$string;->book_update_settings_whispersync_disabled:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 38
    sget v1, Lcom/amazon/versioning/R$string;->book_update_enable_disable_button:I

    new-instance v2, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment$1;-><init>(Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 49
    sget v1, Lcom/amazon/versioning/R$string;->book_update_settings_cancel_button:I

    new-instance v2, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment$2;-><init>(Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object v0
.end method

.method public getRubyDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;->getNonRubyDialogBuilder()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
