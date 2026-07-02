.class public Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog;
.super Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;
.source "NetworkConnectivityDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonRubyDialogBuilder()Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 3

    .line 31
    iget v0, p0, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->themeID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 32
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/amazon/versioning/reader/ui/dialogs/KindleContentDialogFragment;->themeID:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 37
    :goto_0
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    sget-object v1, Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog$2;->$SwitchMap$com$amazon$kindle$krx$theme$Theme:[I

    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 44
    sget v1, Lcom/amazon/versioning/R$drawable;->ic_dialog_alert_dark:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 41
    :cond_1
    sget v1, Lcom/amazon/versioning/R$drawable;->ic_dialog_alert_light:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 47
    :cond_2
    :goto_1
    sget v1, Lcom/amazon/versioning/R$string;->error_title_connection:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 48
    sget v1, Lcom/amazon/versioning/R$string;->kcv_error_message_connection:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 49
    sget v1, Lcom/amazon/versioning/R$string;->book_update_settings_cancel_button:I

    new-instance v2, Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog$1;-><init>(Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog;Landroidx/appcompat/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object v0
.end method

.method public getRubyDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog;->getNonRubyDialogBuilder()Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
