.class final Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EpisodeListDownload.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/falkor/download/PageDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        "Lcom/amazon/falkor/models/FalkorEpisodeList;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadSuccess$1;->this$0:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 102
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    check-cast p2, Lcom/amazon/falkor/models/FalkorEpisodeList;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadSuccess$1;->invoke(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/falkor/models/FalkorEpisodeList;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/falkor/models/FalkorEpisodeList;)V
    .locals 3

    const-string v0, "currentBook"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 112
    invoke-virtual {p2}, Lcom/amazon/falkor/models/FalkorEpisodeList;->getNextPageNumber()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    sget-object p1, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadSuccess$1;->this$0:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    invoke-static {v0}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->access$getSdk$p(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitTOCFetchEnd(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 116
    iget-object p1, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadSuccess$1;->this$0:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    invoke-static {p1}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->access$getSdk$p(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->getTOC_LOADING_CALLING_CLASS()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TOCFetchEvent"

    const-string v2, "TOCFetch"

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadSuccess$1;->this$0:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->access$downloadPage(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;Lcom/amazon/kindle/krx/content/IBook;I)V

    .line 122
    :goto_0
    iget-object p1, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadSuccess$1;->this$0:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    invoke-static {p1}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->access$getPageDownloadListener$p(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;)Lcom/amazon/falkor/download/PageDownloadListener;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/falkor/models/FalkorEpisodeList;->getEpisodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/falkor/download/PageDownloadListener;->onPageDownloadSuccess(Ljava/util/List;)V

    :cond_1
    return-void
.end method
