.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetExpandPropertiesJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "GetExpandProperties"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    const-string v0, "GetExpandProperties"

    .line 1507
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1508
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1514
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getExpandPropertiesForCreative()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
