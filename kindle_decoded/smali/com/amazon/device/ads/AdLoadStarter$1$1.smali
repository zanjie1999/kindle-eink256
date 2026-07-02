.class Lcom/amazon/device/ads/AdLoadStarter$1$1;
.super Ljava/lang/Object;
.source "AdLoadStarter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdLoadStarter$1;->startUpFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/ads/AdLoadStarter$1;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLoadStarter$1;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoadStarter$1$1;->this$1:Lcom/amazon/device/ads/AdLoadStarter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 118
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v1, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v2, "The configuration was unable to be loaded"

    invoke-direct {v0, v1, v2}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/amazon/device/ads/AdLoadStarter$1$1;->this$1:Lcom/amazon/device/ads/AdLoadStarter$1;

    iget-object v2, v1, Lcom/amazon/device/ads/AdLoadStarter$1;->this$0:Lcom/amazon/device/ads/AdLoadStarter;

    iget-object v1, v1, Lcom/amazon/device/ads/AdLoadStarter$1;->val$requestAdSlots:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lcom/amazon/device/ads/AdLoadStarter;->access$200(Lcom/amazon/device/ads/AdLoadStarter;Lcom/amazon/device/ads/AdError;Ljava/util/List;)V

    return-void
.end method
