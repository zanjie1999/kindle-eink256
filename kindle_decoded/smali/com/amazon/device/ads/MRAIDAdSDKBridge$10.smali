.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeAdHelper(Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/Size;Lcom/amazon/device/ads/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$vto:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .line 1148
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 1152
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/ViewUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->val$vto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, v1, p0}, Lcom/amazon/device/ads/ViewUtils;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1154
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 1155
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    iget-object v6, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1158
    invoke-static {v6}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    .line 1159
    invoke-static {v4}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$1200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1160
    new-instance v0, Lcom/amazon/device/ads/AdEvent;

    sget-object v2, Lcom/amazon/device/ads/AdEvent$AdEventType;->RESIZED:Lcom/amazon/device/ads/AdEvent$AdEventType;

    invoke-direct {v0, v2}, Lcom/amazon/device/ads/AdEvent;-><init>(Lcom/amazon/device/ads/AdEvent$AdEventType;)V

    const-string/jumbo v2, "positionOnScreen"

    .line 1161
    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/AdEvent;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/device/ads/AdEvent;

    .line 1162
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$900(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->fireAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    .line 1164
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$900(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    const-string/jumbo v1, "mraidBridge.stateChange(\'resized\');"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 1165
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    return-void
.end method
