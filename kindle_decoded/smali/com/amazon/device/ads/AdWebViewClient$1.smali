.class Lcom/amazon/device/ads/AdWebViewClient$1;
.super Ljava/lang/Object;
.source "AdWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdWebViewClient;->checkResources()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdWebViewClient;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdWebViewClient;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient$1;->this$0:Lcom/amazon/device/ads/AdWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$1;->this$0:Lcom/amazon/device/ads/AdWebViewClient;

    invoke-static {v0}, Lcom/amazon/device/ads/AdWebViewClient;->access$000(Lcom/amazon/device/ads/AdWebViewClient;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->reload()V

    return-void
.end method
