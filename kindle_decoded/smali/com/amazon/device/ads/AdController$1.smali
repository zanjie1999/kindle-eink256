.class Lcom/amazon/device/ads/AdController$1;
.super Ljava/util/TimerTask;
.source "AdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdController;->prepareForAdLoad(JZ)Z
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

    .line 864
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$1;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$1;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->onAdTimedOut()V

    return-void
.end method
