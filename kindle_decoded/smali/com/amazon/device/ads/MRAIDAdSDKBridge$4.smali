.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->savePicture(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 957
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 961
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/GraphicsUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->val$bitmap:Landroid/graphics/Bitmap;

    const-string v1, "AdImage"

    const-string v2, "Image created by rich media ad."

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/amazon/device/ads/GraphicsUtils;->insertImageInMediaStore(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 962
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 964
    iget-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    const-string p2, "Picture could not be stored to device."

    const-string/jumbo v0, "storePicture"

    invoke-static {p1, p2, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$600(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 967
    :cond_0
    iget-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-static {p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x0

    invoke-static {p2, v0, p1, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method
