.class Lcom/amazon/device/ads/AdController$7;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdController;->callOnAdRendered()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdController;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 0

    .line 1497
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$7;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1501
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$7;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->canBeUsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1505
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$7;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/device/ads/AdControlCallback;->onAdRendered()V

    return-void
.end method
