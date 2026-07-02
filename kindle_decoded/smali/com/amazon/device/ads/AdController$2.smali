.class Lcom/amazon/device/ads/AdController$2;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdController;->injectJavascript(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdController;

.field final synthetic val$javascript:Ljava/lang/String;

.field final synthetic val$preload:Z


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdController;Ljava/lang/String;Z)V
    .locals 0

    .line 1089
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$2;->this$0:Lcom/amazon/device/ads/AdController;

    iput-object p2, p0, Lcom/amazon/device/ads/AdController$2;->val$javascript:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazon/device/ads/AdController$2;->val$preload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1093
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$2;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdController$2;->val$javascript:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/device/ads/AdController$2;->val$preload:Z

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/AdContainer;->injectJavascript(Ljava/lang/String;Z)V

    return-void
.end method
