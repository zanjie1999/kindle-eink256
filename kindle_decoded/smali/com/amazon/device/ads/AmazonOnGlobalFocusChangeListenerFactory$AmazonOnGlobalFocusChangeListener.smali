.class Lcom/amazon/device/ads/AmazonOnGlobalFocusChangeListenerFactory$AmazonOnGlobalFocusChangeListener;
.super Ljava/lang/Object;
.source "ViewabilityObserver.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AmazonOnGlobalFocusChangeListenerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AmazonOnGlobalFocusChangeListener"
.end annotation


# instance fields
.field private final viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/AmazonOnGlobalFocusChangeListenerFactory;Lcom/amazon/device/ads/ViewabilityObserver;)V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Lcom/amazon/device/ads/AmazonOnGlobalFocusChangeListenerFactory$AmazonOnGlobalFocusChangeListener;->viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 336
    iget-object p1, p0, Lcom/amazon/device/ads/AmazonOnGlobalFocusChangeListenerFactory$AmazonOnGlobalFocusChangeListener;->viewabilityObserver:Lcom/amazon/device/ads/ViewabilityObserver;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/ViewabilityObserver;->fireViewableEvent(Z)V

    return-void
.end method
