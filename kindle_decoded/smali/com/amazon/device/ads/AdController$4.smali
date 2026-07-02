.class Lcom/amazon/device/ads/AdController$4;
.super Ljava/util/TimerTask;
.source "AdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdController;->startExpirationTimer()V
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

    .line 1450
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$4;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1454
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$4;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$100(Lcom/amazon/device/ads/AdController;)V

    return-void
.end method
