.class abstract Lcom/amazon/device/ads/AdsIdentityContainer;
.super Ljava/lang/Object;
.source "AdsIdentityContainer.java"


# instance fields
.field private adsIdentity:Lcom/amazon/device/ads/AdsIdentity;

.field private configuration:Lcom/amazon/device/ads/Configuration;

.field private context:Landroid/content/Context;

.field private debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private identifyUserListener:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;

.field private preferredMarketplaceRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

.field private settings:Lcom/amazon/device/ads/Settings;

.field private systemTime:Lcom/amazon/device/ads/SystemTime;

.field private trustedPackageManager:Lcom/amazon/device/ads/TrustedPackageManager;

.field private userIdentifier:Lcom/amazon/device/ads/AdsIdentityUserIdentifier;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdsIdentity()Lcom/amazon/device/ads/AdsIdentity;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->adsIdentity:Lcom/amazon/device/ads/AdsIdentity;

    return-object v0
.end method

.method public getConfiguration()Lcom/amazon/device/ads/Configuration;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->configuration:Lcom/amazon/device/ads/Configuration;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDebugProperties()Lcom/amazon/device/ads/DebugProperties;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    return-object v0
.end method

.method public getIdentifyUserListener()Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->identifyUserListener:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;

    return-object v0
.end method

.method public abstract getMobileAdsInfoStore()Lcom/amazon/device/ads/MobileAdsInfoStore;
.end method

.method public getPreferredMarketplaceRetriever()Lcom/amazon/device/ads/PreferredMarketplaceRetriever;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->preferredMarketplaceRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    return-object v0
.end method

.method public getSettings()Lcom/amazon/device/ads/Settings;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->settings:Lcom/amazon/device/ads/Settings;

    return-object v0
.end method

.method public getSystemTime()Lcom/amazon/device/ads/SystemTime;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->systemTime:Lcom/amazon/device/ads/SystemTime;

    return-object v0
.end method

.method public getUserIdentifier()Lcom/amazon/device/ads/AdsIdentityUserIdentifier;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->userIdentifier:Lcom/amazon/device/ads/AdsIdentityUserIdentifier;

    return-object v0
.end method

.method public setAdsIdentity(Lcom/amazon/device/ads/AdsIdentity;)Lcom/amazon/device/ads/AdsIdentityContainer;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->adsIdentity:Lcom/amazon/device/ads/AdsIdentity;

    return-object p0
.end method

.method public setConfiguration(Lcom/amazon/device/ads/Configuration;)Lcom/amazon/device/ads/AdsIdentityContainer;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->configuration:Lcom/amazon/device/ads/Configuration;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/amazon/device/ads/AdsIdentityContainer;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->context:Landroid/content/Context;

    return-object p0
.end method

.method public setDebugProperties(Lcom/amazon/device/ads/DebugProperties;)Lcom/amazon/device/ads/AdsIdentityContainer;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    return-object p0
.end method

.method public setIdentifyUserListener(Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;)Lcom/amazon/device/ads/AdsIdentityContainer;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->identifyUserListener:Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;

    return-object p0
.end method

.method public setPreferredMarketplaceRetriever(Lcom/amazon/device/ads/PreferredMarketplaceRetriever;)Lcom/amazon/device/ads/AdsIdentityContainer;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->preferredMarketplaceRetriever:Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    return-object p0
.end method

.method public setSettings(Lcom/amazon/device/ads/Settings;)Lcom/amazon/device/ads/AdsIdentityContainer;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->settings:Lcom/amazon/device/ads/Settings;

    return-object p0
.end method

.method public setSystemTime(Lcom/amazon/device/ads/SystemTime;)Lcom/amazon/device/ads/AdsIdentityContainer;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->systemTime:Lcom/amazon/device/ads/SystemTime;

    return-object p0
.end method

.method public setTrustedPackageManager(Lcom/amazon/device/ads/TrustedPackageManager;)Lcom/amazon/device/ads/AdsIdentityContainer;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->trustedPackageManager:Lcom/amazon/device/ads/TrustedPackageManager;

    return-object p0
.end method

.method public setUserIdentifier(Lcom/amazon/device/ads/AdsIdentityUserIdentifier;)Lcom/amazon/device/ads/AdsIdentityContainer;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentityContainer;->userIdentifier:Lcom/amazon/device/ads/AdsIdentityUserIdentifier;

    return-object p0
.end method
