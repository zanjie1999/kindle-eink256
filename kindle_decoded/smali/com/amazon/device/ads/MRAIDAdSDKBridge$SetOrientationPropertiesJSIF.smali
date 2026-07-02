.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetOrientationPropertiesJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "SetOrientationProperties"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    const-string v0, "SetOrientationProperties"

    .line 1489
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1490
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    return-void
.end method


# virtual methods
.method public execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 1496
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->setOrientationProperties(Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    return-object p1
.end method
