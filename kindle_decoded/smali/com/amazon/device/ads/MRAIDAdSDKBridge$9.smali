.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeAdOnThread(Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

.field final synthetic val$resizeSize:Lcom/amazon/device/ads/Size;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;)V
    .locals 0

    .line 1056
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    iput-object p3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 1060
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$900(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdControlAccessor;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1061
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$900(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getMaxSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    .line 1062
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iget-object v2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    iget-object v3, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;->val$resizeSize:Lcom/amazon/device/ads/Size;

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;Lcom/amazon/device/ads/Size;)V

    return-void
.end method
