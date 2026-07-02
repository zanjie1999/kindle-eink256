.class Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3$1;
.super Ljava/lang/Object;
.source "AmazonOOAdListenerExecutorFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3;->onSpecialUrlClicked(Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3;

.field final synthetic val$ad:Lcom/amazon/device/ads/Ad;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3;Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3$1;->this$1:Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3;

    iput-object p2, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3$1;->val$ad:Lcom/amazon/device/ads/Ad;

    iput-object p3, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3$1;->this$1:Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3;

    iget-object v0, v0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AmazonOOAdListener;

    .line 111
    iget-object v1, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3$1;->val$ad:Lcom/amazon/device/ads/Ad;

    iget-object v2, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/device/ads/AmazonOOAdListener;->onSpecialUrlClicked(Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V

    return-void
.end method
