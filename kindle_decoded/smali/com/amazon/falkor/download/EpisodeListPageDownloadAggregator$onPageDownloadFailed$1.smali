.class final Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadFailed$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EpisodeListDownload.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadFailed$1;->this$0:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadFailed$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadFailed$1;->this$0:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    invoke-static {v0}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->access$getPageDownloadListener$p(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;)Lcom/amazon/falkor/download/PageDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/falkor/download/PageDownloadListener;->onPageDownloadFailed()V

    .line 129
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadFailed$1;->this$0:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    invoke-static {v0}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->access$getSdk$p(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "TOCFetch"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    return-void
.end method
