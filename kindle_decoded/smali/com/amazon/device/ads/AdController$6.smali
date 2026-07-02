.class Lcom/amazon/device/ads/AdController$6;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdController;->callOnAdLoaded(Lcom/amazon/device/ads/AdProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdController;

.field final synthetic val$adProperties:Lcom/amazon/device/ads/AdProperties;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdProperties;)V
    .locals 0

    .line 1481
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$6;->this$0:Lcom/amazon/device/ads/AdController;

    iput-object p2, p0, Lcom/amazon/device/ads/AdController$6;->val$adProperties:Lcom/amazon/device/ads/AdProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1485
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$6;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$6;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdController$6;->val$adProperties:Lcom/amazon/device/ads/AdProperties;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/AdControlCallback;->onAdLoaded(Lcom/amazon/device/ads/AdProperties;)V

    return-void
.end method
