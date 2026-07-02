.class Lcom/amazon/device/ads/AdLoadStarter;
.super Ljava/lang/Object;
.source "AdLoadStarter.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AdLoadStarter"


# instance fields
.field private final adLoaderFactory:Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;

.field private final adRequestBuilder:Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

.field private final advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

.field private final configuration:Lcom/amazon/device/ads/Configuration;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private final systemTime:Lcom/amazon/device/ads/SystemTime;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

.field private final viewabilityJavascriptFetcherListener:Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 40
    new-instance v1, Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;-><init>()V

    new-instance v2, Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-direct {v2}, Lcom/amazon/device/ads/AdvertisingIdentifier;-><init>()V

    .line 42
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v3

    .line 43
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v4

    .line 44
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v5

    .line 45
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v7}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v8, Lcom/amazon/device/ads/SystemTime;

    invoke-direct {v8}, Lcom/amazon/device/ads/SystemTime;-><init>()V

    new-instance v9, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

    invoke-direct {v9}, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;-><init>()V

    new-instance v10, Lcom/amazon/device/ads/PermissionChecker;

    invoke-direct {v10}, Lcom/amazon/device/ads/PermissionChecker;-><init>()V

    new-instance v11, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;

    invoke-direct {v11}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;-><init>()V

    move-object v0, p0

    .line 40
    invoke-direct/range {v0 .. v11}, Lcom/amazon/device/ads/AdLoadStarter;-><init>(Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;Lcom/amazon/device/ads/AdvertisingIdentifier;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/SystemTime;Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;Lcom/amazon/device/ads/PermissionChecker;Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoadStarter;->adLoaderFactory:Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;

    .line 65
    sget-object p1, Lcom/amazon/device/ads/AdLoadStarter;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p7, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdLoadStarter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 66
    iput-object p2, p0, Lcom/amazon/device/ads/AdLoadStarter;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    .line 67
    iput-object p4, p0, Lcom/amazon/device/ads/AdLoadStarter;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 68
    iput-object p5, p0, Lcom/amazon/device/ads/AdLoadStarter;->settings:Lcom/amazon/device/ads/Settings;

    .line 69
    iput-object p6, p0, Lcom/amazon/device/ads/AdLoadStarter;->configuration:Lcom/amazon/device/ads/Configuration;

    .line 70
    iput-object p3, p0, Lcom/amazon/device/ads/AdLoadStarter;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 71
    iput-object p8, p0, Lcom/amazon/device/ads/AdLoadStarter;->systemTime:Lcom/amazon/device/ads/SystemTime;

    .line 72
    iput-object p9, p0, Lcom/amazon/device/ads/AdLoadStarter;->adRequestBuilder:Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

    .line 73
    iput-object p10, p0, Lcom/amazon/device/ads/AdLoadStarter;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    .line 74
    iput-object p11, p0, Lcom/amazon/device/ads/AdLoadStarter;->viewabilityJavascriptFetcherListener:Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AdLoadStarter;)Lcom/amazon/device/ads/MobileAdsInfoStore;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/device/ads/AdLoadStarter;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AdLoadStarter;ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/List;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/ads/AdLoadStarter;->beginFetchAds(ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AdLoadStarter;Lcom/amazon/device/ads/AdError;Ljava/util/List;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/AdLoadStarter;->failAds(Lcom/amazon/device/ads/AdError;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AdLoadStarter;)Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/device/ads/AdLoadStarter;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    return-object p0
.end method

.method private beginFetchAds(ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/device/ads/AdTargetingOptions;",
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/AdSlot;",
            ">;)V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoadStarter;->advertisingIdentifier:Lcom/amazon/device/ads/AdvertisingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    new-instance p1, Lcom/amazon/device/ads/AdError;

    sget-object p2, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v0, "An internal request was not made on a background thread."

    invoke-direct {p1, p2, v0}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/amazon/device/ads/AdLoadStarter;->failAds(Lcom/amazon/device/ads/AdError;Ljava/util/List;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 146
    new-instance p2, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {p2}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/AdLoadStarter;->adRequestBuilder:Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

    invoke-virtual {v1, p2}, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;->withAdTargetingOptions(Lcom/amazon/device/ads/AdTargetingOptions;)Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;->withAdvertisingIdentifierInfo(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdRequest$AdRequestBuilder;->build()Lcom/amazon/device/ads/AdRequest;

    move-result-object p2

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v1, 0x1

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/AdSlot;

    .line 154
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/AdSlot;->setSlotNumber(I)V

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p2, v2}, Lcom/amazon/device/ads/AdRequest;->putSlot(Lcom/amazon/device/ads/AdSlot;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p3

    if-lez p3, :cond_4

    .line 165
    iget-object p3, p0, Lcom/amazon/device/ads/AdLoadStarter;->adLoaderFactory:Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;

    invoke-virtual {p3, p2, v0}, Lcom/amazon/device/ads/AdLoader$AdLoaderFactory;->createAdLoader(Lcom/amazon/device/ads/AdRequest;Ljava/util/Map;)Lcom/amazon/device/ads/AdLoader;

    move-result-object p2

    .line 166
    invoke-virtual {p2, p1}, Lcom/amazon/device/ads/AdLoader;->setTimeout(I)V

    .line 167
    invoke-virtual {p2}, Lcom/amazon/device/ads/AdLoader;->beginFetchAd()V

    :cond_4
    return-void
.end method

.method private failAds(Lcom/amazon/device/ads/AdError;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AdError;",
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/AdSlot;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/AdSlot;

    .line 182
    invoke-virtual {v2}, Lcom/amazon/device/ads/AdSlot;->getSlotNumber()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 184
    invoke-virtual {v2, p1}, Lcom/amazon/device/ads/AdSlot;->adFailed(Lcom/amazon/device/ads/AdError;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    .line 190
    iget-object p2, p0, Lcom/amazon/device/ads/AdLoadStarter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "%s; code: %s"

    invoke-virtual {p2, p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private isNoRetry([Lcom/amazon/device/ads/AdSlot;)Z
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoadStarter;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getNoRetryTtlRemainingMillis()I

    move-result v0

    if-lez v0, :cond_1

    .line 199
    div-int/lit16 v0, v0, 0x3e8

    const-string v1, "SDK Message: "

    .line 202
    iget-object v2, p0, Lcom/amazon/device/ads/AdLoadStarter;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getIsAppDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DISABLED_APP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    goto :goto_0

    .line 209
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "no results. Try again in "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " seconds."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    .line 212
    :goto_0
    new-instance v2, Lcom/amazon/device/ads/AdError;

    invoke-direct {v2, v1, v0}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v2, v0}, Lcom/amazon/device/ads/AdLoadStarter;->failAds(Lcom/amazon/device/ads/AdError;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public varargs loadAds(ILcom/amazon/device/ads/AdTargetingOptions;[Lcom/amazon/device/ads/AdSlot;)V
    .locals 9

    .line 79
    invoke-direct {p0, p3}, Lcom/amazon/device/ads/AdLoadStarter;->isNoRetry([Lcom/amazon/device/ads/AdSlot;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 83
    invoke-virtual {p2}, Lcom/amazon/device/ads/AdTargetingOptions;->isGeoLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoadStarter;->permissionChecker:Lcom/amazon/device/ads/PermissionChecker;

    iget-object v1, p0, Lcom/amazon/device/ads/AdLoadStarter;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/PermissionChecker;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoadStarter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Geolocation for ad targeting has been disabled. To enable geolocation, add at least one of the following permissions to the app manifest: 1. ACCESS_FINE_LOCATION; 2. ACCESS_COARSE_LOCATION."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoadStarter;->systemTime:Lcom/amazon/device/ads/SystemTime;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SystemTime;->nanoTime()J

    move-result-wide v0

    .line 91
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 92
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p3, v3

    .line 94
    invoke-virtual {v4, v0, v1}, Lcom/amazon/device/ads/AdSlot;->prepareForAdLoad(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_3
    iget-object p3, p0, Lcom/amazon/device/ads/AdLoadStarter;->configuration:Lcom/amazon/device/ads/Configuration;

    iget-object v0, p0, Lcom/amazon/device/ads/AdLoadStarter;->viewabilityJavascriptFetcherListener:Lcom/amazon/device/ads/ViewabilityJavascriptFetcherListener;

    invoke-virtual {p3, v0}, Lcom/amazon/device/ads/Configuration;->queueConfigurationListener(Lcom/amazon/device/ads/Configuration$ConfigurationListener;)V

    .line 100
    new-instance p3, Lcom/amazon/device/ads/AdLoadStarter$1;

    iget-object v4, p0, Lcom/amazon/device/ads/AdLoadStarter;->settings:Lcom/amazon/device/ads/Settings;

    iget-object v5, p0, Lcom/amazon/device/ads/AdLoadStarter;->configuration:Lcom/amazon/device/ads/Configuration;

    move-object v2, p3

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/amazon/device/ads/AdLoadStarter$1;-><init>(Lcom/amazon/device/ads/AdLoadStarter;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/ArrayList;)V

    .line 124
    invoke-virtual {p3}, Lcom/amazon/device/ads/StartUpWaiter;->start()V

    return-void
.end method
