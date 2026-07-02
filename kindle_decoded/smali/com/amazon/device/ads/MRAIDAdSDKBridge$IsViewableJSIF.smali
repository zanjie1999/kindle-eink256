.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$IsViewableJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IsViewableJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "IsViewable"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    const-string v0, "IsViewable"

    .line 1597
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1598
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$IsViewableJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 1604
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1605
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$IsViewableJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Z

    move-result v0

    const-string v1, "isViewable"

    invoke-static {p1, v1, v0}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-object p1
.end method
