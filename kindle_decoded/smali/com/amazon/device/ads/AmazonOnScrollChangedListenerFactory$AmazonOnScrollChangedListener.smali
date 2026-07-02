.class Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory$AmazonOnScrollChangedListener;
.super Ljava/lang/Object;
.source "ViewabilityObserver.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmazonOnScrollChangedListener"
.end annotation


# instance fields
.field private final viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory;Lcom/amazon/device/ads/ViewabilityObserver;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p2, p0, Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory$AmazonOnScrollChangedListener;->viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/amazon/device/ads/AmazonOnScrollChangedListenerFactory$AmazonOnScrollChangedListener;->viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ViewabilityObserver;->fireViewableEvent(Z)V

    return-void
.end method
