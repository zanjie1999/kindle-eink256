.class Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3;
.super Ljava/lang/Object;
.source "AmazonOOAdListenerExecutorFactory.java"

# interfaces
.implements Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;->createSpecialUrlClickedCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V
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

    .line 102
    iput-object p2, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpecialUrlClicked(Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V
    .locals 1

    .line 105
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3$1;-><init>(Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3;Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$3;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
