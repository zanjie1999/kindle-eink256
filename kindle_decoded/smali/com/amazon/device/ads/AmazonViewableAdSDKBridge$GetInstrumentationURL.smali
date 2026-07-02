.class Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$GetInstrumentationURL;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "AmazonViewableAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetInstrumentationURL"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "GetInstrumentationURL"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V
    .locals 1

    const-string v0, "GetInstrumentationURL"

    .line 293
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 294
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$GetInstrumentationURL;->bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    return-void
.end method


# virtual methods
.method protected execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 300
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 301
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$GetInstrumentationURL;->bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->access$200(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "instrumentationPixelUrl"

    invoke-static {p1, v1, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
