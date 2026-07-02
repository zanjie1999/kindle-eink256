.class public Lcom/amazon/device/ads/AmazonFireServicesAdapter;
.super Ljava/lang/Object;
.source "AmazonFireServicesAdapter.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AmazonFireServicesAdapter"


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AmazonFireServicesAdapter;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AmazonFireServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method public static newAdapter()Lcom/amazon/device/ads/AmazonFireServicesAdapter;
    .locals 1

    .line 18
    new-instance v0, Lcom/amazon/device/ads/AmazonFireServicesAdapter;

    invoke-direct {v0}, Lcom/amazon/device/ads/AmazonFireServicesAdapter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 7

    .line 28
    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "limit_ad_tracking"

    .line 31
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const-string v2, "advertising_id"

    .line 32
    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/amazon/device/ads/AmazonFireServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Fire Id retrieved : %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/amazon/device/ads/AmazonFireServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Fire Device does not allow ad tracking : %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 47
    :goto_0
    new-instance v1, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v1}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    .line 48
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->setAdvertisingIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    .line 49
    invoke-virtual {v1, v4}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->setLimitAdTrackingEnabled(Z)Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    return-object v1

    :catch_0
    move-exception v0

    .line 43
    iget-object v1, p0, Lcom/amazon/device/ads/AmazonFireServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Attempt to retrieve fireID failed. Reason : %s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    return-object v0

    :catch_1
    move-exception v0

    .line 40
    iget-object v1, p0, Lcom/amazon/device/ads/AmazonFireServicesAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Advertising setting not found on this device : %s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;-><init>()V

    return-object v0
.end method
