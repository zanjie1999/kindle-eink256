.class Lcom/amazon/device/ads/AdListenerExecutor$1;
.super Ljava/lang/Object;
.source "AdListenerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdListenerExecutor;->onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdListenerExecutor;

.field final synthetic val$ad:Lcom/amazon/device/ads/Ad;

.field final synthetic val$adProperties:Lcom/amazon/device/ads/AdProperties;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor$1;->this$0:Lcom/amazon/device/ads/AdListenerExecutor;

    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutor$1;->val$ad:Lcom/amazon/device/ads/Ad;

    iput-object p3, p0, Lcom/amazon/device/ads/AdListenerExecutor$1;->val$adProperties:Lcom/amazon/device/ads/AdProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor$1;->this$0:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdListenerExecutor$1;->val$ad:Lcom/amazon/device/ads/Ad;

    iget-object v2, p0, Lcom/amazon/device/ads/AdListenerExecutor$1;->val$adProperties:Lcom/amazon/device/ads/AdProperties;

    invoke-interface {v0, v1, v2}, Lcom/amazon/device/ads/AdListener;->onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V

    return-void
.end method
