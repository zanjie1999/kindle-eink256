.class Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;
.super Ljava/lang/Object;
.source "AdListenerExecutorFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdListenerExecutorFactory$2;->onAdExpired(Lcom/amazon/device/ads/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/ads/AdListenerExecutorFactory$2;

.field final synthetic val$ad:Lcom/amazon/device/ads/Ad;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdListenerExecutorFactory$2;Lcom/amazon/device/ads/Ad;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;->this$1:Lcom/amazon/device/ads/AdListenerExecutorFactory$2;

    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;->val$ad:Lcom/amazon/device/ads/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;->this$1:Lcom/amazon/device/ads/AdListenerExecutorFactory$2;

    iget-object v0, v0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/ExtendedAdListener;

    .line 83
    iget-object v1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;->val$ad:Lcom/amazon/device/ads/Ad;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/ExtendedAdListener;->onAdExpired(Lcom/amazon/device/ads/Ad;)V

    return-void
.end method
