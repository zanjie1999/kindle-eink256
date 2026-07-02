.class Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;
.super Ljava/lang/Object;
.source "AdsIdentity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdsIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentityInitializer"
.end annotation


# instance fields
.field private final adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final settingsListener:Lcom/amazon/device/ads/Settings$SettingsListener;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AdsIdentityContainer;Lcom/amazon/device/ads/Settings$SettingsListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    .line 209
    iput-object p2, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;->settingsListener:Lcom/amazon/device/ads/Settings$SettingsListener;

    .line 210
    invoke-static {}, Lcom/amazon/device/ads/AdsIdentity;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method private startIdentifyUser()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getMobileAdsInfoStore()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdsIdentityContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->contextReceived(Landroid/content/Context;)V

    .line 229
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Listening for settings to load."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getSettings()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;->settingsListener:Lcom/amazon/device/ads/Settings$SettingsListener;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Settings;->listenForSettings(Lcom/amazon/device/ads/Settings$SettingsListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;->adsIdentityContainer:Lcom/amazon/device/ads/AdsIdentityContainer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdsIdentityContainer;->getUserIdentifier()Lcom/amazon/device/ads/AdsIdentityUserIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdsIdentityUserIdentifier;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;->startIdentifyUser()V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityInitializer;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    sget-object v1, Lcom/amazon/device/ads/MobileAdsLogger$Level;->DEBUG:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "No Amazon account found."

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
