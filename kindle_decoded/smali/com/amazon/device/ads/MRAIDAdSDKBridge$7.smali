.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->collapseExpandedAdOnThread(Lcom/amazon/device/ads/AdControlAccessor;)V
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

    .line 1024
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;->val$adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0, p0}, Lcom/amazon/device/ads/AdControlAccessor;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1029
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    return-void
.end method
