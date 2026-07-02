.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$3;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fetchPicture(Ljava/lang/String;)V
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

    .line 943
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$3;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 947
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$3;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$3;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V

    return-void
.end method
