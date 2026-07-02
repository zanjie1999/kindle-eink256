.class public Lcom/amazon/versioning/reader/ui/dialogs/ServerErrorOnFetchDialogFragment;
.super Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;
.source "ServerErrorOnFetchDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonRubyDialogBuilder()Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 3

    .line 35
    iget v0, p0, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->themeID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 36
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->themeID:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :goto_0
    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 41
    sget v1, Lcom/amazon/versioning/R$string;->server_error_excep_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 42
    sget v1, Lcom/amazon/versioning/R$string;->server_error_excep_body:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 43
    sget v1, Lcom/amazon/versioning/R$string;->book_update_settings_ok_button:I

    new-instance v2, Lcom/amazon/versioning/reader/ui/dialogs/ServerErrorOnFetchDialogFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/versioning/reader/ui/dialogs/ServerErrorOnFetchDialogFragment$1;-><init>(Lcom/amazon/versioning/reader/ui/dialogs/ServerErrorOnFetchDialogFragment;Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object v0
.end method

.method public getRubyDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/dialogs/ServerErrorOnFetchDialogFragment;->getNonRubyDialogBuilder()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
