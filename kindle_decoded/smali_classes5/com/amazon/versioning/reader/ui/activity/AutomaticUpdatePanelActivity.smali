.class public Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;
.super Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;
.source "AutomaticUpdatePanelActivity.java"

# interfaces
.implements Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;
.implements Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;
.implements Lcom/amazon/versioning/interfaces/DialogActionListener;


# static fields
.field private static final ADAPTER_LOADING:Ljava/lang/String; = "AUP_AdapterLoading"

.field private static final AUTO_SETTING_DIALOG_TAG:Ljava/lang/String; = "AUP_AutoSettingDialogTage"

.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final LEARN_MORE_TAG:Ljava/lang/String; = "UA_LearnMoreState"

.field private static final NETWORK_DIALOG_TAG:Ljava/lang/String; = "AUP_NetworkDialogTag"

.field private static final PREVIOUS_SETTING_VALUE:Ljava/lang/String; = "AUP_PreviousAutomaticSettingValue"

.field private static final SERVER_ERROR_TAG:Ljava/lang/String; = "AUP_ServerErrorTag"

.field private static final UPDATE_ITEM_STATE:Ljava/lang/String; = "AUP_UpdateItemState"

.field private static final WHISPERSYNC_DIALOG_TAG:Ljava/lang/String; = "AUP_WhispersyncDialogTag"


# instance fields
.field private adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

.field private previousSettingValue:Z

.field private settingContentItemProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

.field private updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->previousSettingValue:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->createLearnMorePopup()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)Lcom/amazon/versioning/provider/UpdatedContentItemProvider;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    return-object p0
.end method

.method private checkInternetandWhispersync()Z
    .locals 2

    .line 395
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/versioning/util/InternetConnectionUtil;->hasInternetConnection(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->createNoInternetBlockingDialog()V

    return v1

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->hasWhispersyncEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->createWhisperSyncOffDialog()V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private createLearnMorePopup()V
    .locals 3

    .line 468
    new-instance v0, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;

    invoke-direct {v0}, Lcom/amazon/versioning/reader/ui/dialogs/LearnMoreUpdatePanelDialog;-><init>()V

    const/4 v1, 0x0

    .line 469
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 471
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "UA_LearnMoreState"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string v0, "KCUPA_UPDATE_PANEL"

    const-string v1, "UPDATE_PANEL.LEARN_MORE_INVOKED"

    .line 473
    invoke-virtual {p0, v0, v1}, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initializeProviderValues()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    if-eqz v0, :cond_0

    .line 159
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

.method private removeActivityListener()V
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeActivityListener: removing the current listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->settingContentItemProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    invoke-virtual {v0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->removeOnCompletelistener()V

    .line 254
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    invoke-virtual {v0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->clearListenerAndValues()V

    return-void
.end method

.method private startUpdateSettingActivity()V
    .locals 2

    .line 504
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 505
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public createAutoSettingDisabledDialog()V
    .locals 3

    .line 435
    new-instance v0, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment;

    invoke-direct {v0}, Lcom/amazon/versioning/reader/ui/dialogs/AutoSettingDisabledDialogFragment;-><init>()V

    const/4 v1, 0x0

    .line 436
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 438
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AUP_AutoSettingDialogTage"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string v0, "KCUPA_UPDATE_PANEL"

    const-string v1, "UPDATE_PANEL.ABU_DIALOG_INVOKED"

    .line 440
    invoke-virtual {p0, v0, v1}, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createNoInternetBlockingDialog()V
    .locals 3

    .line 422
    new-instance v0, Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog;

    invoke-direct {v0}, Lcom/amazon/versioning/reader/ui/dialogs/NetworkConnectivityDialog;-><init>()V

    const/4 v1, 0x0

    .line 423
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AUP_NetworkDialogTag"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string v0, "KCUPA_UPDATE_PANEL"

    const-string v1, "UPDATE_PANEL.NO_NETWORK_CONNECTION_INVOKED"

    .line 427
    invoke-virtual {p0, v0, v1}, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected createServerErrorDialog()V
    .locals 3

    .line 411
    new-instance v0, Lcom/amazon/versioning/reader/ui/dialogs/ServerErrorOnFetchDialogFragment;

    invoke-direct {v0}, Lcom/amazon/versioning/reader/ui/dialogs/ServerErrorOnFetchDialogFragment;-><init>()V

    const/4 v1, 0x0

    .line 412
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 414
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AUP_ServerErrorTag"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected createWhisperSyncOffDialog()V
    .locals 3

    .line 457
    new-instance v0, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;

    invoke-direct {v0}, Lcom/amazon/versioning/reader/ui/dialogs/EnableWhisperSyncDialogFragment;-><init>()V

    const/4 v1, 0x0

    .line 458
    invoke-virtual {v0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 460
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AUP_WhispersyncDialogTag"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected getNavigationIcon()I
    .locals 2

    .line 202
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    sget-object v0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$8;->$SwitchMap$com$amazon$kindle$krx$theme$Theme:[I

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

    .line 210
    sget v0, Lcom/amazon/versioning/R$drawable;->content_update_back_arrow:I

    return v0

    .line 208
    :cond_0
    sget v0, Lcom/amazon/versioning/R$drawable;->ic_back_dark:I

    return v0

    .line 206
    :cond_1
    sget v0, Lcom/amazon/versioning/R$drawable;->ic_back_light:I

    return v0

    .line 213
    :cond_2
    sget v0, Lcom/amazon/versioning/R$drawable;->content_update_back_arrow:I

    return v0
.end method

.method protected getToolbarTitle()Ljava/lang/String;
    .locals 1

    .line 189
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget v0, Lcom/amazon/versioning/R$string;->automatic_update_toolbar_text_ruby:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    sget v0, Lcom/amazon/versioning/R$string;->automatic_update_toolbar_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasWhispersyncEnabled()Z
    .locals 1

    .line 449
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getReaderSettings()Lcom/amazon/kindle/krx/reader/IReaderSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderSettings;->isAnnotationsSyncEnabled()Z

    move-result v0

    return v0
.end method

.method public loadMoreUpdateItem()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->fetchNextThreshold(Lcom/amazon/versioning/interfaces/UpdateProviderOnCompleteListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->removeActivityListener()V

    .line 246
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 69
    invoke-super {p0, p1}, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget v0, Lcom/amazon/versioning/R$id;->automatic_update_recycler_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 72
    new-instance v1, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemDividerDecorator;

    invoke-direct {v1, p0}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemDividerDecorator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 73
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    new-instance v1, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$1;-><init>(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 96
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdateManager()Lcom/amazon/versioning/manager/UpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/versioning/manager/UpdateManager;->getUpdatedContentItemProvider()Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    .line 98
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdateManager()Lcom/amazon/versioning/manager/UpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/versioning/manager/UpdateManager;->getUpdateSettingProvider()Lcom/amazon/versioning/provider/UpdateSettingProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->settingContentItemProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    .line 100
    invoke-direct {p0, p1}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->isInitialized(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    new-instance v1, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    const-string v2, "AUP_UpdateItemState"

    .line 104
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    const-string v1, "AUP_AdapterLoading"

    .line 106
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {p1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->showLoadingMore()V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 113
    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->settingContentItemProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    invoke-virtual {p1}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->isProviderBusy()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->updatedContentItemProvider:Lcom/amazon/versioning/provider/UpdatedContentItemProvider;

    invoke-virtual {p1}, Lcom/amazon/versioning/provider/UpdatedContentItemProvider;->isProviderBusy()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->showRecycleView()V

    goto :goto_1

    .line 114
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->showProgressView()V

    goto :goto_1

    .line 120
    :cond_3
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->initializeProviderValues()V

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v1, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-direct {v1, p0, p1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    .line 125
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 126
    invoke-virtual {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->showProgressView()V

    const-string p1, "KCUPA_UPDATE_PANEL"

    const-string v0, "UPDATE_PANEL.LAUNCHED"

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->reportPMETAndAction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onDialogRequestForActivityTermination(Ljava/lang/String;)V
    .locals 1

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "AUP_NetworkDialogTag"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :sswitch_1
    const-string v0, "AUP_AutoSettingDialogTage"

    goto :goto_0

    :sswitch_2
    const-string v0, "AUP_WhispersyncDialogTag"

    goto :goto_0

    :sswitch_3
    const-string v0, "AUP_ServerErrorTag"

    goto :goto_0

    :sswitch_4
    const-string v0, "UA_LearnMoreState"

    goto :goto_0

    .line 520
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f04b575 -> :sswitch_4
        -0x56e8d708 -> :sswitch_3
        0x30c80e78 -> :sswitch_2
        0x38101071 -> :sswitch_1
        0x61a17207 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDialogRequestForUIChange(Ljava/lang/String;)V
    .locals 3

    .line 481
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "AUP_NetworkDialogTag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "AUP_AutoSettingDialogTage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "AUP_WhispersyncDialogTag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "AUP_ServerErrorTag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "UA_LearnMoreState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 493
    :cond_1
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->startUpdateSettingActivity()V

    goto :goto_2

    .line 486
    :cond_2
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->launchLibrarySettings()V

    goto :goto_2

    .line 483
    :cond_3
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->startUpdateSettingActivity()V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5f04b575 -> :sswitch_4
        -0x56e8d708 -> :sswitch_3
        0x30c80e78 -> :sswitch_2
        0x38101071 -> :sswitch_1
        0x61a17207 -> :sswitch_0
    .end sparse-switch
.end method

.method public onNextBatchFailed()V
    .locals 1

    .line 333
    new-instance v0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$4;-><init>(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)V

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

    .line 296
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->appendToList(Ljava/util/List;)V

    .line 299
    new-instance v0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$3;-><init>(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 222
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 233
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->removeActivityListener()V

    .line 228
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 137
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 140
    invoke-direct {p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->checkInternetandWhispersync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->settingContentItemProvider:Lcom/amazon/versioning/provider/UpdateSettingProvider;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->fetchSetting(Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;)V

    .line 145
    :cond_0
    sget v0, Lcom/amazon/versioning/R$id;->learn_more_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 146
    new-instance v1, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$2;-><init>(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 176
    invoke-super {p0, p1}, Lcom/amazon/versioning/reader/ui/activity/UpdateActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {v0}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->isLoadingMoreVisible()Z

    move-result v0

    const-string v1, "AUP_AdapterLoading"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    iget-boolean v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->previousSettingValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "AUP_PreviousAutomaticSettingValue"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 180
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {v0}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->getCombinedList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "AUP_UpdateItemState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onUpdateSettingActive(Lcom/amazon/versioning/data/UpdateSetting;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p1}, Lcom/amazon/versioning/data/UpdateSetting;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 355
    iget-boolean v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->previousSettingValue:Z

    if-eq p1, v0, :cond_1

    .line 356
    new-instance v0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$5;

    invoke-direct {v0, p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$5;-><init>(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 362
    iget-boolean v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->previousSettingValue:Z

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 367
    :cond_2
    new-instance v0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$6;

    invoke-direct {v0, p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$6;-><init>(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    :goto_1
    iput-boolean p1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->previousSettingValue:Z

    return-void
.end method

.method public onUpdateSettingFailed()V
    .locals 1

    .line 383
    new-instance v0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$7;

    invoke-direct {v0, p0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$7;-><init>(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showProgressView()V
    .locals 3

    .line 284
    sget v0, Lcom/amazon/versioning/R$id;->recycle_view_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 285
    sget v1, Lcom/amazon/versioning/R$id;->progress_view_frame:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 286
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v1, 0x8

    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public showRecycleView()V
    .locals 5

    .line 262
    sget v0, Lcom/amazon/versioning/R$id;->recycle_view_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 263
    sget v1, Lcom/amazon/versioning/R$id;->progress_view_frame:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 264
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v0, 0x8

    .line 265
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 268
    sget v1, Lcom/amazon/versioning/R$id;->kcu_listview:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 269
    sget v3, Lcom/amazon/versioning/R$id;->empty_view:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 270
    iget-object v4, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->adapter:Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;

    invoke-virtual {v4}, Lcom/amazon/versioning/reader/ui/recycler/UpdatedContentItemAdapter;->getCombinedList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
