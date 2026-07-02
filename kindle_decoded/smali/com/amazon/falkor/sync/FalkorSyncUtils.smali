.class public Lcom/amazon/falkor/sync/FalkorSyncUtils;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "FalkorSyncUtils.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentEpisodeInfoManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    iput-object p1, p0, Lcom/amazon/falkor/sync/FalkorSyncUtils;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/falkor/sync/FalkorSyncUtils;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    .line 20
    const-class p1, Lcom/amazon/falkor/sync/FalkorSyncUtils;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/falkor/sync/FalkorSyncUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic updateLastReadEpisode$default(Lcom/amazon/falkor/sync/FalkorSyncUtils;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/falkor/utils/BookGroupUtils;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 25
    new-instance p2, Lcom/amazon/falkor/utils/BookGroupUtils;

    invoke-direct {p2}, Lcom/amazon/falkor/utils/BookGroupUtils;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/falkor/sync/FalkorSyncUtils;->updateLastReadEpisode(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/falkor/utils/BookGroupUtils;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateLastReadEpisode"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onCurrentEpisodeDownloadFinishedEvent(Lcom/amazon/falkor/event/CurrentEpisodeDownloadFinishedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/amazon/falkor/event/FalkorDownloadFinishedEvent;->getEpisode()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/amazon/falkor/sync/FalkorSyncUtils;->updateLastReadEpisode$default(Lcom/amazon/falkor/sync/FalkorSyncUtils;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/falkor/utils/BookGroupUtils;ILjava/lang/Object;)V

    return-void
.end method

.method public final triggerATLSync(Lcom/amazon/falkor/event/FalkorATLEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/amazon/falkor/sync/FalkorSyncUtils;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSyncManager()Lcom/amazon/kindle/krx/sync/ISyncManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/sync/ISyncManager;->triggerFalkorATLSync()V

    return-void
.end method

.method public final updateLastReadEpisode(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/falkor/utils/BookGroupUtils;)V
    .locals 2

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/amazon/falkor/sync/FalkorSyncUtils;->currentEpisodeInfoManager:Lcom/amazon/falkor/download/CurrentEpisodeInfoDownloadManager;

    invoke-virtual {v0}, Lcom/amazon/falkor/download/EpisodeInfoDownloadManager;->getEpisode()Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/falkor/models/FalkorEpisode;->getStoryAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/amazon/falkor/sync/FalkorSyncUtils;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.libraryManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v0}, Lcom/amazon/falkor/utils/BookGroupUtils;->getStoryAsinForEpisode(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/library/ILibraryManager;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 30
    iget-object p2, p0, Lcom/amazon/falkor/sync/FalkorSyncUtils;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSyncManager()Lcom/amazon/kindle/krx/sync/ISyncManager;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/amazon/kindle/krx/sync/ISyncManager;->updateFalkorLastReadEpisode(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_2
    iget-object p1, p0, Lcom/amazon/falkor/sync/FalkorSyncUtils;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/falkor/sync/FalkorSyncUtils;->TAG:Ljava/lang/String;

    const-string v0, "Failed to send Falkor LastReadEpisode update"

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
