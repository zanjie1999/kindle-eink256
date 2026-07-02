.class Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory$OOAdListenerExecutorConstructor;
.super Ljava/lang/Object;
.source "AmazonOOAdListenerExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonOOAdListenerExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OOAdListenerExecutorConstructor"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)Lcom/amazon/device/ads/AdListenerExecutor;
    .locals 1

    .line 123
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutorFactory;

    invoke-direct {v0, p2}, Lcom/amazon/device/ads/AdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutorFactory;->createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object p1

    return-object p1
.end method
