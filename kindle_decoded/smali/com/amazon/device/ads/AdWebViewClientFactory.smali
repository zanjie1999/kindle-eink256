.class Lcom/amazon/device/ads/AdWebViewClientFactory;
.super Ljava/lang/Object;
.source "AdWebViewClientFactory.java"


# instance fields
.field private final androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

.field private final loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

.field private final webUtils:Lcom/amazon/device/ads/WebUtils2;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AndroidBuildInfo;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClientFactory;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    .line 19
    iput-object p2, p0, Lcom/amazon/device/ads/AdWebViewClientFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 20
    iput-object p3, p0, Lcom/amazon/device/ads/AdWebViewClientFactory;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    return-void
.end method


# virtual methods
.method public createAdWebViewClient(Landroid/content/Context;Lcom/amazon/device/ads/AdSDKBridgeList;Lcom/amazon/device/ads/AdControlAccessor;)Lcom/amazon/device/ads/AdWebViewClient;
    .locals 8

    .line 25
    new-instance v7, Lcom/amazon/device/ads/AdWebViewClient;

    iget-object v4, p0, Lcom/amazon/device/ads/AdWebViewClientFactory;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    iget-object v5, p0, Lcom/amazon/device/ads/AdWebViewClientFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    iget-object v6, p0, Lcom/amazon/device/ads/AdWebViewClientFactory;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/AdWebViewClient;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSDKBridgeList;Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AndroidBuildInfo;)V

    return-object v7
.end method
