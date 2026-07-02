.class public Lcom/amazon/appexpan/client/download/ManifestHandler;
.super Ljava/lang/Object;
.source "ManifestHandler.java"


# static fields
.field private static final BASE_URL_PREPROD:Ljava/lang/String; = "https://mobile-app-expan.amazon.com/preprod/getManifest?"

.field private static final BASE_URL_PREPROD_CN:Ljava/lang/String; = "https://mobile-app-expan-preprod-pek.pek.proxy.amazon.com/getManifest?"

.field private static final BASE_URL_PROD:Ljava/lang/String; = "https://mobile-app-expan.amazon.com/getManifest?"

.field private static final BASE_URL_PROD_CN:Ljava/lang/String; = "https://mobile-app-expan.amazon.cn/getManifest?"

.field private static final HTTP_OK:I = 0xc8

.field private static final MANIFEST_REQUEST_FAILURE:Ljava/lang/String; = "FAILURE"

.field private static final MANIFEST_REQUEST_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field private static final PREF_LAST_MANIFEST_REQUEST_STATE:Ljava/lang/String; = "lastManifestRequestState"

.field private static final PREF_LAST_PLATFORM_VERSION:Ljava/lang/String; = "getManifestLastAppVersion"

.field private static final PREF_LAST_SUCCESSFUL_SYNC:Ljava/lang/String; = "getManifestLastSuccessTime"

.field private static final RETRY_COUNT:I = 0x5

.field private static final RETRY_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "com.amazon.appexpan.client.download.ManifestHandler"

.field private static final TIME_6HRS_IN_MS:J = 0x1499700L

.field private static final TIME_7HRS_IN_MS:J = 0x1808580L

.field private static final TIME_8HRS_IN_MS:J = 0x1b77400L

.field private static final URL_KEY_DEVICE_PROPERTIES:Ljava/lang/String; = "dp"

.field private static final URL_KEY_PLATFORM:Ljava/lang/String; = "p"

.field private static final URL_KEY_PLATFORM_VERSION:Ljava/lang/String; = "pv"

.field private static final URL_KEY_STAGE:Ljava/lang/String; = "s"

.field private static final URL_KEY_SYNC_TOKEN:Ljava/lang/String; = "st"


# instance fields
.field private final analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

.field private final context:Landroid/content/Context;

.field private final dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

.field private final debugSettings:Lcom/amazon/appexpan/client/util/DebugSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;Lcom/amazon/appexpan/client/util/DebugSettings;Lcom/amazon/appexpan/client/metrics/Analytics;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->context:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    .line 84
    iput-object p3, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->debugSettings:Lcom/amazon/appexpan/client/util/DebugSettings;

    .line 85
    iput-object p4, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    return-void
.end method

.method private constructURL(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "p"

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/amazon/appexpan/client/download/ManifestHandler;->convertRequestProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "pv"

    .line 293
    invoke-direct {p0, p3, p1}, Lcom/amazon/appexpan/client/download/ManifestHandler;->convertRequestProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dp"

    .line 294
    invoke-direct {p0, p1, p5}, Lcom/amazon/appexpan/client/download/ManifestHandler;->convertRequestProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "st"

    .line 295
    invoke-direct {p0, p1, p6}, Lcom/amazon/appexpan/client/download/ManifestHandler;->convertRequestProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "s"

    .line 296
    invoke-direct {p0, p2, p1}, Lcom/amazon/appexpan/client/download/ManifestHandler;->convertRequestProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    sget-object p1, Lcom/amazon/appexpan/client/download/ManifestHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Manifest URL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private convertRequestProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDevicePropertiesJson()Ljava/lang/String;
    .locals 3

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/appexpan/client/model/DeviceProperties;->buildFromContext(Landroid/content/Context;)Lcom/amazon/appexpan/client/model/DeviceProperties;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    invoke-static {v0}, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 319
    sget-object v1, Lcom/amazon/appexpan/client/download/ManifestHandler;->TAG:Ljava/lang/String;

    const-string v2, "Unrecognized device properties."

    invoke-static {v1, v2, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getLastManifestRequestState()Ljava/lang/String;
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->context:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastManifestRequestState"

    const-string v2, "SUCCESS"

    .line 425
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLastPlatformVersion()J
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->context:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getManifestLastAppVersion"

    const-wide/16 v2, -0x1

    .line 397
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getLastSuccessTime()J
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->context:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getManifestLastSuccessTime"

    const-wide/16 v2, -0x1

    .line 385
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSyncToken()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getSyncToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 493
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "GET"

    .line 494
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    :goto_1
    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    :cond_0
    move-object v0, v2

    const-wide/16 v2, 0x3e8

    .line 511
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    :cond_1
    throw v0

    :cond_2
    return-object v0
.end method

.method private persistLastSuccessState()V
    .locals 4

    .line 364
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->context:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "getManifestLastSuccessTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "lastManifestRequestState"

    const-string v2, "SUCCESS"

    .line 369
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatformVersion()J

    move-result-wide v1

    const-string v3, "getManifestLastAppVersion"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private persistManifestDownloadFailure()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->context:Landroid/content/Context;

    const-string v1, "app_expansion_properties"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 408
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastManifestRequestState"

    const-string v2, "FAILURE"

    .line 409
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private shouldRequestManifest(JJJ)Z
    .locals 7

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    cmp-long v3, p5, p3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    const-wide/16 p3, -0x1

    cmp-long p5, p1, p3

    if-nez p5, :cond_1

    return v2

    :cond_1
    sub-long p3, v0, p1

    const-wide/32 p5, 0x1b77400

    cmp-long v3, p3, p5

    if-ltz v3, :cond_2

    return v2

    :cond_2
    const-wide/32 p5, 0x1808580

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, p3, p5

    if-ltz v6, :cond_4

    const-wide/16 p1, 0x2

    .line 458
    rem-long/2addr v0, p1

    cmp-long p1, v0, v3

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_4
    const-wide/32 p5, 0x1499700

    cmp-long v6, p3, p5

    if-ltz v6, :cond_6

    const-wide/16 p1, 0x4

    .line 463
    rem-long/2addr v0, p1

    cmp-long p1, v0, v3

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_6
    cmp-long p3, p1, v0

    if-lez p3, :cond_7

    return v2

    :cond_7
    return v5
.end method


# virtual methods
.method public declared-synchronized requestManifest()Lcom/amazon/appexpan/client/model/Manifest;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 96
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->requestManifest(Z)Lcom/amazon/appexpan/client/model/Manifest;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestManifest(Z)Lcom/amazon/appexpan/client/model/Manifest;
    .locals 10

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/appexpan/client/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    sget-object p1, Lcom/amazon/appexpan/client/download/ManifestHandler;->TAG:Ljava/lang/String;

    const-string v0, "No network available, not requesting manifest"

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    .line 119
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->getLastSuccessTime()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->getLastPlatformVersion()J

    move-result-wide v5

    .line 120
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatformVersion()J

    move-result-wide v7

    move-object v2, p0

    .line 119
    invoke-direct/range {v2 .. v8}, Lcom/amazon/appexpan/client/download/ManifestHandler;->shouldRequestManifest(JJJ)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->getDevicePropertiesJson()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 126
    sget-object p1, Lcom/amazon/appexpan/client/download/ManifestHandler;->TAG:Ljava/lang/String;

    const-string v0, "Aborting getManifest call since deviceProperties was null"

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit p0

    return-object v1

    .line 130
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->getSyncToken()Ljava/lang/String;

    move-result-object v8

    const-string p1, "https://mobile-app-expan.amazon.com/getManifest?"

    const-string v0, "KFC"

    .line 135
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatform()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "https://mobile-app-expan.amazon.cn/getManifest?"

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->debugSettings:Lcom/amazon/appexpan/client/util/DebugSettings;

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/util/DebugSettings;->isGammaBuild()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "KFC"

    .line 143
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "https://mobile-app-expan-preprod-pek.pek.proxy.amazon.com/getManifest?"

    goto :goto_0

    :cond_4
    const-string p1, "https://mobile-app-expan.amazon.com/preprod/getManifest?"

    :cond_5
    :goto_0
    move-object v3, p1

    .line 154
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatform()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/AppExpanClient;->getPlatformVersion()J

    move-result-wide v5

    .line 158
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/AppExpanClient;->getStage()I

    move-result v9

    move-object v2, p0

    .line 153
    invoke-direct/range {v2 .. v9}, Lcom/amazon/appexpan/client/download/ManifestHandler;->constructURL(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, v0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 169
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_8

    .line 176
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    .line 177
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 183
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 186
    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/appexpan/client/deserialization/AppExpanParser;->parseManifest(Ljava/lang/String;)Lcom/amazon/appexpan/client/model/Manifest;

    move-result-object p1
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_7

    .line 192
    :try_start_4
    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    const-string v2, "ParseError"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishGetManifestFailEvent(Ljava/lang/String;I)V

    goto :goto_2

    .line 198
    :cond_7
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->getLastManifestRequestState()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->persistLastSuccessState()V

    .line 201
    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    invoke-virtual {v1, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishGetManifestSuccessEvent(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    move-object v1, p1

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto/16 :goto_5

    :catch_3
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto/16 :goto_6

    :catch_4
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto/16 :goto_7

    :catch_5
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto/16 :goto_8

    .line 206
    :cond_8
    :try_start_5
    iget-object p1, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    const-string v2, "HttpError"

    invoke-virtual {p1, v2, v0}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishGetManifestFailEvent(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_9

    :catch_6
    move-exception p1

    .line 248
    :goto_3
    :try_start_6
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->persistManifestDownloadFailure()V

    .line 252
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExtCertPathValidatorException"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 254
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    const-string v2, "SSLException"

    .line 256
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {v0, v2, p1}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishGetManifestExceptionEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 260
    :cond_9
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    const-string v2, "UnknownException"

    .line 262
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-virtual {v0, v2, v3}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishGetManifestExceptionEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/amazon/appexpan/client/download/ManifestHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve/parse manifest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :catch_7
    move-exception p1

    .line 240
    :goto_4
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->persistManifestDownloadFailure()V

    .line 241
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    const-string v2, "IOException"

    .line 243
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {v0, v2, v3}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishGetManifestExceptionEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/amazon/appexpan/client/download/ManifestHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve/parse manifest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :catch_8
    move-exception p1

    .line 232
    :goto_5
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->persistManifestDownloadFailure()V

    .line 233
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    const-string v2, "SSLException"

    .line 235
    invoke-virtual {p1}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual {v0, v2, v3}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishGetManifestExceptionEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/amazon/appexpan/client/download/ManifestHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve/parse manifest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLHandshakeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_9
    move-exception p1

    .line 224
    :goto_6
    invoke-direct {p0}, Lcom/amazon/appexpan/client/download/ManifestHandler;->persistManifestDownloadFailure()V

    .line 225
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ManifestHandler;->analytics:Lcom/amazon/appexpan/client/metrics/Analytics;

    const-string v2, "SSLException"

    .line 227
    invoke-virtual {p1}, Ljavax/net/ssl/SSLProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {v0, v2, v3}, Lcom/amazon/appexpan/client/metrics/Analytics;->publishGetManifestExceptionEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/amazon/appexpan/client/download/ManifestHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve/parse manifest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :catch_a
    move-exception p1

    .line 220
    :goto_7
    sget-object v0, Lcom/amazon/appexpan/client/download/ManifestHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve manifest:CertPathValidatorException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_b
    move-exception p1

    .line 215
    :goto_8
    sget-object v0, Lcom/amazon/appexpan/client/download/ManifestHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve manifest:UnknownHostException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/appexpan/client/AppExpanLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 268
    :cond_a
    :goto_9
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
