.class Lcom/amazon/device/ads/AmazonOnGlobalLayoutListenerFactory$AmazonOnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "ViewabilityObserver.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonOnGlobalLayoutListenerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmazonOnGlobalLayoutListener"
.end annotation


# instance fields
.field private final viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonOnGlobalLayoutListenerFactory;Lcom/amazon/device/ads/ViewabilityObserver;)V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p2, p0, Lcom/amazon/device/ads/AmazonOnGlobalLayoutListenerFactory$AmazonOnGlobalLayoutListener;->viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOnGlobalLayoutListenerFactory$AmazonOnGlobalLayoutListener;->viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewabilityObserver;->addOnScrollChangedListenerIfNeeded()V

    .line 391
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOnGlobalLayoutListenerFactory$AmazonOnGlobalLayoutListener;->viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ViewabilityObserver;->fireViewableEvent(Z)V

    return-void
.end method
