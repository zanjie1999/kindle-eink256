.class Lcom/amazon/device/ads/MRAIDAdSDKEventListener$1;
.super Ljava/lang/Object;
.source "MRAIDAdSDKEventListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->handleShowingEvent(Lcom/amazon/device/ads/AdControlAccessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKEventListener;

.field final synthetic val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKEventListener;Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$1;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKEventListener;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$1;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$1;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$1;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1, p0}, Lcom/amazon/device/ads/AdControlAccessor;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 131
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$1;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKEventListener;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->access$000(Lcom/amazon/device/ads/MRAIDAdSDKEventListener;)Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v2

    .line 132
    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getX()I

    move-result v4

    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getY()I

    move-result v0

    .line 131
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->updateDefaultPosition(IIII)V

    .line 133
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener$1;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKEventListener;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;->access$000(Lcom/amazon/device/ads/MRAIDAdSDKEventListener;)Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationPropertyChange()V

    :cond_0
    return-void
.end method
