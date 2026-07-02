.class Lcom/amazon/device/ads/AdLoadStarter$1;
.super Lcom/amazon/device/ads/StartUpWaiter;
.source "AdLoadStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdLoadStarter;->loadAds(ILcom/amazon/device/ads/AdTargetingOptions;[Lcom/amazon/device/ads/AdSlot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdLoadStarter;

.field final synthetic val$requestAdSlots:Ljava/util/ArrayList;

.field final synthetic val$requestOptions:Lcom/amazon/device/ads/AdTargetingOptions;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLoadStarter;Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/ArrayList;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoadStarter$1;->this$0:Lcom/amazon/device/ads/AdLoadStarter;

    iput p4, p0, Lcom/amazon/device/ads/AdLoadStarter$1;->val$timeout:I

    iput-object p5, p0, Lcom/amazon/device/ads/AdLoadStarter$1;->val$requestOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    iput-object p6, p0, Lcom/amazon/device/ads/AdLoadStarter$1;->val$requestAdSlots:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/amazon/device/ads/StartUpWaiter;-><init>(Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/Configuration;)V

    return-void
.end method


# virtual methods
.method protected startUpFailed()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoadStarter$1;->this$0:Lcom/amazon/device/ads/AdLoadStarter;

    invoke-static {v0}, Lcom/amazon/device/ads/AdLoadStarter;->access$300(Lcom/amazon/device/ads/AdLoadStarter;)Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/AdLoadStarter$1$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/AdLoadStarter$1$1;-><init>(Lcom/amazon/device/ads/AdLoadStarter$1;)V

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->RUN_ASAP:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v3, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    return-void
.end method

.method protected startUpReady()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoadStarter$1;->this$0:Lcom/amazon/device/ads/AdLoadStarter;

    invoke-static {v0}, Lcom/amazon/device/ads/AdLoadStarter;->access$000(Lcom/amazon/device/ads/AdLoadStarter;)Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->register()V

    .line 106
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoadStarter$1;->this$0:Lcom/amazon/device/ads/AdLoadStarter;

    iget v1, p0, Lcom/amazon/device/ads/AdLoadStarter$1;->val$timeout:I

    iget-object v2, p0, Lcom/amazon/device/ads/AdLoadStarter$1;->val$requestOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    iget-object v3, p0, Lcom/amazon/device/ads/AdLoadStarter$1;->val$requestAdSlots:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/device/ads/AdLoadStarter;->access$100(Lcom/amazon/device/ads/AdLoadStarter;ILcom/amazon/device/ads/AdTargetingOptions;Ljava/util/List;)V

    return-void
.end method
