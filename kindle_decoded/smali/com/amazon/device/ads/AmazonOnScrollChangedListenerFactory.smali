.class Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory;
.super Ljava/lang/Object;
.source "ViewabilityObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory$AmazonOnScrollChangedListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAmazonOnScrollChangedListenerFactory(Lcom/amazon/device/ads/ViewabilityObserver;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 1

    .line 345
    new-instance v0, Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory$AmazonOnScrollChangedListener;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory$AmazonOnScrollChangedListener;-><init>(Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory;Lcom/amazon/device/ads/ViewabilityObserver;)V

    return-object v0
.end method
