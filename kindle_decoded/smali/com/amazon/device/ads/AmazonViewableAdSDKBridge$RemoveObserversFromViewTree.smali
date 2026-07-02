.class Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$RemoveObserversFromViewTree;
.super Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;
.source "AmazonViewableAdSDKBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveObserversFromViewTree"
.end annotation


# static fields
.field private static final name:Ljava/lang/String; = "RemoveObserversFromViewTree"


# instance fields
.field private final bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V
    .locals 1

    const-string v0, "RemoveObserversFromViewTree"

    .line 274
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/JavascriptInteractor$JavascriptMethodExecutor;-><init>(Ljava/lang/String;)V

    .line 275
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$RemoveObserversFromViewTree;->bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    return-void
.end method


# virtual methods
.method protected execute(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 281
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge$RemoveObserversFromViewTree;->bridge:Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;

    invoke-static {p1}, Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;->access$100(Lcom/amazon/device/ads/AmazonViewableAdSDKBridge;)V

    const/4 p1, 0x0

    return-object p1
.end method
