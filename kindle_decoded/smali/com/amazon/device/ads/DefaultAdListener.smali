.class public Lcom/amazon/device/ads/DefaultAdListener;
.super Ljava/lang/Object;
.source "DefaultAdListener.java"

# interfaces
.implements Lcom/amazon/device/ads/ExtendedAdListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "DefaultAdListener"


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/device/ads/DefaultAdListener;->LOGTAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v0, "Default ad listener called - Ad Collapsed."

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v0, "Default ad listener called - Ad Will Expand."

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onAdExpired(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v0, "Default ad listener called - Ad Expired."

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 3

    .line 58
    iget-object p1, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "Default ad listener called - Ad Failed to Load. Error code: %s, Error Message: %s"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string p2, "Default ad listener called - AdLoaded."

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/amazon/device/ads/DefaultAdListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string p2, "Default ad listener called - Ad Resized."

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void
.end method
