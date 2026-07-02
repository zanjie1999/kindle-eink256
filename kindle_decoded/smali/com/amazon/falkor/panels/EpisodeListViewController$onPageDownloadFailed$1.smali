.class final Lcom/amazon/falkor/panels/EpisodeListViewController$onPageDownloadFailed$1;
.super Ljava/lang/Object;
.source "EpisodeListViewController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/panels/EpisodeListViewController;->onPageDownloadFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/panels/EpisodeListViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$onPageDownloadFailed$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$onPageDownloadFailed$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getSdk$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_LOADING_CALLING_CLASS()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TOCPageFetchFailed"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$onPageDownloadFailed$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$refreshOthers(Lcom/amazon/falkor/panels/EpisodeListViewController;)V

    .line 65
    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$onPageDownloadFailed$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$reportMetricsIfNeeded(Lcom/amazon/falkor/panels/EpisodeListViewController;)V

    return-void
.end method
