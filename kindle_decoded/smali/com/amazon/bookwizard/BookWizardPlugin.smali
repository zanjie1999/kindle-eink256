.class public Lcom/amazon/bookwizard/BookWizardPlugin;
.super Ljava/lang/Object;
.source "BookWizardPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    minApi = 0x10
    name = "Book Wizard"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
.end annotation


# static fields
.field private static final NUM_EXECUTOR_THREADS:I = 0x4

.field private static final NUM_REQUEST_QUEUE_THREADS:I = 0x1

.field private static dataProvider:Lcom/amazon/bookwizard/data/DataProvider;

.field private static downloadManager:Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

.field private static executor:Ljava/util/concurrent/ExecutorService;

.field private static fallback:Z

.field private static isInitialized:Z

.field private static krxMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static launchInfo:Lcom/amazon/bookwizard/service/LaunchInfo;

.field private static requestQueue:Lcom/android/volley/RequestQueue;

.field private static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private static showing:Z

.field private static storeManager:Lcom/amazon/bookwizard/store/StoreManager;

.field private static viewManager:Lcom/amazon/bookwizard/BookViewManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataProvider()Lcom/amazon/bookwizard/data/DataProvider;
    .locals 1

    .line 147
    sget-object v0, Lcom/amazon/bookwizard/BookWizardPlugin;->dataProvider:Lcom/amazon/bookwizard/data/DataProvider;

    return-object v0
.end method

.method public static declared-synchronized getDownloadManager()Lcom/amazon/bookwizard/ku/PayoffDownloadManager;
    .locals 4

    const-class v0, Lcom/amazon/bookwizard/BookWizardPlugin;

    monitor-enter v0

    .line 288
    :try_start_0
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->downloadManager:Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    if-nez v1, :cond_0

    .line 289
    new-instance v1, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/bookwizard/BookWizardPlugin;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getDataProvider()Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;-><init>(Lcom/android/volley/RequestQueue;Lcom/amazon/bookwizard/data/DataProvider;)V

    sput-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->downloadManager:Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    .line 291
    :cond_0
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->downloadManager:Lcom/amazon/bookwizard/ku/PayoffDownloadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getKrxMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 2

    const-class v0, Lcom/amazon/bookwizard/BookWizardPlugin;

    monitor-enter v0

    .line 254
    :try_start_0
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->krxMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v1, :cond_0

    .line 255
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    sput-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->krxMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 257
    :cond_0
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->krxMessageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLaunchInfo()Lcom/amazon/bookwizard/service/LaunchInfo;
    .locals 1

    .line 165
    sget-object v0, Lcom/amazon/bookwizard/BookWizardPlugin;->launchInfo:Lcom/amazon/bookwizard/service/LaunchInfo;

    return-object v0
.end method

.method public static declared-synchronized getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 4

    const-class v0, Lcom/amazon/bookwizard/BookWizardPlugin;

    monitor-enter v0

    .line 239
    :try_start_0
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->requestQueue:Lcom/android/volley/RequestQueue;

    if-nez v1, :cond_0

    .line 240
    new-instance v1, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-static {p0}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    .line 241
    new-instance v2, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v3, Lcom/amazon/bookwizard/http/AuthenticationAwareHurlStack;

    invoke-direct {v3, p0}, Lcom/amazon/bookwizard/http/AuthenticationAwareHurlStack;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 242
    new-instance p0, Lcom/android/volley/RequestQueue;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    sput-object p0, Lcom/amazon/bookwizard/BookWizardPlugin;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 243
    invoke-virtual {p0}, Lcom/android/volley/RequestQueue;->start()V

    .line 245
    :cond_0
    sget-object p0, Lcom/amazon/bookwizard/BookWizardPlugin;->requestQueue:Lcom/android/volley/RequestQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getRunningState()Lcom/amazon/bookwizard/service/State;
    .locals 1

    .line 190
    sget-object v0, Lcom/amazon/bookwizard/BookWizardPlugin;->dataProvider:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/data/DataProvider;->getRunningState()Lcom/amazon/bookwizard/service/State;

    move-result-object v0

    return-object v0
.end method

.method public static getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 138
    sget-object v0, Lcom/amazon/bookwizard/BookWizardPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method public static declared-synchronized getStoreManager()Lcom/amazon/bookwizard/store/StoreManager;
    .locals 2

    const-class v0, Lcom/amazon/bookwizard/BookWizardPlugin;

    monitor-enter v0

    .line 279
    :try_start_0
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->storeManager:Lcom/amazon/bookwizard/store/StoreManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTaskExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    const-class v0, Lcom/amazon/bookwizard/BookWizardPlugin;

    monitor-enter v0

    .line 266
    :try_start_0
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    :cond_0
    new-instance v1, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const-string v2, "bookwizard-pool-%d"

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    const/4 v2, 0x4

    .line 268
    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->executor:Ljava/util/concurrent/ExecutorService;

    .line 270
    :cond_1
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->executor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getViewManager()Lcom/amazon/bookwizard/BookViewManager;
    .locals 1

    .line 156
    sget-object v0, Lcom/amazon/bookwizard/BookWizardPlugin;->viewManager:Lcom/amazon/bookwizard/BookViewManager;

    return-object v0
.end method

.method public static isFallback()Z
    .locals 1

    .line 217
    sget-boolean v0, Lcom/amazon/bookwizard/BookWizardPlugin;->fallback:Z

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 106
    sget-boolean v0, Lcom/amazon/bookwizard/BookWizardPlugin;->isInitialized:Z

    return v0
.end method

.method public static isShowing()Z
    .locals 1

    .line 199
    sget-boolean v0, Lcom/amazon/bookwizard/BookWizardPlugin;->showing:Z

    return v0
.end method

.method public static launch(Lcom/amazon/bookwizard/service/LaunchInfoContext;Z)V
    .locals 4

    .line 118
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEInkBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    new-instance p0, Landroid/content/Intent;

    sget-object p1, Lcom/amazon/bookwizard/BookWizardPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    .line 120
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    sget-object p1, Lcom/amazon/bookwizard/BookWizardPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 123
    :cond_0
    new-instance p1, Lcom/amazon/bookwizard/LaunchBookWizardTask;

    sget-object v0, Lcom/amazon/bookwizard/BookWizardPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/bookwizard/BookWizardPlugin;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    sget-object v2, Lcom/amazon/bookwizard/service/LaunchInfoContext;->NOTIFICATION:Lcom/amazon/bookwizard/service/LaunchInfoContext;

    const/4 v3, 0x0

    if-ne v2, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-direct {p1, v0, v1, p0}, Lcom/amazon/bookwizard/LaunchBookWizardTask;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/android/volley/RequestQueue;Z)V

    new-array p0, v3, [Ljava/lang/Void;

    .line 124
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void
.end method

.method public static setFallback(Z)V
    .locals 1

    .line 226
    sput-boolean p0, Lcom/amazon/bookwizard/BookWizardPlugin;->fallback:Z

    .line 227
    const-class p0, Lcom/amazon/bookwizard/BookWizardPlugin;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Fallback info/flow set"

    invoke-static {p0, v0}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLaunchInfo(Lcom/amazon/bookwizard/service/LaunchInfo;)V
    .locals 0

    .line 174
    sput-object p0, Lcom/amazon/bookwizard/BookWizardPlugin;->launchInfo:Lcom/amazon/bookwizard/service/LaunchInfo;

    return-void
.end method

.method public static setOptOutOrCompletedFlag()V
    .locals 3

    .line 299
    sget-object v0, Lcom/amazon/bookwizard/BookWizardPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BookWizardPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 300
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    .line 301
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BookWizardUserId"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setRunningState(Lcom/amazon/bookwizard/service/State;)V
    .locals 1

    .line 183
    sget-object v0, Lcom/amazon/bookwizard/BookWizardPlugin;->dataProvider:Lcom/amazon/bookwizard/data/DataProvider;

    invoke-virtual {v0, p0}, Lcom/amazon/bookwizard/data/DataProvider;->setRunningState(Lcom/amazon/bookwizard/service/State;)V

    return-void
.end method

.method public static setShowing(Z)V
    .locals 0

    .line 208
    sput-boolean p0, Lcom/amazon/bookwizard/BookWizardPlugin;->showing:Z

    return-void
.end method

.method public static declared-synchronized stop()V
    .locals 2

    const-class v0, Lcom/amazon/bookwizard/BookWizardPlugin;

    monitor-enter v0

    .line 308
    :try_start_0
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->requestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v1, :cond_0

    .line 309
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->stop()V

    .line 311
    :cond_0
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 312
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    const/4 v1, 0x0

    .line 314
    sput-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->downloadManager:Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    .line 315
    sput-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->requestQueue:Lcom/android/volley/RequestQueue;

    const/4 v1, 0x0

    .line 316
    sput-boolean v1, Lcom/amazon/bookwizard/BookWizardPlugin;->showing:Z

    .line 317
    sput-boolean v1, Lcom/amazon/bookwizard/BookWizardPlugin;->fallback:Z

    .line 318
    sget-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/picasso/BookWizardImageUtils;->clearCache(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
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

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 75
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/bookwizard/util/Log;->init(Lcom/amazon/kindle/krx/logging/ILogger;)V

    .line 76
    invoke-static {p1}, Lcom/amazon/bookwizard/util/M;->init(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 78
    sput-object p1, Lcom/amazon/bookwizard/BookWizardPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v0, 0x0

    .line 79
    sput-boolean v0, Lcom/amazon/bookwizard/BookWizardPlugin;->showing:Z

    .line 80
    new-instance v0, Lcom/amazon/bookwizard/data/DataProvider;

    invoke-direct {v0}, Lcom/amazon/bookwizard/data/DataProvider;-><init>()V

    sput-object v0, Lcom/amazon/bookwizard/BookWizardPlugin;->dataProvider:Lcom/amazon/bookwizard/data/DataProvider;

    .line 81
    new-instance v1, Lcom/amazon/bookwizard/BookViewManager;

    invoke-direct {v1, v0}, Lcom/amazon/bookwizard/BookViewManager;-><init>(Lcom/amazon/bookwizard/data/DataProvider;)V

    sput-object v1, Lcom/amazon/bookwizard/BookWizardPlugin;->viewManager:Lcom/amazon/bookwizard/BookViewManager;

    .line 82
    new-instance v0, Lcom/amazon/bookwizard/store/StoreManager;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/bookwizard/store/StoreManager;-><init>(Lcom/amazon/kindle/krx/store/IStoreManager;Lcom/amazon/kindle/krx/application/IApplicationManager;)V

    sput-object v0, Lcom/amazon/bookwizard/BookWizardPlugin;->storeManager:Lcom/amazon/bookwizard/store/StoreManager;

    .line 84
    new-instance v0, Lcom/amazon/bookwizard/BookWizardProvider;

    invoke-direct {v0, p1}, Lcom/amazon/bookwizard/BookWizardProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-virtual {v0}, Lcom/amazon/bookwizard/BookWizardProvider;->register()V

    const/4 p1, 0x1

    .line 89
    sput-boolean p1, Lcom/amazon/bookwizard/BookWizardPlugin;->isInitialized:Z

    return-void
.end method
