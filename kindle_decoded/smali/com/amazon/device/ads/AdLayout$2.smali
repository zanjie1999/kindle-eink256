.class Lcom/amazon/device/ads/AdLayout$2;
.super Ljava/lang/Object;
.source "AdLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdLayout;->collapseAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdLayout;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout$2;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$2;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$2;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-static {v0}, Lcom/amazon/device/ads/AdLayout;->access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->closeAd()Z

    :cond_0
    return-void
.end method
