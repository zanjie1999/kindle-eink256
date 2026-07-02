.class Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1$1;
.super Ljava/lang/Object;
.source "AmazonOOAdListenerExecutorFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1;->onAdEvent(Lcom/amazon/device/ads/AdEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1;

.field final synthetic val$adEvent:Lcom/amazon/device/ads/AdEvent;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1;Lcom/amazon/device/ads/AdEvent;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1$1;->this$1:Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1;

    iput-object p2, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1$1;->val$adEvent:Lcom/amazon/device/ads/AdEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1$1;->this$1:Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1;

    iget-object v0, v0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AmazonOOAdListener;

    .line 73
    new-instance v1, Lcom/amazon/device/ads/AmazonOOAdEvent;

    iget-object v2, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$1$1;->val$adEvent:Lcom/amazon/device/ads/AdEvent;

    invoke-direct {v1, v2}, Lcom/amazon/device/ads/AmazonOOAdEvent;-><init>(Lcom/amazon/device/ads/AdEvent;)V

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/AmazonOOAdListener;->onAdEvent(Lcom/amazon/device/ads/AmazonOOAdEvent;)V

    return-void
.end method
