.class Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment$1;
.super Ljava/lang/Object;
.source "StartActionsErrorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->StartActionTryAgain:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 58
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment$1;->this$0:Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;->upsellController:Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;->onReturnFromError()V

    return-void
.end method
