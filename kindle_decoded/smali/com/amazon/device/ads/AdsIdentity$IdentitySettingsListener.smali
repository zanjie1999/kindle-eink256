.class Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;
.super Ljava/lang/Object;
.source "AdsIdentity.java"

# interfaces
.implements Lcom/amazon/device/ads/Settings$SettingsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdsIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentitySettingsListener"
.end annotation


# instance fields
.field private final adsIdentity:Lcom/amazon/device/ads/AdsIdentity;

.field private final adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

.field private final configurationListener:Lcom/amazon/device/ads/Configuration$ConfigurationListener;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AdsIdentityContainer;Lcom/amazon/device/ads/Configuration$ConfigurationListener;Lcom/amazon/device/ads/AdsIdentity;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    .line 257
    iput-object p2, p0, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;->configurationListener:Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    .line 258
    iput-object p3, p0, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;->adsIdentity:Lcom/amazon/device/ads/AdsIdentity;

    .line 259
    invoke-static {}, Lcom/amazon/device/ads/AdsIdentity;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public settingsLoaded()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;->adsIdentity:Lcom/amazon/device/ads/AdsIdentity;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdsIdentity;->shouldIdentifyUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Not identifying user since a call was made previously and has not yet expired."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Loading Configuration."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getConfiguration()Lcom/amazon/device/ads/Configuration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Configuration;->setIsFirstParty(Z)V

    .line 272
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getConfiguration()Lcom/amazon/device/ads/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdsIdentityContainer;->getPreferredMarketplaceRetriever()Lcom/amazon/device/ads/PreferredMarketplaceRetriever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Configuration;->setPreferredMarketplaceRetriever(Lcom/amazon/device/ads/PreferredMarketplaceRetriever;)V

    .line 273
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getConfiguration()Lcom/amazon/device/ads/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdsIdentity$IdentitySettingsListener;->configurationListener:Lcom/amazon/device/ads/Configuration$ConfigurationListener;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Configuration;->queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;)V

    return-void
.end method
