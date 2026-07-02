.class public final Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;
.super Ljava/lang/Object;
.source "EpisodeListDownload.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEpisodeListDownload.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EpisodeListDownload.kt\ncom/amazon/falkor/download/EpisodeListPageDownloadAggregator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,206:1\n1491#2,2:207\n1491#2,2:209\n*E\n*S KotlinDebug\n*F\n+ 1 EpisodeListDownload.kt\ncom/amazon/falkor/download/EpisodeListPageDownloadAggregator\n*L\n144#1,2:207\n166#1,2:209\n*E\n"
.end annotation


# instance fields
.field private final isInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final onPageDownloadFailed:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onPageDownloadSuccess:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/falkor/models/FalkorEpisodeList;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final pageDownloadListener:Lcom/amazon/falkor/download/PageDownloadListener;

.field private final pagedListDownloadManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/falkor/download/EpisodeListPageDownloadManager;",
            ">;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final storyAsin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/falkor/download/PageDownloadListener;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "storyAsin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pageDownloadListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->storyAsin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->pageDownloadListener:Lcom/amazon/falkor/download/PageDownloadListener;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->pagedListDownloadManagers:Ljava/util/List;

    .line 107
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->isInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    new-instance p1, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadSuccess$1;

    invoke-direct {p1, p0}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadSuccess$1;-><init>(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;)V

    iput-object p1, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->onPageDownloadSuccess:Lkotlin/jvm/functions/Function2;

    .line 127
    new-instance p1, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadFailed$1;

    invoke-direct {p1, p0}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator$onPageDownloadFailed$1;-><init>(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;)V

    iput-object p1, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->onPageDownloadFailed:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$downloadPage(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;Lcom/amazon/kindle/krx/content/IBook;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->downloadPage(Lcom/amazon/kindle/krx/content/IBook;I)V

    return-void
.end method

.method public static final synthetic access$getPageDownloadListener$p(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;)Lcom/amazon/falkor/download/PageDownloadListener;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->pageDownloadListener:Lcom/amazon/falkor/download/PageDownloadListener;

    return-object p0
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method private final downloadPage(Lcom/amazon/kindle/krx/content/IBook;I)V
    .locals 7

    .line 179
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->isInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    new-instance v0, Lcom/amazon/falkor/download/EpisodeListPageDownloadManager;

    iget-object v2, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v3, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->storyAsin:Ljava/lang/String;

    .line 184
    iget-object v5, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->onPageDownloadSuccess:Lkotlin/jvm/functions/Function2;

    iget-object v6, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->onPageDownloadFailed:Lkotlin/jvm/functions/Function0;

    move-object v1, v0

    move v4, p2

    .line 183
    invoke-direct/range {v1 .. v6}, Lcom/amazon/falkor/download/EpisodeListPageDownloadManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    .line 185
    iget-object p2, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->pagedListDownloadManagers:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v0, p1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method


# virtual methods
.method public final getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->pagedListDownloadManagers:Ljava/util/List;

    .line 209
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/falkor/download/EpisodeListPageDownloadManager;

    .line 167
    invoke-virtual {v1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 168
    invoke-virtual {v1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne v1, v2, :cond_0

    return-object v2

    .line 169
    :cond_2
    :goto_0
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    return-object v0

    .line 175
    :cond_3
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    return-object v0
.end method

.method public final getEpisodes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/falkor/models/FalkorEpisode;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->pagedListDownloadManagers:Ljava/util/List;

    .line 207
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/falkor/download/EpisodeListPageDownloadManager;

    .line 145
    invoke-virtual {v2}, Lcom/amazon/falkor/download/FalkorDownloadManager;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/falkor/models/FalkorEpisodeList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/falkor/models/FalkorEpisodeList;->getEpisodes()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 147
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    iget-object v1, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v1}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitTOCFetchStart(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 158
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "TOCFetch"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->downloadPage(Lcom/amazon/kindle/krx/content/IBook;I)V

    return-void
.end method

.method public final interrupt()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->isInterrupted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
