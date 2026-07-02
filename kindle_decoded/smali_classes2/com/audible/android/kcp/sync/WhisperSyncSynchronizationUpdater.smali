.class public Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;
.super Ljava/lang/Object;
.source "WhisperSyncSynchronizationUpdater.java"

# interfaces
.implements Lcom/audible/android/kcp/sync/SynchronizationUpdater;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mMetricsManager:Lcom/audible/android/kcp/metrics/AiRMetricsManager;

.field private final mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

.field private final mPositionSyncManager:Lcom/audible/android/kcp/sync/SynchronizationManager;

.field private final mWhisperSyncManager:Lcom/amazon/kindle/krx/sync/ISyncManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/android/kcp/sync/SynchronizationManager;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/amazon/kindle/krx/sync/ISyncManager;)V
    .locals 1

    .line 29
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;-><init>(Lcom/audible/android/kcp/sync/SynchronizationManager;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/amazon/kindle/krx/sync/ISyncManager;Lcom/audible/android/kcp/metrics/AiRMetricsManager;)V

    return-void
.end method

.method protected constructor <init>(Lcom/audible/android/kcp/sync/SynchronizationManager;Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/amazon/kindle/krx/sync/ISyncManager;Lcom/audible/android/kcp/metrics/AiRMetricsManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->mPositionSyncManager:Lcom/audible/android/kcp/sync/SynchronizationManager;

    .line 36
    iput-object p2, p0, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    .line 37
    iput-object p3, p0, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->mWhisperSyncManager:Lcom/amazon/kindle/krx/sync/ISyncManager;

    .line 38
    iput-object p4, p0, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->mMetricsManager:Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    return-void
.end method

.method private doesBookMatch(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 89
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private syncCurrentAudiobook(Lcom/amazon/kindle/krx/content/IBook;Lcom/audible/android/kcp/metrics/AiRMetricKey;)V
    .locals 6

    .line 53
    iget-object v0, p0, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->getCompanionEbook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz p1, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 60
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->doesBookMatch(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    sget-object p2, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "The player\'s book and book parameter do not match! Ebook: $1%s Player: $2%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v1}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->getCurrentPositionMillis()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 68
    sget-object p1, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The player has not played anything! PlayerAsin: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    :cond_2
    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    .line 73
    sget-object p1, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The audiobook position is greater than what is supported in other components. Audiobook Position: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->mPositionSyncManager:Lcom/audible/android/kcp/sync/SynchronizationManager;

    long-to-int v2, v1

    invoke-interface {v0, v2}, Lcom/audible/android/kcp/sync/SynchronizationManager;->getEBookPositionFromAudiobookPosition(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p2, :cond_4

    .line 80
    iget-object v1, p0, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->mMetricsManager:Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    invoke-interface {v1, p2}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->reportMetric(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 83
    :cond_4
    sget-object p2, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Whispersyncing to ebook pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->mWhisperSyncManager:Lcom/amazon/kindle/krx/sync/ISyncManager;

    invoke-interface {p2, p1, v0}, Lcom/amazon/kindle/krx/sync/ISyncManager;->updateAndSyncLPR(Lcom/amazon/kindle/krx/content/IBook;I)Z

    return-void

    .line 56
    :cond_5
    :goto_0
    sget-object p1, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "The player\'s book and book parameter must not be null!"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public syncCurrentAudiobookIfPlaying(Lcom/amazon/kindle/krx/content/IBook;Lcom/audible/android/kcp/metrics/AiRMetricKey;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/audible/android/kcp/sync/WhisperSyncSynchronizationUpdater;->syncCurrentAudiobook(Lcom/amazon/kindle/krx/content/IBook;Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    :cond_0
    return-void
.end method
