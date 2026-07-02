.class Lcom/amazon/device/ads/AdLoader$1;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdLoader;->startFetchAdThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdLoader;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLoader;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoader$1;->this$0:Lcom/amazon/device/ads/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader$1;->this$0:Lcom/amazon/device/ads/AdLoader;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLoader;->fetchAd()V

    .line 103
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader$1;->this$0:Lcom/amazon/device/ads/AdLoader;

    invoke-static {v0}, Lcom/amazon/device/ads/AdLoader;->access$000(Lcom/amazon/device/ads/AdLoader;)V

    return-void
.end method
