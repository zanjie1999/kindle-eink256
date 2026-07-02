.class final Lcom/amazon/falkor/panels/EpisodeListViewController$updateShowTryAgain$1;
.super Ljava/lang/Object;
.source "EpisodeListViewController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/panels/EpisodeListViewController;->updateShowTryAgain()V
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

    iput-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateShowTryAgain$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateShowTryAgain$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getSdk$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_LOADING_CALLING_CLASS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOCRetryButtonTapped"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateShowTryAgain$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getCurrentEpisodeInfoManager$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-eq p1, v0, :cond_0

    .line 167
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateShowTryAgain$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getCurrentEpisodeInfoManager$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateShowTryAgain$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getCurrentBook$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateShowTryAgain$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getEpisodeListDownloadHelper$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-eq p1, v0, :cond_1

    .line 170
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateShowTryAgain$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getEpisodeListDownloadHelper$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/falkor/download/EpisodeListDownloadHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateShowTryAgain$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {v0}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$getCurrentBook$p(Lcom/amazon/falkor/panels/EpisodeListViewController;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/amazon/falkor/panels/EpisodeListViewController$updateShowTryAgain$1;->this$0:Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-static {p1}, Lcom/amazon/falkor/panels/EpisodeListViewController;->access$refreshAll(Lcom/amazon/falkor/panels/EpisodeListViewController;)V

    return-void
.end method
