.class public Lcom/amazon/kcp/application/AndroidUpdateManager;
.super Ljava/lang/Object;
.source "AndroidUpdateManager.java"

# interfaces
.implements Lcom/amazon/kcp/application/internal/IUpdateManager;


# static fields
.field private static final AMAZON_APPSTORE_KINDLE_LINK:Ljava/lang/String; = "amzn://apps/android?p=com.amazon.kindle"

.field private static final ANDROID_MARKETPLACE_KINDLE_LINK:Ljava/lang/String; = "market://details?id=com.amazon.kindle"

.field private static final ANDROID_MARKET_SEARCH_STRING:Ljava/lang/String; = "market://search?q=com.amazon.kindle"

.field private static final METRICS_NAME:Ljava/lang/String;

.field private static final NOTIFICATION_DATE_DEFAULT_VALUE:I = -0x1

.field private static final NOTIFICATION_LAST_SHOWN_DATE:Ljava/lang/String; = "NotificationLastShownDate"

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_DIALOG_DATE_DEFAULT_VALUE:I = -0x1

.field private static final UPDATE_DIALOG_LAST_SHOWN_DATE:Ljava/lang/String; = "NotificationLastShownDate"

.field private static final UPDATE_DIALOG_SUPPRESS_INTERVAL_IN_MILLIS:I = 0x48190800

.field private static final UPDATE_URL:Ljava/lang/String; = "UpdateURL"


# instance fields
.field private final calendar:Ljava/util/Calendar;

.field private final context:Landroid/content/Context;

.field private final helper:Lcom/amazon/kcp/application/InstallLookupHelper;

.field private final pm:Landroid/content/pm/PackageManager;

.field private secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

.field private final settings:Lcom/amazon/kcp/application/IAppSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-class v0, Lcom/amazon/kcp/application/AndroidUpdateManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/application/AndroidUpdateManager;->TAG:Ljava/lang/String;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AndroidUpdateManager;->METRICS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAppSettingsController;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 114
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->context:Landroid/content/Context;

    .line 115
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->calendar:Ljava/util/Calendar;

    .line 116
    new-instance p1, Lcom/amazon/kcp/application/InstallLookupHelper;

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amazon/kcp/application/InstallLookupHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->helper:Lcom/amazon/kcp/application/InstallLookupHelper;

    .line 117
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->pm:Landroid/content/pm/PackageManager;

    .line 118
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->settings:Lcom/amazon/kcp/application/IAppSettingsController;

    .line 120
    new-instance p1, Lcom/amazon/kcp/application/AndroidUpdateManager$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/application/AndroidUpdateManager$1;-><init>(Lcom/amazon/kcp/application/AndroidUpdateManager;)V

    invoke-interface {p2, p1}, Lcom/amazon/kcp/application/IAppSettingsController;->registerSettingsChangedListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private androidMarketplaceExists()Z
    .locals 3

    .line 367
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "market://search?q=com.amazon.kindle"

    .line 370
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 374
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private canShowUpdateDialog()Z
    .locals 1

    .line 473
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->isInstalledByVenezia()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->wasAppUpgradedThisOpening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->hasNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    return-object v0
.end method

.method private hasNetworkConnection()Z
    .locals 2

    .line 414
    new-instance v0, Lcom/amazon/kindle/network/WirelessUtils;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/network/WirelessUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/network/WirelessUtils;->hasNetworkConnectivity()Z

    move-result v0

    return v0
.end method

.method private hasSuppressionIntervalPassed()Z
    .locals 8

    .line 385
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 386
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v2

    const-string v3, "NotificationLastShownDate"

    invoke-interface {v2, v3}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 390
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TodoReceiveDate: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v7, v5, v2

    if-ltz v7, :cond_0

    sub-long/2addr v0, v5

    const-wide/32 v2, 0x48190800

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 403
    :catch_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    const/4 v1, -0x1

    .line 404
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-interface {v0, v3, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    return v4
.end method

.method private isInstalledByVenezia()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->helper:Lcom/amazon/kcp/application/InstallLookupHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/InstallLookupHelper;->isInstalledByVenezia()Z

    move-result v0

    return v0
.end method

.method private notifyUser(Ljava/lang/String;Z)V
    .locals 10

    .line 326
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveActivities()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->calendar:Ljava/util/Calendar;

    .line 332
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationLastShownDate"

    .line 331
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 334
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->software_update_title:I

    .line 335
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->software_update_message:I

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->software_update_link_title:I

    .line 337
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->software_update_cancel_title:I

    .line 338
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, p1

    move v9, p2

    .line 334
    invoke-interface/range {v3 .. v9}, Lcom/amazon/kcp/application/IUIMessaging;->showSoftwareUpdateAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private notifyUserWithCookies()V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    const-string/jumbo v1, "store_cookies"

    .line 297
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/CookieJar;->getCookies(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/AndroidUpdateManager;->METRICS_NAME:Ljava/lang/String;

    const-string v2, "CookiesNullAgain"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 302
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->notifyUserWithCookies(Ljava/util/Map;)V

    return-void
.end method

.method private notifyUserWithCookies(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 310
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "https://www.amazon.cn"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 311
    iget-object p1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    const-string v1, "UpdateURL"

    invoke-interface {p1, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 313
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/AndroidUpdateManager;->METRICS_NAME:Ljava/lang/String;

    const-string v1, "UpdateURLNull"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 316
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 317
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->notifyUser(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private showForcedUpdateDialog()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/util/PackageUtils;->hasGooglePlayStore(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "market://details?id=com.amazon.kindle"

    .line 279
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/AndroidUpdateManager;->notifyUser(Ljava/lang/String;Z)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/util/PackageUtils;->hasAppstore(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "amzn://apps/android?p=com.amazon.kindle"

    .line 281
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/AndroidUpdateManager;->notifyUser(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 283
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/application/AndroidUpdateManager;->notifyUser(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private showUpdateDialog()V
    .locals 3

    .line 252
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->androidMarketplaceExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string/jumbo v1, "market://details?id=com.amazon.kindle"

    .line 253
    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->notifyUser(Ljava/lang/String;Z)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    const-string/jumbo v1, "store_cookies"

    .line 256
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/CookieJar;->getCookies(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 258
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->notifyUserWithCookies(Ljava/util/Map;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    .line 261
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 262
    invoke-interface {v0}, Lcom/amazon/kcp/store/IWebStoreController;->updateStoreCookies()V

    .line 263
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/AndroidUpdateManager;->METRICS_NAME:Ljava/lang/String;

    const-string v2, "CookiesNull"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private wasAppUpgradedThisOpening()Z
    .locals 1

    .line 461
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->wasAppUpgradedThisOpening()Z

    move-result v0

    return v0
.end method


# virtual methods
.method assertInitialized()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    if-eqz v0, :cond_0

    return-void

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "secure storage not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearSecureStorage()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->assertInitialized()V

    .line 137
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    const-string v1, "LatestKnownAppVersion"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    return-void
.end method

.method public getLatestKnownAppVersion()J
    .locals 7

    .line 144
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->assertInitialized()V

    .line 148
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v0

    .line 152
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v2

    const-string v3, "LatestKnownAppVersion"

    invoke-interface {v2, v3}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 165
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/amazon/kindle/persistence/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 167
    sget-object v3, Lcom/amazon/kcp/application/AndroidUpdateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem parsing app version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-wide v2, v0

    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0
.end method

.method public getNotificationLastShownDate()Ljava/util/Date;
    .locals 6

    .line 426
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    const-string v1, "NotificationLastShownDate"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 429
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return-object v1

    .line 433
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public initialize(Lcom/amazon/kindle/persistence/ISecureStorage;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->secureStorage:Lcom/amazon/kindle/persistence/ISecureStorage;

    return-void
.end method

.method public onWebStoreCredentialEvent(Lcom/amazon/kcp/store/WebStoreCredentialEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 289
    invoke-virtual {p1}, Lcom/amazon/kcp/store/WebStoreCredentialEvent;->getType()Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->UPDATED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->notifyUserWithCookies()V

    .line 291
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public processStartup(Z)V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidUpdateManager.processStartup("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object p1

    const/4 v0, -0x1

    .line 198
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationLastShownDate"

    .line 197
    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->showForcedUpdateDialogIfNeeded()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->canShowUpdateDialog()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->hasSuppressionIntervalPassed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->showUpdateDialog()V

    :cond_1
    return-void
.end method

.method public processUpdateTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    .locals 7

    const-string v0, "LatestKnownAppVersion"

    .line 210
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->assertInitialized()V

    if-eqz p1, :cond_2

    .line 212
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->SOFTWARE_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v2

    const-string v3, "UpdateURL"

    invoke-interface {v2, v3, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-wide/16 v1, 0x0

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :catch_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v3, "version"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 234
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " Known Version: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->canShowUpdateDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->showUpdateDialog()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 244
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server version is invalid, aborting update. Server version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    .line 213
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Todo item is not a Software Update"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNotificationLastShownDate(Ljava/util/Date;)V
    .locals 4

    const-string v0, "NotificationLastShownDate"

    if-nez p1, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object p1

    const/4 v1, -0x1

    .line 449
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v1

    .line 453
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 452
    invoke-interface {v1, v0, p1}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public showForcedUpdateDialogIfNeeded()Z
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidUpdateManager;->settings:Lcom/amazon/kcp/application/IAppSettingsController;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAppSettingsController;->getMinSoftwareVersion()J

    move-result-wide v0

    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->showForcedUpdateDialog()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
