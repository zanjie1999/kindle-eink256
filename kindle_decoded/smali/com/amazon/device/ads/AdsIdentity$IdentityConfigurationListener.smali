.class Lcom/amazon/device/ads/AdsIdentity$IdentityConfigurationListener;
.super Ljava/lang/Object;
.source "AdsIdentity.java"

# interfaces
.implements Lcom/amazon/device/ads/Configuration$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdsIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentityConfigurationListener"
.end annotation


# instance fields
.field private final adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AdsIdentityContainer;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityConfigurationListener;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    .line 292
    invoke-static {}, Lcom/amazon/device/ads/AdsIdentity;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityConfigurationListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public onConfigurationFailure()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityConfigurationListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Configuration was not able to be loaded."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationReady()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityConfigurationListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Attempting to identify user."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityConfigurationListener;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getUserIdentifier()Lcom/amazon/device/ads/AdsIdentityUserIdentifier;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityConfigurationListener;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdsIdentityContainer;->getMobileAdsInfoStore()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/UserIdentifier;->setMobileAdsInfoStore(Lcom/amazon/device/ads/MobileAdsInfoStore;)V

    .line 301
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdsIdentityUserIdentifier;->identifyUserFromIdModule()V

    return-void
.end method
