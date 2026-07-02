.class Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$7;
.super Ljava/lang/Object;
.source "UpsellPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;->initPurchaseErrorView()V
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

    .line 369
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 373
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellPanelMoreDetails:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 374
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/UpsellPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->actionBarUpsellController:Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;->transitionToStore(Z)V

    return-void
.end method
