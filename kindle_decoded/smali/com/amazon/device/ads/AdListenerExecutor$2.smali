.class Lcom/amazon/device/ads/AdListenerExecutor$2;
.super Ljava/lang/Object;
.source "AdListenerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdListenerExecutor;->onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdListenerExecutor;

.field final synthetic val$ad:Lcom/amazon/device/ads/Ad;

.field final synthetic val$adError:Lcom/amazon/device/ads/AdError;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor$2;->this$0:Lcom/amazon/device/ads/AdListenerExecutor;

    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutor$2;->val$ad:Lcom/amazon/device/ads/Ad;

    iput-object p3, p0, Lcom/amazon/device/ads/AdListenerExecutor$2;->val$adError:Lcom/amazon/device/ads/AdError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor$2;->this$0:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdListenerExecutor$2;->val$ad:Lcom/amazon/device/ads/Ad;

    iget-object v2, p0, Lcom/amazon/device/ads/AdListenerExecutor$2;->val$adError:Lcom/amazon/device/ads/AdError;

    invoke-interface {v0, v1, v2}, Lcom/amazon/device/ads/AdListener;->onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V

    return-void
.end method
