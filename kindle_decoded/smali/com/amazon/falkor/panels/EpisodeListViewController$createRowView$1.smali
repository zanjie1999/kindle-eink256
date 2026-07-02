.class final Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;
.super Ljava/lang/Object;
.source "EpisodeListViewController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/panels/EpisodeListViewController;->createRowView(ZZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $asin:Ljava/lang/String;

.field final synthetic $controller:Lcom/amazon/falkor/panels/EpisodeRowViewController;

.field final synthetic $isHighlighted:Z

.field final synthetic $isPaywalled:Z

.field final synthetic this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/panels/EpisodeListViewController;Ljava/lang/String;ZZLcom/amazon/falkor/panels/EpisodeRowViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    iput-object p2, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->$asin:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->$isPaywalled:Z

    iput-boolean p4, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->$isHighlighted:Z

    iput-object p5, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->$controller:Lcom/amazon/falkor/panels/EpisodeRowViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 208
    sget-object p1, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getSdk$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->$asin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitTOCTapped(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    .line 210
    iget-boolean p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->$isPaywalled:Z

    const-string v0, "TOCLockedEpisodePerformanceKey"

    const-string v1, "TOCEpisodePerformanceKey"

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getSdk$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getSdk$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object v2, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_NAVIGATION_CALLING_CLASS()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TOCLockedEpisodeTapped"

    invoke-interface {p1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getSdk$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 216
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getSdk$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object v2, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_NAVIGATION_CALLING_CLASS()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TOCEpisodeTapped"

    invoke-interface {p1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    iget-boolean p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->$isHighlighted:Z

    if-nez p1, :cond_1

    .line 220
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->$controller:Lcom/amazon/falkor/panels/EpisodeRowViewController;

    invoke-virtual {p1}, Lcom/amazon/falkor/panels/EpisodeRowViewController;->requestOpenEpisode()V

    goto :goto_1

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getSdk$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$createRowView$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getSdk$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
