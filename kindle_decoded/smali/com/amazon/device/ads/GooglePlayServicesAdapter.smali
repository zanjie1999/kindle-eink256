.class Lcom/amazon/device/ads/GooglePlayServicesAdapter;
.super Ljava/lang/Object;
.source "GooglePlayServicesAdapter.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GooglePlayServicesAdapter"


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 4

    .line 34
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 39
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iget-object v1, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "The Google Play Services Advertising Identifier was successfully retrieved."

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    .line 78
    new-instance v2, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v2}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    .line 79
    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->setAdvertisingIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    .line 80
    invoke-virtual {v2, v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->setLimitAdTrackingEnabled(Z)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    return-object v2

    .line 82
    :cond_0
    new-instance v0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    return-object v0

    :catch_0
    move-exception v0

    .line 68
    iget-object v3, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Run time exception occured while retrieving Advertising Identifier:  %s"

    invoke-virtual {v3, v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    new-instance v0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    return-object v0

    .line 64
    :catch_1
    iget-object v0, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesRepairableException."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    return-object v0

    .line 56
    :catch_2
    iget-object v0, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesNotAvailableException."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->createNotAvailable()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v0

    return-object v0

    .line 51
    :catch_3
    iget-object v0, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Retrieving the Google Play Services Advertising Identifier caused an IOException."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    return-object v0

    :catch_4
    move-exception v0

    .line 45
    iget-object v3, p0, Lcom/amazon/device/ads/GooglePlayServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "The Google Play Services Advertising Identifier could not be retrieved: %s"

    invoke-virtual {v3, v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    new-instance v0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    return-object v0
.end method
