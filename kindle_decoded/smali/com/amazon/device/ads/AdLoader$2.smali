.class Lcom/amazon/device/ads/AdLoader$2;
.super Ljava/lang/Object;
.source "AdLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdLoader;->beginFinalizeFetchAd()V
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

    .line 111
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoader$2;->this$0:Lcom/amazon/device/ads/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader$2;->this$0:Lcom/amazon/device/ads/AdLoader;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLoader;->finalizeFetchAd()V

    return-void
.end method
