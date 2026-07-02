.class public Lcom/amazon/kedu/ftue/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0x8
    name = "KeduFTUEPlugin"
.end annotation


# static fields
.field private static assetBroadcastReceiver:Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;

.field private static assetBroadcastReceiverMutex:Ljava/lang/Object;

.field private static assetManager:Lcom/amazon/kedu/ftue/assets/IAssetManager;

.field private static assetManagerMutex:Ljava/lang/Object;

.field private static ftueManager:Lcom/amazon/kedu/ftue/IFTUEManager;

.field private static managerMutex:Ljava/lang/Object;

.field private static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private static sdkMutex:Ljava/lang/Object;


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kedu/ftue/Plugin;->sdkMutex:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kedu/ftue/Plugin;->managerMutex:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kedu/ftue/Plugin;->assetManagerMutex:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kedu/ftue/Plugin;->assetBroadcastReceiverMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kedu/ftue/Plugin;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static getAssetBroadcastReceiver()Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;
    .locals 2

    .line 200
    sget-object v0, Lcom/amazon/kedu/ftue/Plugin;->assetBroadcastReceiverMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Lcom/amazon/kedu/ftue/Plugin;->assetBroadcastReceiver:Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getAssetManager()Lcom/amazon/kedu/ftue/assets/IAssetManager;
    .locals 2

    .line 228
    sget-object v0, Lcom/amazon/kedu/ftue/Plugin;->assetManagerMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    sget-object v1, Lcom/amazon/kedu/ftue/Plugin;->assetManager:Lcom/amazon/kedu/ftue/assets/IAssetManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 231
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getFTUEManager()Lcom/amazon/kedu/ftue/IFTUEManager;
    .locals 2

    .line 277
    sget-object v0, Lcom/amazon/kedu/ftue/Plugin;->managerMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    sget-object v1, Lcom/amazon/kedu/ftue/Plugin;->ftueManager:Lcom/amazon/kedu/ftue/IFTUEManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 2

    .line 265
    sget-object v0, Lcom/amazon/kedu/ftue/Plugin;->sdkMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    sget-object v1, Lcom/amazon/kedu/ftue/Plugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 268
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static setAssetBroadcastReceiver(Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;)V
    .locals 1

    .line 208
    sget-object v0, Lcom/amazon/kedu/ftue/Plugin;->assetBroadcastReceiverMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    sput-object p0, Lcom/amazon/kedu/ftue/Plugin;->assetBroadcastReceiver:Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;

    .line 211
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static setAssetManager(Lcom/amazon/kedu/ftue/assets/IAssetManager;)V
    .locals 1

    .line 216
    sget-object v0, Lcom/amazon/kedu/ftue/Plugin;->assetManagerMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    sput-object p0, Lcom/amazon/kedu/ftue/Plugin;->assetManager:Lcom/amazon/kedu/ftue/assets/IAssetManager;

    .line 219
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static setFTUEManager(Lcom/amazon/kedu/ftue/IFTUEManager;)V
    .locals 1

    .line 244
    sget-object v0, Lcom/amazon/kedu/ftue/Plugin;->managerMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    sput-object p0, Lcom/amazon/kedu/ftue/Plugin;->ftueManager:Lcom/amazon/kedu/ftue/IFTUEManager;

    .line 247
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static setSdk(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 236
    sget-object v0, Lcom/amazon/kedu/ftue/Plugin;->sdkMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    sput-object p0, Lcom/amazon/kedu/ftue/Plugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 239
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method getAssetManagerInstance()Lcom/amazon/kedu/ftue/assets/IAssetManager;
    .locals 1

    .line 195
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getAssetManager()Lcom/amazon/kedu/ftue/assets/IAssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 49
    invoke-static {p1}, Lcom/amazon/kedu/ftue/Plugin;->setSdk(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 50
    new-instance v0, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    invoke-direct {v0}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;-><init>()V

    .line 51
    invoke-static {v0}, Lcom/amazon/kedu/ftue/Plugin;->setAssetManager(Lcom/amazon/kedu/ftue/assets/IAssetManager;)V

    .line 52
    new-instance v0, Lcom/amazon/kedu/ftue/FTUEManager;

    new-instance v1, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;

    sget-object v2, Lcom/amazon/kedu/ftue/Plugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kedu/ftue/data/SQLiteDataManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/amazon/kedu/ftue/FTUEManager;-><init>(Lcom/amazon/kedu/ftue/data/SQLiteDataManager;)V

    .line 53
    invoke-static {v0}, Lcom/amazon/kedu/ftue/Plugin;->setFTUEManager(Lcom/amazon/kedu/ftue/IFTUEManager;)V

    .line 55
    sget-object v1, Lcom/amazon/kedu/ftue/Plugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 56
    sget-object v1, Lcom/amazon/kedu/ftue/Plugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 58
    iget-object v0, p0, Lcom/amazon/kedu/ftue/Plugin;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kedu/ftue/Plugin$1;

    invoke-direct {v1, p0}, Lcom/amazon/kedu/ftue/Plugin$1;-><init>(Lcom/amazon/kedu/ftue/Plugin;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 67
    sget-object v0, Lcom/amazon/kedu/ftue/Plugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kedu/ftue/Plugin;->initializeEducationFeaturesTutorial(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    :cond_1
    return-void
.end method

.method initializeAssetManager()V
    .locals 4

    .line 173
    sget-object v0, Lcom/amazon/kedu/ftue/Plugin;->assetManagerMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/Plugin;->getAssetManagerInstance()Lcom/amazon/kedu/ftue/assets/IAssetManager;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;

    .line 176
    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetManager;->initialize()V

    .line 178
    new-instance v1, Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;

    invoke-direct {v1}, Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;-><init>()V

    .line 179
    invoke-static {v1}, Lcom/amazon/kedu/ftue/Plugin;->setAssetBroadcastReceiver(Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;)V

    .line 181
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 182
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    sget-object v2, Lcom/amazon/kedu/ftue/Plugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getAssetBroadcastReceiver()Lcom/amazon/kedu/ftue/assets/DownloadedAssetBroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method initializeEducationFeaturesTutorial(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 16

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    .line 99
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    invoke-interface/range {p1 .. p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 103
    sget v2, Lcom/amazon/kedu/ftue/R$string;->kf_ga_screen_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    sget v3, Lcom/amazon/kedu/ftue/R$string;->kf_ga_screen_1_no_xray:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    sget v4, Lcom/amazon/kedu/ftue/R$string;->kf_ga_screen_reflowable_1_no_xray:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 106
    sget v5, Lcom/amazon/kedu/ftue/R$string;->kf_ga_screen_reflowable_1_xray:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    sget v6, Lcom/amazon/kedu/ftue/R$string;->kf_ga_screen_reflowable_mobi_1_no_xray:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 109
    new-instance v7, Lcom/amazon/kedu/ftue/events/TutorialPage;

    sget v8, Lcom/amazon/kedu/ftue/R$string;->kf_tutorial_page_1_default:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9, v2}, Lcom/amazon/kedu/ftue/events/TutorialPage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v2, Lcom/amazon/kedu/ftue/events/TutorialPage;

    sget v8, Lcom/amazon/kedu/ftue/R$string;->kf_tutorial_page_1_noxray:I

    invoke-direct {v2, v8, v9, v3}, Lcom/amazon/kedu/ftue/events/TutorialPage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v3, Lcom/amazon/kedu/ftue/events/TutorialPage;

    sget v8, Lcom/amazon/kedu/ftue/R$string;->kf_tutorial_page_1_noxray:I

    invoke-direct {v3, v8, v9, v4}, Lcom/amazon/kedu/ftue/events/TutorialPage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v4, Lcom/amazon/kedu/ftue/events/TutorialPage;

    sget v8, Lcom/amazon/kedu/ftue/R$string;->kf_tutorial_page_1_default:I

    invoke-direct {v4, v8, v9, v5}, Lcom/amazon/kedu/ftue/events/TutorialPage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v5, Lcom/amazon/kedu/ftue/events/TutorialPage;

    sget v8, Lcom/amazon/kedu/ftue/R$string;->kf_tutorial_page_1_noxray:I

    invoke-direct {v5, v8, v9, v6}, Lcom/amazon/kedu/ftue/events/TutorialPage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    sget v6, Lcom/amazon/kedu/ftue/R$integer;->kf_education_tutorial_check_min_days_since:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 118
    sget v6, Lcom/amazon/kedu/ftue/R$integer;->kf_education_tutorial_priority:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 119
    sget v8, Lcom/amazon/kedu/ftue/R$string;->kf_education_tutorial_metric_key_default:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 120
    sget v8, Lcom/amazon/kedu/ftue/R$string;->kf_education_tutorial_metric_key_noxray:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 121
    sget v8, Lcom/amazon/kedu/ftue/R$string;->kf_education_tutorial_key_default:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 122
    sget v8, Lcom/amazon/kedu/ftue/R$string;->kf_education_tutorial_key_noxray:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 123
    sget v8, Lcom/amazon/kedu/ftue/R$string;->kf_education_sequence_key_default:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 124
    sget v8, Lcom/amazon/kedu/ftue/R$string;->kf_education_sequence_key_noxray:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    new-instance v12, Lcom/amazon/kedu/ftue/EducationFeaturesTutorialWithXray;

    new-instance v10, Lcom/amazon/kedu/ftue/Plugin$2;

    invoke-direct {v10, v0, v4, v7}, Lcom/amazon/kedu/ftue/Plugin$2;-><init>(Lcom/amazon/kedu/ftue/Plugin;Lcom/amazon/kedu/ftue/events/TutorialPage;Lcom/amazon/kedu/ftue/events/TutorialPage;)V

    move-object v8, v12

    move-object v4, v10

    move v10, v6

    move-object v7, v12

    move-object v12, v1

    move-object/from16 p1, v13

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/amazon/kedu/ftue/EducationFeaturesTutorialWithXray;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/ftue/events/TutorialPageProvider;)V

    .line 142
    new-instance v4, Lcom/amazon/kedu/ftue/EducationFeaturesTutorialWithoutXray;

    new-instance v13, Lcom/amazon/kedu/ftue/Plugin$3;

    invoke-direct {v13, v0, v5, v3, v2}, Lcom/amazon/kedu/ftue/Plugin$3;-><init>(Lcom/amazon/kedu/ftue/Plugin;Lcom/amazon/kedu/ftue/events/TutorialPage;Lcom/amazon/kedu/ftue/events/TutorialPage;Lcom/amazon/kedu/ftue/events/TutorialPage;)V

    move-object v8, v4

    move-object v9, v15

    move-object v11, v14

    move-object/from16 v12, p1

    invoke-direct/range {v8 .. v13}, Lcom/amazon/kedu/ftue/EducationFeaturesTutorialWithoutXray;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/kedu/ftue/events/TutorialPageProvider;)V

    .line 162
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getFTUEManager()Lcom/amazon/kedu/ftue/IFTUEManager;

    move-result-object v2

    move-object/from16 v3, p1

    .line 163
    invoke-interface {v2, v3, v7}, Lcom/amazon/kedu/ftue/IFTUEManager;->registerTutorialForSequence(Ljava/lang/String;Lcom/amazon/kedu/ftue/events/Tutorial;)V

    .line 164
    invoke-interface {v2, v1, v4}, Lcom/amazon/kedu/ftue/IFTUEManager;->registerTutorialForSequence(Ljava/lang/String;Lcom/amazon/kedu/ftue/events/Tutorial;)V

    :cond_0
    return-void
.end method
