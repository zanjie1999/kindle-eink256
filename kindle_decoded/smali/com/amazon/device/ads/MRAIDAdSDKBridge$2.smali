.class Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;
.super Ljava/lang/Object;
.source "MRAIDAdSDKBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/MRAIDAdSDKBridge;->storePicture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iput-object p2, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;->this$0:Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->access$200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;)V

    return-void
.end method
