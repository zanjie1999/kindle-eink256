.class Lcom/amazon/device/ads/AmazonOnGlobalFocusChangeListenerFactory;
.super Ljava/lang/Object;
.source "ViewabilityObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AmazonOnGlobalFocusChangeListenerFactory$AmazonOnGlobalFocusChangeListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildAmazonOnGlobalFocusChangedListener(Lcom/amazon/device/ads/ViewabilityObserver;)Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
    .locals 1

    .line 321
    new-instance v0, Lcom/amazon/device/ads/AmazonOnGlobalFocusChangeListenerFactory$AmazonOnGlobalFocusChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AmazonOnGlobalFocusChangeListenerFactory$AmazonOnGlobalFocusChangeListener;-><init>(Lcom/amazon/device/ads/AmazonOnGlobalFocusChangeListenerFactory;Lcom/amazon/device/ads/ViewabilityObserver;)V

    return-object v0
.end method
