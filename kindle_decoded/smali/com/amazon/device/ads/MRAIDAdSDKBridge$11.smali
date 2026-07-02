.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$11;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationPropertyChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 0

    .line 1352
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$11;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1356
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$11;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$900(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdControlAccessor;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1358
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$11;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    return-void
.end method
