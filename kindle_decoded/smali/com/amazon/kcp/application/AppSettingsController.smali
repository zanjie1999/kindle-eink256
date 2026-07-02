.class public Lcom/amazon/kcp/application/AppSettingsController;
.super Lcom/amazon/kindle/persistence/AbstractSettingsController;
.source "AppSettingsController.java"

# interfaces
.implements Lcom/amazon/kcp/application/IAppSettingsController;


# static fields
.field private static final APP_PREFS_BASE_NAME:Ljava/lang/String; = "AppSettings"

.field private static final COUNTRIES:Ljava/lang/String; = "_Countries"

.field private static final DOMAINS:Ljava/lang/String; = "_Domains"

.field private static final HANDLES:Ljava/lang/String; = "_Handles"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_SETTINGS_TO_REMOVE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/amazon/kcp/application/AppSettingsController;


# instance fields
.field private volatile launchToNotification:Z

.field private volatile subpixelRendering:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const-class v0, Lcom/amazon/kcp/application/AppSettingsController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AppSettingsController;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 32
    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAUNCH_TO:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->READER_FONT_TOAST_VIEWS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 32
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AppSettingsController;->USER_SETTINGS_TO_REMOVE:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AppSettings"

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/AppSettingsController;
    .locals 2

    const-class v0, Lcom/amazon/kcp/application/AppSettingsController;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/AppSettingsController;->instance:Lcom/amazon/kcp/application/AppSettingsController;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/amazon/kcp/application/AppSettingsController;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/application/AppSettingsController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kcp/application/AppSettingsController;->instance:Lcom/amazon/kcp/application/AppSettingsController;

    .line 47
    :cond_0
    sget-object p0, Lcom/amazon/kcp/application/AppSettingsController;->instance:Lcom/amazon/kcp/application/AppSettingsController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getStringList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 374
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 378
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clearUserSensitiveData()V
    .locals 1

    .line 370
    sget-object v0, Lcom/amazon/kcp/application/AppSettingsController;->USER_SETTINGS_TO_REMOVE:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->removeAll(Ljava/util/Collection;)V

    return-void
.end method

.method public getAppUpgradedToRubyVersionTime()J
    .locals 3

    .line 109
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->APP_UPGRADED_TO_RUBY_VERSION_TIME:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAuthPortalCountries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->AUTH_PORTAL_MAPPINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Countries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/AppSettingsController;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthPortalDomains()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->AUTH_PORTAL_MAPPINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Domains"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/AppSettingsController;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAuthPortalHandles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->AUTH_PORTAL_MAPPINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Handles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/AppSettingsController;->getStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCrashBitValue()Ljava/lang/String;
    .locals 2

    .line 192
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->CRASH_BIT:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDcpSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->DCP_SETTINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDisableFTUELoadingScreen()Z
    .locals 2

    .line 287
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->DISABLE_FTUE_LOADING_SCREEN:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLastAppUpgradeVersion()J
    .locals 4

    .line 88
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_APP_UPGRADE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-wide v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 93
    throw v1
.end method

.method public getLastCrashDetectionTime()J
    .locals 3

    .line 396
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_APP_ANR_DETECTION_TIME:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLaunchTo()Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;
    .locals 8

    .line 203
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;

    .line 205
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAUNCH_TO:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    const-class v2, Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 209
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v3, "BookSettingsController"

    const-string v4, "LanchToSettingException"

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getLaunchToNotification()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AppSettingsController;->launchToNotification:Z

    return v0
.end method

.method public getLibraryLastUpgradedVersion()J
    .locals 3

    .line 70
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LIBRARY_UPGRADE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinSoftwareVersion()J
    .locals 3

    .line 163
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->MIN_SOFTWARE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreviousAndroidVersion()J
    .locals 3

    .line 131
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->PREVIOUS_ANDROID_SDK_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreviousVersion()J
    .locals 3

    .line 121
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->PREVIOUS_UPDATE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReaderFontToastViewCount()I
    .locals 2

    .line 59
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->READER_FONT_TOAST_VIEWS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSilentUpdatesEnabled()Z
    .locals 2

    .line 343
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->SILENT_UPDATES_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSubpixelRendering()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/amazon/kcp/application/AppSettingsController;->subpixelRendering:Z

    return v0
.end method

.method public hasFixedCollectionsSorting()Z
    .locals 2

    .line 360
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->COLLECTIONS_ONE_TIME_SORT_FIX_APPLIED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasFixedLibrarySorting()Z
    .locals 2

    .line 349
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LIBRARY_ONE_TIME_SORT_FIX_APPLIED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasMigratedAccountToUserSettings()Z
    .locals 2

    .line 437
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->HAS_MIGRATED_ACCOUNT_TO_USER_SETTINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasMigratedDocumentSizeInformation()Z
    .locals 2

    .line 417
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->HAS_MIGRATED_DOCUMENT_SIZE:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasMigratedDocuments()Z
    .locals 2

    .line 427
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->HAS_MIGRATED_DOCUMENTS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstStart()Z
    .locals 5

    .line 302
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AppSettingsController;->getLastAppUpgradeVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFreshAppInstall()Z
    .locals 2

    .line 142
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->FRESH_APP_INSTALL:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFreshMopDeprecationEnabled()Z
    .locals 2

    .line 152
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->FRESH_MOP_DEPRECATION_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTopSearchDownloadRetryNeeded()Z
    .locals 2

    .line 407
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->TOP_SEARCH_DOWNLOAD_RETRY_NEEDED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isYJSupportedByBlacklist()Z
    .locals 2

    .line 174
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->IS_YJ_SUPPORTED_BY_BLACKLIST:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isYJSupportedBySniffTest()Z
    .locals 2

    .line 186
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->IS_YJ_SUPPORTED_BY_SNIFFTEST:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAppUpgradedToRubyVersionTime(J)V
    .locals 5

    .line 101
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AppSettingsController;->getAppUpgradedToRubyVersionTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 102
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->APP_UPGRADED_TO_RUBY_VERSION_TIME:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public setAuthPortalMappings(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->AUTH_PORTAL_MAPPINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Countries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->AUTH_PORTAL_MAPPINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_Handles"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->AUTH_PORTAL_MAPPINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_Domains"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCrashBitValue(Ljava/lang/String;)V
    .locals 1

    .line 198
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->CRASH_BIT:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDcpSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->DCP_SETTINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisableFTUELoadingScreen(Z)V
    .locals 1

    .line 282
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->DISABLE_FTUE_LOADING_SCREEN:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHasFixedCollectionsSorting(Z)V
    .locals 1

    .line 365
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->COLLECTIONS_ONE_TIME_SORT_FIX_APPLIED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHasFixedLibrarySorting(Z)V
    .locals 1

    .line 354
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LIBRARY_ONE_TIME_SORT_FIX_APPLIED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHasMigratedAccountToUserSettings(Z)V
    .locals 1

    .line 442
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->HAS_MIGRATED_ACCOUNT_TO_USER_SETTINGS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHasMigratedDocumentSizeInformation(Z)V
    .locals 1

    .line 422
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->HAS_MIGRATED_DOCUMENT_SIZE:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHasMigratedDocuments(Z)V
    .locals 1

    .line 432
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->HAS_MIGRATED_DOCUMENTS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsFreshAppInstall(Z)V
    .locals 1

    .line 136
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->FRESH_APP_INSTALL:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsFreshMopDeprecationEnabled(Z)V
    .locals 1

    .line 147
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->FRESH_MOP_DEPRECATION_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsYJSupportedByBlacklist(Z)V
    .locals 1

    .line 169
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->IS_YJ_SUPPORTED_BY_BLACKLIST:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIsYJSupportedBySniffTest(Z)V
    .locals 1

    .line 180
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->IS_YJ_SUPPORTED_BY_SNIFFTEST:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setKfaToKfcMigrationNotificationPeriodInDays(I)V
    .locals 1

    .line 328
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->KFA_TO_KFC_MIGRATION_NOTIFICATION_PERIOD_IN_DAYS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setLastAnrDetectionTime(J)V
    .locals 1

    .line 402
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_APP_ANR_DETECTION_TIME:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setLastAppUpgradeVersion(J)V
    .locals 1

    .line 82
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_APP_UPGRADE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setLastReadRenderElementDimen(II)V
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_READ_RENDER_ELEMENT_WIDTH:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    .line 54
    sget-object p1, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAST_READ_RENDER_ELEMENT_HEIGHT:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setLaunchTo(Lcom/amazon/kcp/application/IAppSettingsController$LaunchToSetting;)V
    .locals 1

    .line 217
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LAUNCH_TO:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLaunchToNotification(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/amazon/kcp/application/AppSettingsController;->launchToNotification:Z

    return-void
.end method

.method public setLibraryLastUpgradedVersion(J)V
    .locals 1

    .line 76
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->LIBRARY_UPGRADE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setMinSoftwareVersion(J)V
    .locals 1

    .line 157
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->MIN_SOFTWARE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setPreviousAndroidVersion(J)V
    .locals 1

    .line 126
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->PREVIOUS_ANDROID_SDK_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setPreviousVersion(J)V
    .locals 1

    .line 115
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->PREVIOUS_UPDATE_VERSION:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setReaderFontToastViewCount(I)V
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->READER_FONT_TOAST_VIEWS:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setSilentUpdatesEnabled(Z)V
    .locals 1

    .line 338
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->SILENT_UPDATES_ENABLED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTopSearchDownloadRetryNeeded(Z)V
    .locals 1

    .line 412
    sget-object v0, Lcom/amazon/kcp/application/IAppSettingsController$Setting;->TOP_SEARCH_DOWNLOAD_RETRY_NEEDED:Lcom/amazon/kcp/application/IAppSettingsController$Setting;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/persistence/AbstractSettingsController;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
