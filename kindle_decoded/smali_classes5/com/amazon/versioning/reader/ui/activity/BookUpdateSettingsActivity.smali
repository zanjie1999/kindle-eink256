.class public Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;
.super Lcom/amazon/versioning/reader/ui/activity/SettingsActivity;
.source "BookUpdateSettingsActivity.java"

# interfaces
.implements Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;
.implements Lcom/amazon/versioning/interfaces/DialogActionListener;


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final NETWORK_DIALOG_TAG:Ljava/lang/String; = "AUP_NetworkDialogTag"

.field private static final SERVER_ERROR_TAG:Ljava/lang/String; = "AUP_ServerError"

.field private static final UPDATE_SETTING_STATE:Ljava/lang/String; = "updateSettingState"

.field private static final VALUE_CHANGE_COMFIRMATION_DIALOG_TAG:Ljava/lang/String; = "valueChangeConfirmation"


# instance fields
.field private autoUpdateSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

.field private updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/SettingsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->handleToggleAttempt()V

    return-void
.end method

.method private checkInternetConnection()Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/versioning/util/InternetConnectionUtil;->hasInternetConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->createNoInternetBlockingDialog()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private createConfirmationDialog()V
    .locals 3

    .line 249
    new-instance v0, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog;

    invoke-direct {v0}, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog;-><init>()V

    const/4 v1, 0x0

    .line 250
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "valueChangeConfirmation"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string v0, "KCUPA_SETTINGS"

    const-string v1, "SETTINGS.DISABLE_ABU_DIALOG_INVOKED"

    .line 254
    invoke-virtual {p0, v0, v1}, Lcom/amazon/versioning/reader/ui/activity/SettingsActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createNoInternetBlockingDialog()V
    .locals 3

    .line 108
    new-instance v0, Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog;

    invoke-direct {v0}, Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog;-><init>()V

    const/4 v1, 0x0

    .line 109
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AUP_NetworkDialogTag"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string v0, "KCUPA_UPDATE_PANEL"

    const-string v1, "UPDATE_PANEL.NO_NETWORK_CONNECTION_INVOKED"

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/amazon/versioning/reader/ui/activity/SettingsActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleToggleAttempt()V
    .locals 3

    .line 229
    sget v0, Lcom/amazon/versioning/R$id;->cb_updates_enabled:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 230
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    const-string v1, "KCUPA_SETTINGS"

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->createConfirmationDialog()V

    const-string v0, "SETTINGS.TURN_OFF_ABU_ATTEMPT"

    .line 232
    invoke-virtual {p0, v1, v0}, Lcom/amazon/versioning/reader/ui/activity/SettingsActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->checkInternetConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    if-eqz v0, :cond_1

    .line 236
    sget-object v2, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->TURN_ON:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    invoke-virtual {v0, p0, v2}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->setSetting(Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;)V

    .line 237
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->showTransparentProgressView()V

    const-string v0, "SETTINGS.TURN_ON_ABU_ATTEMPT"

    .line 239
    invoke-virtual {p0, v1, v0}, Lcom/amazon/versioning/reader/ui/activity/SettingsActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isInitialized(Landroid/os/Bundle;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private removeActivityListener()V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeActivityListener: removing the current listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    invoke-virtual {v0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->removeOnCompletelistener()V

    return-void
.end method

.method private showTransparentProgressView()V
    .locals 3

    .line 281
    sget v0, Lcom/amazon/versioning/R$id;->setting_progress_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 282
    sget v1, Lcom/amazon/versioning/R$id;->settings_view_frame:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 283
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v0, 0x3e4ccccd    # 0.2f

    .line 284
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method protected createServerErrorDialog()V
    .locals 3

    .line 262
    new-instance v0, Lcom/amazon/versioning/reader/ui/dialogs/ServerErrorOnFetchDialogFragment;

    invoke-direct {v0}, Lcom/amazon/versioning/reader/ui/dialogs/ServerErrorOnFetchDialogFragment;-><init>()V

    const/4 v1, 0x0

    .line 263
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 265
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AUP_ServerError"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected getNavigationIcon()I
    .locals 2

    .line 152
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    sget-object v0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity$4;->$SwitchMap$com$amazon$kindle$krx$theme$Theme:[I

    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 160
    sget v0, Lcom/amazon/versioning/R$drawable;->content_update_back_arrow:I

    return v0

    .line 158
    :cond_0
    sget v0, Lcom/amazon/versioning/R$drawable;->ic_back_dark:I

    return v0

    .line 156
    :cond_1
    sget v0, Lcom/amazon/versioning/R$drawable;->ic_back_light:I

    return v0

    .line 163
    :cond_2
    sget v0, Lcom/amazon/versioning/R$drawable;->content_update_back_arrow:I

    return v0
.end method

.method protected getToolbarTitle()Ljava/lang/String;
    .locals 1

    .line 139
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    sget v0, Lcom/amazon/versioning/R$string;->book_update_settings_category_ruby:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_0
    sget v0, Lcom/amazon/versioning/R$string;->book_update_settings_category:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->removeActivityListener()V

    .line 192
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/amazon/versioning/reader/ui/activity/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lcom/amazon/versioning/R$id;->cb_updates_enabled:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 49
    new-instance v1, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity$1;-><init>(Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget v0, Lcom/amazon/versioning/R$id;->abu_setting_background:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 58
    new-instance v1, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity$2;-><init>(Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdateManager()Lcom/amazon/versioning/manager/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/versioning/manager/UpdateManager;->getUpdateSettingProvider()Lcom/amazon/versioning/provider/UpdateSettingProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    .line 67
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    .line 69
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->isInitialized(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "updateSettingState"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/amazon/versioning/data/UpdateSetting;

    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->autoUpdateSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    .line 73
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    invoke-virtual {p1}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->isProviderBusy()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->showTransparentProgressView()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->updateAutoUpdateSettingValue()V

    .line 79
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->showSettingView()V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->showOpaqueProgressView()V

    const-string p1, "KCUPA_SETTINGS"

    const-string v0, "SETTINGS.LAUNCHED"

    .line 85
    invoke-virtual {p0, p1, v0}, Lcom/amazon/versioning/reader/ui/activity/SettingsActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDialogRequestForActivityTermination(Ljava/lang/String;)V
    .locals 2

    .line 325
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x49d41f56    # 1737706.8f

    if-eq v0, v1, :cond_2

    const v1, 0x61a17207

    if-eq v0, v1, :cond_1

    const v1, 0x67fbbf42

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "AUP_ServerError"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const-string v0, "AUP_NetworkDialogTag"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "valueChangeConfirmation"

    goto :goto_0

    .line 330
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDialogRequestForUIChange(Ljava/lang/String;)V
    .locals 2

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x49d41f56    # 1737706.8f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "valueChangeConfirmation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 312
    :cond_2
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->checkInternetConnection()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    if-eqz p1, :cond_3

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Confirmed to set book updates to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->TURN_OFF:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    sget-object v0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->TURN_OFF:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    invoke-virtual {p1, p0, v0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->setSetting(Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;)V

    .line 315
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->showTransparentProgressView()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 180
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->removeActivityListener()V

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 92
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->checkInternetConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, p0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->fetchSetting(Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->autoUpdateSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    const-string/jumbo v1, "updateSettingState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onUpdateSettingActive(Lcom/amazon/versioning/data/UpdateSetting;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->autoUpdateSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    .line 208
    new-instance p1, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity$3;

    invoke-direct {p1, p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity$3;-><init>(Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateSettingFailed()V
    .locals 0

    .line 222
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->createServerErrorDialog()V

    return-void
.end method

.method public showOpaqueProgressView()V
    .locals 2

    .line 291
    sget v0, Lcom/amazon/versioning/R$id;->setting_progress_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public showSettingView()V
    .locals 3

    .line 300
    sget v0, Lcom/amazon/versioning/R$id;->setting_progress_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 301
    sget v1, Lcom/amazon/versioning/R$id;->settings_view_frame:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 302
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v2, 0x8

    .line 303
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 304
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public updateAutoUpdateSettingValue()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->autoUpdateSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/versioning/data/UpdateSetting;->isEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 273
    :goto_0
    sget v1, Lcom/amazon/versioning/R$id;->cb_updates_enabled:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 274
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method
