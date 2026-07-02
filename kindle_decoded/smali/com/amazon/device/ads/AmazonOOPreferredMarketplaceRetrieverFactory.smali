.class Lcom/amazon/device/ads/AmazonOOPreferredMarketplaceRetrieverFactory;
.super Ljava/lang/Object;
.source "AmazonOOPreferredMarketplaceRetrieverFactory.java"


# instance fields
.field private final mapUtils:Lcom/amazon/device/ads/MAPUtils;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/amazon/device/ads/MAPUtils;

    invoke-direct {v0}, Lcom/amazon/device/ads/MAPUtils;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AmazonOOPreferredMarketplaceRetrieverFactory;-><init>(Lcom/amazon/device/ads/MAPUtils;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MAPUtils;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonOOPreferredMarketplaceRetrieverFactory;->mapUtils:Lcom/amazon/device/ads/MAPUtils;

    return-void
.end method


# virtual methods
.method public createPreferredMarketplaceRetriever()Lcom/amazon/device/ads/PreferredMarketplaceRetriever;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOPreferredMarketplaceRetrieverFactory;->mapUtils:Lcom/amazon/device/ads/MAPUtils;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MAPUtils;->isMAPAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lcom/amazon/device/ads/AuthenticationPlatformPreferredMarketplaceRetriever;

    new-instance v1, Lcom/amazon/device/ads/AmazonOOMAPAdapter;

    invoke-direct {v1}, Lcom/amazon/device/ads/AmazonOOMAPAdapter;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AuthenticationPlatformPreferredMarketplaceRetriever;-><init>(Lcom/amazon/device/ads/AuthenticationPlatformAdapter;)V

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lcom/amazon/device/ads/PreferredMarketplaceRetriever$NullPreferredMarketplaceRetriever;

    invoke-direct {v0}, Lcom/amazon/device/ads/PreferredMarketplaceRetriever$NullPreferredMarketplaceRetriever;-><init>()V

    return-object v0
.end method
