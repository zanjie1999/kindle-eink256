.class Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;
.super Lcom/amazon/device/ads/AdRegistrationExecutor;
.source "AmazonOOAdRegistrationExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

.field private final appEventRegistrationHandler:Lcom/amazon/device/ads/AppEventRegistrationHandler;

.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final systemTime:Lcom/amazon/device/ads/SystemTime;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

.field private final webUtils:Lcom/amazon/device/ads/WebUtils2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/device/ads/AmazonOOAdRegistration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    .line 38
    invoke-static {}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->getInstance()Lcom/amazon/device/ads/AppEventRegistrationHandler;

    move-result-object v1

    .line 39
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v2

    new-instance v3, Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-direct {v3}, Lcom/amazon/device/ads/AdvertisingIdentifier;-><init>()V

    .line 41
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v4

    .line 42
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v5

    .line 43
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v7}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v8, Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {v8}, Lcom/amazon/device/ads/PermissionChecker;-><init>()V

    new-instance v9, Lcom/amazon/device/ads/SystemTime;

    invoke-direct {v9}, Lcom/amazon/device/ads/SystemTime;-><init>()V

    .line 47
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v10

    new-instance v11, Lcom/amazon/device/ads/WebUtils2;

    invoke-direct {v11}, Lcom/amazon/device/ads/WebUtils2;-><init>()V

    new-instance v12, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v12}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    new-instance v13, Lcom/amazon/device/ads/MAPUtils;

    invoke-direct {v13}, Lcom/amazon/device/ads/MAPUtils;-><init>()V

    new-instance v14, Lcom/amazon/device/ads/AmazonOOPreferredMarketplaceRetrieverFactory;

    invoke-direct {v14}, Lcom/amazon/device/ads/AmazonOOPreferredMarketplaceRetrieverFactory;-><init>()V

    move-object v0, p0

    .line 38
    invoke-direct/range {v0 .. v14}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;-><init>(Lcom/amazon/device/ads/AppEventRegistrationHandler;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/MAPUtils;Lcom/amazon/device/ads/AmazonOOPreferredMarketplaceRetrieverFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AppEventRegistrationHandler;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/MAPUtils;Lcom/amazon/device/ads/AmazonOOPreferredMarketplaceRetrieverFactory;)V
    .locals 8

    move-object v6, p0

    move-object v7, p2

    .line 68
    sget-object v1, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->LOGTAG:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/AdRegistrationExecutor;-><init>(Ljava/lang/String;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;)V

    move-object v0, p1

    .line 69
    iput-object v0, v6, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->appEventRegistrationHandler:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    .line 70
    iput-object v7, v6, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->configuration:Lcom/amazon/device/ads/Configuration;

    move-object v0, p3

    .line 71
    iput-object v0, v6, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    move-object v0, p4

    .line 72
    iput-object v0, v6, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-object/from16 v0, p9

    .line 73
    iput-object v0, v6, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->systemTime:Lcom/amazon/device/ads/SystemTime;

    move-object/from16 v0, p10

    .line 74
    iput-object v0, v6, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    move-object/from16 v0, p11

    .line 75
    iput-object v0, v6, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    move-object/from16 v0, p12

    .line 76
    iput-object v0, v6, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/Configuration;->setIsFirstParty(Z)V

    .line 78
    iget-object v0, v6, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->configuration:Lcom/amazon/device/ads/Configuration;

    invoke-virtual/range {p14 .. p14}, Lcom/amazon/device/ads/AmazonOOPreferredMarketplaceRetrieverFactory;->createPreferredMarketplaceRetriever()Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Configuration;->setPreferredMarketplaceRetriever(Lcom/amazon/device/ads/PreferredMarketplaceRetriever;)V

    .line 79
    invoke-virtual/range {p13 .. p13}, Lcom/amazon/device/ads/MAPUtils;->isMAPAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getSettings()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/DirectedIdParameter;

    invoke-direct {v1}, Lcom/amazon/device/ads/DirectedIdParameter;-><init>()V

    const-string/jumbo v2, "userIdParam"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/Settings;->putTransientObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getSettings()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/MAPDirectedIdRetriever;

    invoke-direct {v1}, Lcom/amazon/device/ads/MAPDirectedIdRetriever;-><init>()V

    const-string v2, "directedIdRetriever"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/Settings;->putTransientObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "MAP Library not available"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public listenForRegistrationInfo(Lcom/amazon/device/ads/AmazonOOAdRegistrationListener;)V
    .locals 9

    .line 119
    new-instance v8, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;

    iget-object v2, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    .line 120
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getMobileAdsInfoStore()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getSettings()Lcom/amazon/device/ads/Settings;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->configuration:Lcom/amazon/device/ads/Configuration;

    iget-object v6, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->systemTime:Lcom/amazon/device/ads/SystemTime;

    move-object v0, v8

    move-object v1, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor$AmazonOOStartUpWaiter;-><init>(Lcom/amazon/device/ads/AmazonOOAdRegistrationListener;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;)V

    .line 121
    invoke-virtual {v8}, Lcom/amazon/device/ads/StartUpWaiter;->start()V

    return-void
.end method

.method public prepareRegistrationInfo(Landroid/content/Context;)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getMobileAdsInfoStore()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->contextReceived(Landroid/content/Context;)V

    return-void
.end method

.method public registerApp(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->registerApp(Landroid/content/Context;Lcom/amazon/device/ads/AmazonOOAdRegistrationListener;)V

    return-void
.end method

.method public registerApp(Landroid/content/Context;Lcom/amazon/device/ads/AmazonOOAdRegistrationListener;)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getPermissionChecker()Lcom/amazon/device/ads/PermissionChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/PermissionChecker;->hasInternetPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string p2, "Network task cannot commence because the INTERNET permission is missing from the app\'s manifest."

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->prepareRegistrationInfo(Landroid/content/Context;)V

    .line 138
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getMobileAdsInfoStore()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->register()V

    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p0, p2}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->listenForRegistrationInfo(Lcom/amazon/device/ads/AmazonOOAdRegistrationListener;)V

    :cond_1
    return-void
.end method

.method public registerEvent(Landroid/content/Context;Lcom/amazon/device/ads/AmazonOOAppEvent;)V
    .locals 5

    if-nez p2, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string p2, "Application event was null. Could not register the application event."

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-void

    .line 415
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/device/ads/AmazonOOAppEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/amazon/device/ads/AmazonOOAppEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 420
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/device/ads/AmazonOOAppEvent;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string p2, "Invalid time stamp value for the event. Could not register the application event."

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-void

    .line 425
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->prepareRegistrationInfo(Landroid/content/Context;)V

    .line 427
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->appEventRegistrationHandler:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->addEventToAppEventsCacheFile(Lcom/amazon/device/ads/AppEvent;)V

    .line 428
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/device/ads/AmazonOOAppEvent;->getEventName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "New event"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->logSetterNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 417
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string p2, "Event name should not be null or empty. Could not register the application event."

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getMobileAdsInfoStore()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/RegistrationInfo;->putAppName(Ljava/lang/String;)V

    return-void
.end method

.method public setReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 387
    invoke-static {p2}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string p2, "Referrer was null or emtpy. Could not set the referrer."

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-void

    .line 392
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->prepareRegistrationInfo(Landroid/content/Context;)V

    .line 394
    new-instance p1, Lcom/amazon/device/ads/AmazonOOAppEvent;

    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->systemTime:Lcom/amazon/device/ads/SystemTime;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SystemTime;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "INSTALL_REFERRER"

    invoke-direct {p1, v2, v0, v1}, Lcom/amazon/device/ads/AmazonOOAppEvent;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v0, "referrer"

    .line 395
    invoke-virtual {p1, v0, p2}, Lcom/amazon/device/ads/AmazonOOAppEvent;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/AppEvent;

    .line 396
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdRegistrationExecutor;->appEventRegistrationHandler:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->addEventToAppEventsCacheFile(Lcom/amazon/device/ads/AppEvent;)V

    .line 397
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdRegistrationExecutor;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string v0, "Referrer"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->logSetterNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
