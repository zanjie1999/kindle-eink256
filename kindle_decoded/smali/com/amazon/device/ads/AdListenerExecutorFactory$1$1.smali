.class Lcom/amazon/device/ads/AdListenerExecutorFactory$1$1;
.super Ljava/lang/Object;
.source "AdListenerExecutorFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdListenerExecutorFactory$1;->onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/device/ads/AdListenerExecutorFactory$1;

.field final synthetic val$ad:Lcom/amazon/device/ads/Ad;

.field final synthetic val$positionOnScreen:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdListenerExecutorFactory$1;Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$1$1;->this$1:Lcom/amazon/device/ads/AdListenerExecutorFactory$1;

    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$1$1;->val$ad:Lcom/amazon/device/ads/Ad;

    iput-object p3, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$1$1;->val$positionOnScreen:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$1$1;->this$1:Lcom/amazon/device/ads/AdListenerExecutorFactory$1;

    iget-object v0, v0, Lcom/amazon/device/ads/AdListenerExecutorFactory$1;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/ExtendedAdListener;

    .line 63
    iget-object v1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$1$1;->val$ad:Lcom/amazon/device/ads/Ad;

    iget-object v2, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$1$1;->val$positionOnScreen:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2}, Lcom/amazon/device/ads/ExtendedAdListener;->onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V

    return-void
.end method
