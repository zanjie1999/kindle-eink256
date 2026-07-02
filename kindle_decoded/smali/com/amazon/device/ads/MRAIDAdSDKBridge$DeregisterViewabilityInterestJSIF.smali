.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$DeregisterViewabilityInterestJSIF;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "MRAIDAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeregisterViewabilityInterestJSIF"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "DeregisterViewabilityInterest"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 1

    const-string v0, "DeregisterViewabilityInterest"

    .line 1784
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 1785
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$DeregisterViewabilityInterestJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    return-void
.end method


# virtual methods
.method protected execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1791
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$DeregisterViewabilityInterestJSIF;->bridge:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    const/4 p1, 0x0

    return-object p1
.end method
