.class Lcom/amazon/device/ads/AdRegistrationExecutor;
.super Ljava/lang/Object;
.source "AdRegistrationExecutor.java"


# instance fields
.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private volatile isInitialized:Z

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

.field private final permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

.field private final settings:Lcom/amazon/device/ads/Settings;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .line 25
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v2

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v3

    new-instance v4, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {v5}, Lcom/amazon/device/ads/PermissionChecker;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/AdRegistrationExecutor;-><init>(Ljava/lang/String;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/PermissionChecker;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->isInitialized:Z

    .line 29
    iput-object p2, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 30
    iput-object p3, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->settings:Lcom/amazon/device/ads/Settings;

    .line 31
    iput-object p4, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 32
    invoke-virtual {p4, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 33
    iput-object p5, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    return-void
.end method


# virtual methods
.method public enableLogging(Z)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->enableLoggingWithSetterNotification(Z)V

    return-void
.end method

.method getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method getMobileAdsInfoStore()Lcom/amazon/device/ads/MobileAdsInfoStore;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    return-object v0
.end method

.method getPermissionChecker()Lcom/amazon/device/ads/PermissionChecker;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    return-object v0
.end method

.method getSettings()Lcom/amazon/device/ads/Settings;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->settings:Lcom/amazon/device/ads/Settings;

    return-object v0
.end method

.method public initializeAds(Landroid/content/Context;)V
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->isInitialized:Z

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->contextReceived(Landroid/content/Context;)V

    .line 133
    iget-object p1, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {p1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getDeviceInfo()Lcom/amazon/device/ads/DeviceInfo;

    move-result-object p1

    new-instance v0, Lcom/amazon/device/ads/UserAgentManager;

    invoke-direct {v0}, Lcom/amazon/device/ads/UserAgentManager;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/DeviceInfo;->setUserAgentManager(Lcom/amazon/device/ads/UserAgentManager;)V

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->isInitialized:Z

    :cond_0
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/AdRegistrationExecutor;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/RegistrationInfo;->putAppKey(Ljava/lang/String;)V

    return-void
.end method
