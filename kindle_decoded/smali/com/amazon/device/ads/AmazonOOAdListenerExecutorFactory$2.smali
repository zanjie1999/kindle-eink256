.class Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$2;
.super Ljava/lang/Object;
.source "AmazonOOAdListenerExecutorFactory.java"

# interfaces
.implements Lcom/amazon/device/ads/OnAdReceivedCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;->createAdReceivedCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;Lcom/amazon/device/ads/AdListenerExecutor;)V
    .locals 0

    .line 84
    iput-object p2, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$2;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdReceived(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdData;)Lcom/amazon/device/ads/ActionCode;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$2;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AmazonOOAdListener;

    .line 88
    new-instance v1, Lcom/amazon/device/ads/AmazonOOAdResponse;

    invoke-direct {v1, p2}, Lcom/amazon/device/ads/AmazonOOAdResponse;-><init>(Lcom/amazon/device/ads/AdData;)V

    invoke-interface {v0, p1, v1}, Lcom/amazon/device/ads/AmazonOOAdListener;->onAdReceived(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AmazonOOAdResponse;)Lcom/amazon/device/ads/AmazonOOActionCode;

    move-result-object p1

    if-nez p1, :cond_0

    .line 92
    sget-object p1, Lcom/amazon/device/ads/ActionCode;->DISPLAY:Lcom/amazon/device/ads/ActionCode;

    return-object p1

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/ads/AmazonOOActionCode;->getActionCode()Lcom/amazon/device/ads/ActionCode;

    move-result-object p1

    return-object p1
.end method
