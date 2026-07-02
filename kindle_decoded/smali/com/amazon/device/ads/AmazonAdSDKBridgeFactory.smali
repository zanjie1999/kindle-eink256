.class Lcom/amazon/device/ads/AmazonAdSDKBridgeFactory;
.super Ljava/lang/Object;
.source "AmazonAdSDKBridgeFactory.java"

# interfaces
.implements Lcom/amazon/device/ads/AdSDKBridgeFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdSDKBridge(Lcom/amazon/device/ads/AdControlAccessor;)Lcom/amazon/device/ads/AdSDKBridge;
    .locals 2

    .line 14
    new-instance v0, Lcom/amazon/device/ads/JavascriptInteractor;

    invoke-direct {v0}, Lcom/amazon/device/ads/JavascriptInteractor;-><init>()V

    .line 15
    new-instance v1, Lcom/amazon/device/ads/AmazonAdSDKBridge;

    invoke-direct {v1, p1, v0}, Lcom/amazon/device/ads/AmazonAdSDKBridge;-><init>(Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/JavascriptInteractor;)V

    return-object v1
.end method
