.class public Lcom/amazon/falkor/download/EpisodeListDownloadHelper;
.super Ljava/lang/Object;
.source "EpisodeListDownload.kt"


# instance fields
.field private final currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

.field private currentEpisodeListViewController:Lcom/amazon/falkor/panels/EpisodeListViewController;

.field private episodeListAggregator:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

.field private final groupData:Lcom/amazon/falkor/utils/BookGroupUtils;

.field private final pagedDownloadListener:Lcom/amazon/falkor/download/EpisodeListDownloadHelper$pagedDownloadListener$1;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/utils/BookGroupUtils;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEpisodeInfoManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    iput-object p3, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->groupData:Lcom/amazon/falkor/utils/BookGroupUtils;

    .line 29
    new-instance p1, Lcom/amazon/falkor/download/EpisodeListDownloadHelper$pagedDownloadListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper$pagedDownloadListener$1;-><init>(Lcom/amazon/falkor/download/EpisodeListDownloadHelper;)V

    iput-object p1, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->pagedDownloadListener:Lcom/amazon/falkor/download/EpisodeListDownloadHelper$pagedDownloadListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/utils/BookGroupUtils;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 23
    new-instance p3, Lcom/amazon/falkor/utils/BookGroupUtils;

    invoke-direct {p3}, Lcom/amazon/falkor/utils/BookGroupUtils;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;Lcom/amazon/falkor/utils/BookGroupUtils;)V

    return-void
.end method

.method private final shouldInitiateDownload()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->episodeListAggregator:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public final getCurrentEpisodeListViewController()Lcom/amazon/falkor/panels/EpisodeListViewController;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->currentEpisodeListViewController:Lcom/amazon/falkor/panels/EpisodeListViewController;

    return-object v0
.end method

.method public getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->episodeListAggregator:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->getDownloadStatus()Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEpisodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/falkor/models/FalkorEpisode;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->episodeListAggregator:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->getEpisodes()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->episodeListAggregator:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    .line 89
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;->getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/falkor/models/FalkorEpisode;->getStoryAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->groupData:Lcom/amazon/falkor/utils/BookGroupUtils;

    iget-object v1, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v1

    const-string/jumbo v2, "sdk.libraryManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/amazon/falkor/utils/BookGroupUtils;->getStoryAsinForEpisode(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/library/ILibraryManager;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 92
    new-instance v1, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    iget-object v2, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v3, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->pagedDownloadListener:Lcom/amazon/falkor/download/EpisodeListDownloadHelper$pagedDownloadListener$1;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Lcom/amazon/falkor/download/PageDownloadListener;)V

    .line 93
    invoke-virtual {v1, p1}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 94
    iput-object v1, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->episodeListAggregator:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    :cond_2
    return-void
.end method

.method public final onEpisodeDownloadSuccess(Lcom/amazon/falkor/event/CurrentEpisodeDownloadFinishedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->shouldInitiateDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->getEpisode()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->initiateDownload(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->episodeListAggregator:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->episodeListAggregator:Lcom/amazon/falkor/download/EpisodeListPageDownloadAggregator;

    return-void
.end method

.method public final setCurrentEpisodeListViewController(Lcom/amazon/falkor/panels/EpisodeListViewController;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/falkor/download/EpisodeListDownloadHelper;->currentEpisodeListViewController:Lcom/amazon/falkor/panels/EpisodeListViewController;

    return-void
.end method
