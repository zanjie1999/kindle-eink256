.class Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;
.super Ljava/lang/Object;
.source "NonLinearFragmentStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->showFullPageFragment(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

.field final synthetic val$manager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;->this$0:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;->val$manager:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 397
    iget-object v0, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;->val$manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;->this$0:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    iget-object v3, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;->val$manager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->access$000(Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    .line 399
    iget-object v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;->this$0:Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;

    sget-object v2, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->BIRDSEYE:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    iget-object v3, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;->val$manager:Landroidx/fragment/app/FragmentManager;

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;->access$000(Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager;Lcom/amazon/kindle/nln/NonLinearNavigationMode;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentTransaction;)V

    .line 400
    iget-object v1, p0, Lcom/amazon/kindle/fragment/NonLinearFragmentStateManager$1;->val$manager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-string v2, "AmazonKindle"

    const-string v3, "NonLinearFragmentStateManager"

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 405
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "HideFragmentAfterActivityDestroyed"

    const-string v4, "showFullPageFragment"

    .line 406
    invoke-virtual {v1, v3, v2, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;ILjava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 407
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    .line 403
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :goto_0
    return-void
.end method
