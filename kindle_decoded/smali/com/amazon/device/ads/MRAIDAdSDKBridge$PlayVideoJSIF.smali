.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayVideoJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "PlayVideo"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    const-string v0, "PlayVideo"

    .line 1670
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1671
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .line 1677
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    const/4 v1, 0x0

    const-string/jumbo v2, "url"

    invoke-static {p1, v2, v1}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->playVideo(Ljava/lang/String;)V

    return-object v1
.end method
