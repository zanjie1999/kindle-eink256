.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->collapseExpandedAd(Lcom/amazon/device/ads/AdControlAccessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$700(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/AdControlAccessor;)V

    return-void
.end method
