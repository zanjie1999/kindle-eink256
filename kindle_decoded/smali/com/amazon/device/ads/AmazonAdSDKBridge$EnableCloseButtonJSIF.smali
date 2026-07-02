.class Lcom/amazon/device/ads/AmazonAdSDKBridge$EnableCloseButtonJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "AmazonAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnableCloseButtonJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "EnableCloseButton"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonAdSDKBridge;)V
    .locals 1

    const-string v0, "EnableCloseButton"

    .line 259
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 260
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge$EnableCloseButtonJSIF;->bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonAdSDKBridge$EnableCloseButtonJSIF;->bridge:Lcom/amazon/device/ads/AmazonAdSDKBridge;

    const-string v1, "enable"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/amazon/device/ads/JSONUtils;->getBooleanFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/amazon/device/ads/AmazonAdSDKBridge;->access$100(Lcom/amazon/device/ads/AmazonAdSDKBridge;Z)V

    const/4 p1, 0x0

    return-object p1
.end method
