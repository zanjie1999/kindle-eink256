.class Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment$1;
.super Ljava/lang/Object;
.source "StartActionsReadAndListenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionReadAndListen:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 88
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;->upsellController:Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->onReadAndListenClicked()V

    .line 89
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->onPlayControlClicked()V

    return-void
.end method
