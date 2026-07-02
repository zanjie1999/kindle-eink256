.class public Lcom/amazon/device/ads/AdTargetingOptions;
.super Ljava/lang/Object;
.source "AdTargetingOptions.java"


# static fields
.field private static final DEFAULT_DISPLAY_ENABLED:Z = true

.field private static final DEFAULT_FLOOR_PRICE:J = 0x0L

.field private static final DEFAULT_GEOTARGETING_ENABLED:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "AdTargetingOptions"


# instance fields
.field private final advanced:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private displayEnabled:Z

.field private enableGeoTargeting:Z

.field private floorPrice:J

.field private final internalPublisherKeywords:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private videoEnabled:Z

.field private final videoEnabledSettable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/amazon/device/ads/AndroidBuildInfo;

    invoke-direct {v0}, Lcom/amazon/device/ads/AndroidBuildInfo;-><init>()V

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>(Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AndroidBuildInfo;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->floorPrice:J

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoTargeting:Z

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->displayEnabled:Z

    .line 46
    sget-object v0, Lcom/amazon/device/ads/AdTargetingOptions;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/device/ads/AdTargetingOptions;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 47
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    .line 48
    invoke-static {p1}, Lcom/amazon/device/ads/AdTargetingOptions;->isVideoEnabledSettable(Lcom/amazon/device/ads/AndroidBuildInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabledSettable:Z

    .line 50
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabled:Z

    .line 51
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->internalPublisherKeywords:Ljava/util/HashSet;

    return-void
.end method

.method private static isVideoEnabledSettable(Lcom/amazon/device/ads/AndroidBuildInfo;)Z
    .locals 1

    const/16 v0, 0xe

    .line 77
    invoke-static {p0, v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(Lcom/amazon/device/ads/AndroidBuildInfo;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAdvancedOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getCopyOfAdvancedOptions()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/amazon/device/ads/AdTargetingOptions;->advanced:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getFloorPrice()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->floorPrice:J

    return-wide v0
.end method

.method getInternalPublisherKeywords()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->internalPublisherKeywords:Ljava/util/HashSet;

    return-object v0
.end method

.method hasFloorPrice()Z
    .locals 5

    .line 105
    iget-wide v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->floorPrice:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isDisplayAdsEnabled()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->displayEnabled:Z

    return v0
.end method

.method public isGeoLocationEnabled()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoTargeting:Z

    return v0
.end method

.method isVideoAdsEnabled()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabled:Z

    return v0
.end method

.method isVideoEnabledSettable()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdTargetingOptions;->videoEnabledSettable:Z

    return v0
.end method
