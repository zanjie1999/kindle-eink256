.class Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$SDKVersionJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "AmazonViewableAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SDKVersionJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "GetSDKVersion"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;


# direct methods
.method protected constructor <init>(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V
    .locals 1

    const-string v0, "GetSDKVersion"

    .line 313
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 314
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$SDKVersionJSIF;->bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 320
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 321
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$SDKVersionJSIF;->bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->access$300(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sdkVersion"

    invoke-static {p1, v1, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
