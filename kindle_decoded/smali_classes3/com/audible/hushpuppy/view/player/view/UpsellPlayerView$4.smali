.class Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$4;
.super Ljava/lang/Object;
.source "UpsellPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initDelayPurchaseQueuedView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$4;->this$0:Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 325
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$4;->this$0:Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->actionBarUpsellController:Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPurchaseCancel:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 326
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$4;->this$0:Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->actionBarUpsellController:Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->onCancelOrder()V

    return-void
.end method
