.class Lcom/amazon/device/ads/AuthenticationPlatformPreferredMarketplaceRetriever;
.super Ljava/lang/Object;
.source "AuthenticationPlatformPreferredMarketplaceRetriever.java"

# interfaces
.implements Lcom/amazon/device/ads/PreferredMarketplaceRetriever;


# instance fields
.field private final authenticationPlatformAdapter:Lcom/amazon/device/ads/AuthenticationPlatformAdapter;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AuthenticationPlatformAdapter;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/device/ads/AuthenticationPlatformPreferredMarketplaceRetriever;->authenticationPlatformAdapter:Lcom/amazon/device/ads/AuthenticationPlatformAdapter;

    return-void
.end method


# virtual methods
.method public retrievePreferredMarketplace(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/device/ads/AuthenticationPlatformPreferredMarketplaceRetriever;->authenticationPlatformAdapter:Lcom/amazon/device/ads/AuthenticationPlatformAdapter;

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/AuthenticationPlatformAdapter;->setContext(Landroid/content/Context;)Lcom/amazon/device/ads/AuthenticationPlatformAdapter;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/device/ads/AuthenticationPlatformAdapter;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
