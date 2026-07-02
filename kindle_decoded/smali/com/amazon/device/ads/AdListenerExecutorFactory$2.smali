.class Lcom/amazon/device/ads/AdListenerExecutorFactory$2;
.super Ljava/lang/Object;
.source "AdListenerExecutorFactory.java"

# interfaces
.implements Lcom/amazon/device/ads/OnAdExpiredCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdListenerExecutorFactory;->createAdExpiredCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdListenerExecutor;)V
    .locals 0

    .line 74
    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdExpired(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .line 77
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;-><init>(Lcom/amazon/device/ads/AdListenerExecutorFactory$2;Lcom/amazon/device/ads/Ad;)V

    .line 86
    iget-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
