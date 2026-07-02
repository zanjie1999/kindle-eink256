.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Lcom/amazon/device/ads/PreloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ExpandProperties;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreloadComplete(Ljava/lang/String;)V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    const-string/jumbo v1, "mraidBridge.stateChange(\'expanded\');"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascriptPreload(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    const-string/jumbo v1, "mraidBridge.ready();"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascriptPreload(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/AdControllerFactory;->cacheAdControlAccessor(Lcom/amazon/device/ads/AdControlAccessor;)V

    .line 676
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;->val$expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-static {v0, p1, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;Lcom/amazon/device/ads/ExpandProperties;)V

    return-void
.end method
