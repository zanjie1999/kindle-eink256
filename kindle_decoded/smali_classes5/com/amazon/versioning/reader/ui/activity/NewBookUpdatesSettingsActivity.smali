.class public Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;
.super Lcom/amazon/versioning/reader/ui/activity/ThemeActivity;
.source "NewBookUpdatesSettingsActivity.java"

# interfaces
.implements Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;
.implements Lcom/amazon/versioning/interfaces/DialogActionListener;
.implements Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;


# static fields
.field private static final ADAPTER_LOADING:Ljava/lang/String; = "AUP_AdapterLoading"

.field private static final AUTO_SETTING_DIALOG_TAG:Ljava/lang/String; = "AUP_AutoSettingDialogTage"

.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final NETWORK_DIALOG_TAG:Ljava/lang/String; = "AUP_NetworkDialogTag"

.field private static final SERVER_ERROR_TAG:Ljava/lang/String; = "AUP_ServerError"

.field private static final UPDATE_ITEM_STATE:Ljava/lang/String; = "AUP_UpdateItemState"

.field private static final UPDATE_SETTING_STATE:Ljava/lang/String; = "updateSettingState"

.field private static final VALUE_CHANGE_COMFIRMATION_DIALOG_TAG:Ljava/lang/String; = "valueChangeConfirmation"

.field private static final WHISPERSYNC_DIALOG_TAG:Ljava/lang/String; = "AUP_WhispersyncDialogTag"


# instance fields
.field private adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

.field private autoUpdateSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

.field private previousSettingValue:Z

.field private updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

.field private updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/ThemeActivity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->previousSettingValue:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->handleToggleAttempt()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->loadMoreUpdateItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updateAutoUpdateSettingValue()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->showSettingAndRecycleView()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->createServerErrorDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)Lcom/amazon/versioning/provider/UpdatedContentItemProvider;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    return-object p0
.end method

.method private checkInternetAndWhispersync()Z
    .locals 1

    .line 470
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->checkInternetConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->isWhispersyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkInternetConnection()Z
    .locals 1

    .line 456
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/versioning/util/InternetConnectionUtil;->hasInternetConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->createNoInternetBlockingDialog()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private createConfirmationDialog()V
    .locals 3

    .line 405
    new-instance v0, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog;

    invoke-direct {v0}, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingValueChangeConfirmationDialog;-><init>()V

    const/4 v1, 0x0

    .line 406
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 408
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "valueChangeConfirmation"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string v0, "KCUPA_SETTINGS"

    const-string v1, "SETTINGS.DISABLE_ABU_DIALOG_INVOKED"

    .line 410
    invoke-direct {p0, v0, v1}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createNoInternetBlockingDialog()V
    .locals 3

    .line 478
    new-instance v0, Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog;

    invoke-direct {v0}, Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog;-><init>()V

    const/4 v1, 0x0

    .line 479
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 481
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AUP_NetworkDialogTag"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private createServerErrorDialog()V
    .locals 3

    .line 418
    new-instance v0, Lcom/amazon/versioning/reader/ui/dialogs/ServerErrorOnFetchDialogFragment;

    invoke-direct {v0}, Lcom/amazon/versioning/reader/ui/dialogs/ServerErrorOnFetchDialogFragment;-><init>()V

    const/4 v1, 0x0

    .line 419
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 421
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AUP_ServerError"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private getNavigationIcon()I
    .locals 2

    .line 356
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    sget-object v0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$8;->$SwitchMap$com$amazon$kindle$krx$theme$Theme:[I

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

    .line 364
    sget v0, Lcom/amazon/versioning/R$drawable;->content_update_back_arrow:I

    return v0

    .line 362
    :cond_0
    sget v0, Lcom/amazon/versioning/R$drawable;->ic_back_dark:I

    return v0

    .line 360
    :cond_1
    sget v0, Lcom/amazon/versioning/R$drawable;->ic_back_light:I

    return v0

    .line 367
    :cond_2
    sget v0, Lcom/amazon/versioning/R$drawable;->content_update_back_arrow:I

    return v0
.end method

.method private getToolbarTitle()Ljava/lang/String;
    .locals 1

    .line 372
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    sget v0, Lcom/amazon/versioning/R$string;->book_update_settings_category_ruby:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 375
    :cond_0
    sget v0, Lcom/amazon/versioning/R$string;->book_update_settings_category:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleToggleAttempt()V
    .locals 3

    .line 383
    sget v0, Lcom/amazon/versioning/R$id;->cb_updates_enabled:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    const-string v1, "KCUPA_SETTINGS"

    if-eqz v0, :cond_0

    .line 384
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->createConfirmationDialog()V

    const-string v0, "SETTINGS.TURN_OFF_ABU_ATTEMPT"

    .line 386
    invoke-direct {p0, v1, v0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_0
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->isWhispersyncEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->createWhisperSyncOffDialog()V

    goto :goto_0

    .line 391
    :cond_1
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->checkInternetConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    if-eqz v0, :cond_2

    .line 392
    sget-object v2, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->TURN_ON:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    invoke-virtual {v0, p0, v2}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->setSetting(Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;)V

    .line 393
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->showTransparentProgressView()V

    const-string v0, "SETTINGS.TURN_ON_ABU_ATTEMPT"

    .line 395
    invoke-direct {p0, v1, v0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initializeProviderValues()V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->initializeValues()V

    :cond_0
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

.method private isWhispersyncEnabled()Z
    .locals 1

    .line 593
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getReaderSettings()Lcom/amazon/kindle/krx/reader/IReaderSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderSettings;->isAnnotationsSyncEnabled()Z

    move-result v0

    return v0
.end method

.method private loadMoreUpdateItem()V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->fetchNextThreshold(Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;)V

    return-void
.end method

.method private removeActivityListener()V
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeActivityListener: removing the current listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    invoke-virtual {v0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->removeOnCompletelistener()V

    .line 328
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    invoke-virtual {v0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->clearListenerAndValues()V

    return-void
.end method

.method private reportAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 452
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->performReadingStreamsAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMET(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 442
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 431
    invoke-direct {p0, p1, p2}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->reportPMET(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->reportAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setUpToolbar()V
    .locals 3

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setting up toolbar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KCUPA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget v0, Lcom/amazon/versioning/R$id;->update_toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->getNavigationIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    .line 337
    :cond_0
    sget v1, Lcom/amazon/versioning/R$id;->update_toolbar_title:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 339
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->getToolbarTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 343
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 346
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v1, 0x1

    .line 349
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 350
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_2
    return-void
.end method

.method private showSettingAndRecycleView()V
    .locals 5

    .line 507
    sget v0, Lcom/amazon/versioning/R$id;->progress_view_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 508
    sget v1, Lcom/amazon/versioning/R$id;->recycle_view_frame:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 509
    sget v2, Lcom/amazon/versioning/R$id;->abu_setting_background:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 510
    sget v3, Lcom/amazon/versioning/R$id;->cb_updates_enabled:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Checkable;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 512
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_0
    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 516
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    if-eqz v3, :cond_6

    .line 519
    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 521
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 522
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 526
    :cond_2
    sget v1, Lcom/amazon/versioning/R$id;->kcu_listview:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 527
    sget v3, Lcom/amazon/versioning/R$id;->empty_view:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 528
    iget-object v4, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {v4}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->getCombinedList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    .line 530
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    if-eqz v3, :cond_7

    .line 533
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 537
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    if-eqz v3, :cond_7

    .line 540
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    .line 545
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private showTransparentProgressView()V
    .locals 4

    .line 488
    sget v0, Lcom/amazon/versioning/R$id;->progress_view_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 489
    sget v1, Lcom/amazon/versioning/R$id;->recycle_view_frame:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 490
    sget v2, Lcom/amazon/versioning/R$id;->abu_setting_background:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 492
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    const/16 v0, 0x8

    .line 495
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    if-eqz v2, :cond_2

    const v0, 0x3e4ccccd    # 0.2f

    .line 498
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private updateAutoUpdateSettingValue()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->autoUpdateSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/versioning/data/UpdateSetting;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 565
    :goto_0
    sget v1, Lcom/amazon/versioning/R$id;->cb_updates_enabled:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 567
    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createWhisperSyncOffDialog()V
    .locals 3

    .line 601
    new-instance v0, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;

    invoke-direct {v0}, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;-><init>()V

    const/4 v1, 0x0

    .line 602
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 604
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AUP_WhispersyncDialogTag"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 233
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->removeActivityListener()V

    .line 235
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onCreate() for NewBookUpdatesSettingsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    invoke-super {p0, p1}, Lcom/amazon/versioning/reader/ui/activity/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/versioning/reader/ui/helper/KCUHelper;->shouldLockOrientation(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 76
    :cond_0
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    .line 81
    sget-object v2, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$8;->$SwitchMap$com$amazon$kindle$krx$theme$Theme:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_1

    .line 87
    sget v0, Lcom/amazon/versioning/R$style;->KCUTheme_RubyDark:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0

    .line 83
    :cond_1
    sget v0, Lcom/amazon/versioning/R$style;->KCUTheme_RubyLight:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 91
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/versioning/reader/ui/helper/KCUHelper;->isAndroidTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    sget v0, Lcom/amazon/versioning/R$layout;->activity_new_book_updates_tablet_ruby:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    goto :goto_1

    .line 94
    :cond_2
    sget v0, Lcom/amazon/versioning/R$layout;->activity_new_book_updates_ruby:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    goto :goto_1

    .line 98
    :cond_3
    sget v0, Lcom/amazon/versioning/R$style;->KCUTheme:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 100
    sget v0, Lcom/amazon/versioning/R$layout;->activity_new_book_updates:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 103
    :goto_1
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->setUpToolbar()V

    .line 106
    sget v0, Lcom/amazon/versioning/R$id;->abu_setting_background:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 108
    new-instance v1, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$1;-><init>(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_4
    sget v0, Lcom/amazon/versioning/R$id;->automatic_update_recycler_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_5

    .line 119
    new-instance v1, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemDividerDecorator;

    invoke-direct {v1, p0}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemDividerDecorator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 120
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 123
    new-instance v1, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$2;-><init>(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 144
    :cond_5
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdateManager()Lcom/amazon/versioning/manager/UpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/versioning/manager/UpdateManager;->getUpdatedContentItemProvider()Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    .line 145
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdateManager()Lcom/amazon/versioning/manager/UpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/versioning/manager/UpdateManager;->getUpdateSettingProvider()Lcom/amazon/versioning/provider/UpdateSettingProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    .line 147
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->isInitialized(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 150
    new-instance v1, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    const-string v2, "AUP_UpdateItemState"

    .line 151
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    const-string/jumbo v1, "updateSettingState"

    .line 153
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/amazon/versioning/data/UpdateSetting;

    iput-object v1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->autoUpdateSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    const-string v1, "AUP_AdapterLoading"

    .line 155
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 156
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {p1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->showLoadingMore()V

    :cond_6
    if-eqz v0, :cond_7

    .line 159
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 164
    :cond_7
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    invoke-virtual {p1}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->isProviderBusy()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    invoke-virtual {p1}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->isProviderBusy()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    .line 168
    :cond_8
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updateAutoUpdateSettingValue()V

    .line 170
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->showSettingAndRecycleView()V

    goto :goto_3

    .line 165
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->showTransparentProgressView()V

    goto :goto_3

    .line 174
    :cond_a
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->initializeProviderValues()V

    .line 177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v1, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-direct {v1, p0, p1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    if-eqz v0, :cond_b

    .line 180
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 182
    :cond_b
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->showTransparentProgressView()V

    const-string p1, "KCUPA_SETTINGS"

    const-string v0, "SETTINGS.LAUNCHED"

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public onDialogRequestForActivityTermination(Ljava/lang/String;)V
    .locals 2

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "AUP_ServerError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "AUP_NetworkDialogTag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "valueChangeConfirmation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "AUP_AutoSettingDialogTage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "AUP_WhispersyncDialogTag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 313
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x30c80e78 -> :sswitch_4
        0x38101071 -> :sswitch_3
        0x49d41f56 -> :sswitch_2
        0x61a17207 -> :sswitch_1
        0x67fbbf42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDialogRequestForUIChange(Ljava/lang/String;)V
    .locals 2

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "AUP_ServerError"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "AUP_NetworkDialogTag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "valueChangeConfirmation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "AUP_WhispersyncDialogTag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 294
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 287
    :cond_2
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->checkInternetConnection()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    if-eqz p1, :cond_3

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Confirmed to set book updates to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->TURN_OFF:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    sget-object v0, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->TURN_OFF:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    invoke-virtual {p1, p0, v0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->setSetting(Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;)V

    .line 290
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->showTransparentProgressView()V

    :cond_3
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x30c80e78 -> :sswitch_3
        0x49d41f56 -> :sswitch_2
        0x61a17207 -> :sswitch_1
        0x67fbbf42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onNextBatchFailed()V
    .locals 1

    .line 650
    new-instance v0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$7;

    invoke-direct {v0, p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$7;-><init>(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNextBatchFetched(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;",
            ">;)V"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->appendToList(Ljava/util/List;)V

    .line 616
    new-instance v0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$6;-><init>(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->removeActivityListener()V

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 224
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 191
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/versioning/util/InternetConnectionUtil;->hasInternetConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->isWhispersyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    sget-object v1, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->TURN_OFF:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    invoke-virtual {v0, p0, v1}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->setSetting(Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->checkInternetAndWhispersync()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->updateSettingProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0, p0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->fetchSetting(Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 205
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 207
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->autoUpdateSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    const-string/jumbo v1, "updateSettingState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 208
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {v0}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->isLoadingMoreVisible()Z

    move-result v0

    const-string v1, "AUP_AdapterLoading"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {v0}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->getCombinedList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "AUP_UpdateItemState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onUpdateSettingActive(Lcom/amazon/versioning/data/UpdateSetting;)V
    .locals 1

    .line 243
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->autoUpdateSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Lcom/amazon/versioning/data/UpdateSetting;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 245
    :goto_0
    new-instance v0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$3;-><init>(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    .line 254
    iget-boolean v0, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->previousSettingValue:Z

    if-eq p1, v0, :cond_1

    .line 255
    new-instance v0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$4;-><init>(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    :cond_1
    iput-boolean p1, p0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;->previousSettingValue:Z

    return-void
.end method

.method public onUpdateSettingFailed()V
    .locals 1

    .line 271
    new-instance v0, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity$5;-><init>(Lcom/amazon/versioning/reader/ui/activity/NewBookUpdatesSettingsActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
