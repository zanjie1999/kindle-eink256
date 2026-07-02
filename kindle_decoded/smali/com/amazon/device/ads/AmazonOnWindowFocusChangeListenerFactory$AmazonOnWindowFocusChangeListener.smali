.class Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory$AmazonOnWindowFocusChangeListener;
.super Ljava/lang/Object;
.source "ViewabilityObserver.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmazonOnWindowFocusChangeListener"
.end annotation


# instance fields
.field private final viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory;Lcom/amazon/device/ads/ViewabilityObserver;)V
    .locals 0

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory$AmazonOnWindowFocusChangeListener;->viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 415
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonOnWindowFocusChangeListenerFactory$AmazonOnWindowFocusChangeListener;->viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/ViewabilityObserver;->fireViewableEvent(Z)V

    return-void
.end method
