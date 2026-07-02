.class public final Lcom/facebook/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field private static final ANALYTICS_EVENT:Ljava/lang/String; = "event"

.field private static final APP_EVENT_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.appEventPreferences"

.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field private static final AUTO_PUBLISH:Ljava/lang/String; = "auto_publish"

.field private static final DEFAULT_CORE_POOL_SIZE:I = 0x5

.field private static final DEFAULT_KEEP_ALIVE:I = 0x1

.field private static final DEFAULT_MAXIMUM_POOL_SIZE:I = 0x80

.field private static final DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FACEBOOK_COM:Ljava/lang/String; = "facebook.com"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MOBILE_INSTALL_EVENT:Ljava/lang/String; = "MOBILE_APP_INSTALL"

.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"

.field private static final TAG:Ljava/lang/String; = "com.facebook.Settings"

.field private static volatile appClientToken:Ljava/lang/String;

.field private static volatile appVersion:Ljava/lang/String;

.field private static volatile applicationId:Ljava/lang/String;

.field private static volatile defaultsLoaded:Z

.field private static volatile executor:Ljava/util/concurrent/Executor;

.field private static volatile facebookDomain:Ljava/lang/String;

.field private static volatile isLoggingEnabled:Z

.field private static final loggingBehaviors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private static onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile platformCompatibilityEnabled:Z

.field private static sdkInitialized:Ljava/lang/Boolean;

.field private static volatile shouldAutoPublishInstall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/facebook/LoggingBehavior;

    sget-object v3, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    .line 59
    sput-boolean v4, Lcom/facebook/Settings;->defaultsLoaded:Z

    const-string v0, "facebook.com"

    .line 61
    sput-object v0, Lcom/facebook/Settings;->facebookDomain:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, 0x10000

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/Settings;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    sput-boolean v1, Lcom/facebook/Settings;->isLoggingEnabled:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;

    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    .line 71
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/Settings;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 83
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/Settings;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    .line 85
    new-instance v0, Lcom/facebook/Settings$1;

    invoke-direct {v0}, Lcom/facebook/Settings$1;-><init>()V

    sput-object v0, Lcom/facebook/Settings;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 104
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/Settings;->sdkInitialized:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .line 443
    sget-object v0, Lcom/facebook/Settings;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationId()Ljava/lang/String;
    .locals 1

    .line 576
    sget-object v0, Lcom/facebook/Settings;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method private static getAsyncTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 3

    const/4 v0, 0x0

    .line 270
    :try_start_0
    const-class v1, Landroid/os/AsyncTask;

    const-string v2, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 286
    :cond_0
    instance-of v2, v1, Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    return-object v0

    .line 290
    :cond_1
    check-cast v1, Ljava/util/concurrent/Executor;

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static getClientToken()Ljava/lang/String;
    .locals 1

    .line 593
    sget-object v0, Lcom/facebook/Settings;->appClientToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 10

    .line 216
    sget-object v0, Lcom/facebook/Settings;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    sget-object v1, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_1

    .line 218
    invoke-static {}, Lcom/facebook/Settings;->getAsyncTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 220
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x5

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Lcom/facebook/Settings;->DEFAULT_WORK_QUEUE:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Lcom/facebook/Settings;->DEFAULT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 223
    :cond_0
    sput-object v1, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    .line 225
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    sget-object v0, Lcom/facebook/Settings;->executor:Ljava/util/concurrent/Executor;

    return-object v0

    :catchall_0
    move-exception v1

    .line 225
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getFacebookDomain()Ljava/lang/String;
    .locals 1

    .line 249
    sget-object v0, Lcom/facebook/Settings;->facebookDomain:Ljava/lang/String;

    return-object v0
.end method

.method public static getLimitEventAndDataUsage(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "com.facebook.sdk.appEventPreferences"

    .line 474
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "limitEventUsage"

    .line 475
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getOnProgressThreshold()J
    .locals 2

    .line 497
    sget-object v0, Lcom/facebook/Settings;->onProgressThreshold:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPlatformCompatibilityEnabled()Z
    .locals 1

    .line 517
    sget-boolean v0, Lcom/facebook/Settings;->platformCompatibilityEnabled:Z

    return v0
.end method

.method public static getShouldAutoPublishInstall()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    sget-boolean v0, Lcom/facebook/Settings;->shouldAutoPublishInstall:Z

    return v0
.end method

.method public static final isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
    .locals 2

    .line 186
    sget-object v0, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-static {}, Lcom/facebook/Settings;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/facebook/Settings;->loggingBehaviors:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static final isLoggingEnabled()Z
    .locals 1

    .line 195
    sget-boolean v0, Lcom/facebook/Settings;->isLoggingEnabled:Z

    return v0
.end method

.method public static loadDefaultsFromMetadata(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 538
    sput-boolean v0, Lcom/facebook/Settings;->defaultsLoaded:Z

    if-nez p0, :cond_0

    return-void

    .line 546
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 552
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    goto :goto_0

    .line 556
    :cond_1
    sget-object v0, Lcom/facebook/Settings;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 557
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Settings;->applicationId:Ljava/lang/String;

    .line 559
    :cond_2
    sget-object v0, Lcom/facebook/Settings;->appClientToken:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 560
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.facebook.sdk.ClientToken"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/facebook/Settings;->appClientToken:Ljava/lang/String;

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method static loadDefaultsFromMetadataIfNeeded(Landroid/content/Context;)V
    .locals 1

    .line 565
    sget-boolean v0, Lcom/facebook/Settings;->defaultsLoaded:Z

    if-nez v0, :cond_0

    .line 566
    invoke-static {p0}, Lcom/facebook/Settings;->loadDefaultsFromMetadata(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/Response;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 347
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v3

    const-string v4, "com.facebook.sdk.attributionTracking"

    const/4 v5, 0x0

    .line 348
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "ping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 350
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    .line 351
    invoke-interface {v4, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 352
    invoke-interface {v4, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez p2, :cond_0

    .line 356
    invoke-static {v5}, Lcom/facebook/Settings;->setShouldAutoPublishInstall(Z)V

    .line 359
    :cond_0
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v13

    const-string v14, "event"

    const-string v15, "MOBILE_APP_INSTALL"

    .line 360
    invoke-interface {v13, v14, v15}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    invoke-static/range {p0 .. p1}, Lcom/facebook/internal/Utility;->getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p0 .. p0}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v15

    invoke-static {v13, v3, v14, v15}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    const-string v14, "auto_publish"

    .line 366
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "application_package_name"

    .line 367
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v14, v0}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "%s/activities"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v1, v15, v5

    .line 369
    invoke-static {v0, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v2, v0, v13, v2}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v13, v10, v8

    if-eqz v13, :cond_3

    if-eqz v12, :cond_1

    .line 376
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_0
    move-object v10, v1

    :goto_1
    if-nez v10, :cond_2

    :try_start_2
    const-string v1, "true"

    .line 383
    new-instance v3, Lcom/facebook/RequestBatch;

    new-array v4, v14, [Lcom/facebook/Request;

    aput-object v0, v4, v5

    invoke-direct {v3, v4}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    invoke-static {v1, v2, v3, v14}, Lcom/facebook/Response;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Response;

    return-object v0

    .line 385
    :cond_2
    new-instance v0, Lcom/facebook/Response;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/String;Lcom/facebook/model/GraphObject;Z)V

    return-object v0

    :cond_3
    if-eqz v3, :cond_7

    .line 387
    invoke-virtual {v3}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual {v3}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 391
    :cond_4
    invoke-static {v1, v5}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsAttribution()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 395
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v0

    .line 398
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 400
    invoke-interface {v1, v6, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 403
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 405
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v7, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v0

    .line 392
    :cond_6
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Install attribution has been disabled on the server."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_7
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "No attribution id available to send to server."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both context and applicationId must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "Facebook-publish"

    .line 413
    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 414
    new-instance v1, Lcom/facebook/Response;

    new-instance v3, Lcom/facebook/FacebookRequestError;

    invoke-direct {v3, v2, v0}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v1, v2, v2, v3}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    return-object v1
.end method

.method public static declared-synchronized sdkInitialize(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/facebook/Settings;

    monitor-enter v0

    .line 112
    :try_start_0
    sget-object v1, Lcom/facebook/Settings;->sdkInitialized:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 113
    monitor-exit v0

    return-void

    .line 115
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/BoltsMeasurementEventListener;->getInstance(Landroid/content/Context;)Lcom/facebook/BoltsMeasurementEventListener;

    .line 116
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/facebook/Settings;->sdkInitialized:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setShouldAutoPublishInstall(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 324
    sput-boolean p0, Lcom/facebook/Settings;->shouldAutoPublishInstall:Z

    return-void
.end method
