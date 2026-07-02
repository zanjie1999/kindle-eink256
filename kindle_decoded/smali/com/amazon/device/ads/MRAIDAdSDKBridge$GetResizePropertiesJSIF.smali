.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetResizePropertiesJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "GetResizeProperties"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    const-string v0, "GetResizeProperties"

    .line 1542
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1543
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1549
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getResizeProperties()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
