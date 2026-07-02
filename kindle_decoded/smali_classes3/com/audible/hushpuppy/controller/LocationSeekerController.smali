.class public final Lcom/audible/hushpuppy/controller/LocationSeekerController;
.super Lcom/audible/hushpuppy/controller/AbstractController;
.source "LocationSeekerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/controller/AbstractController<",
        "Lcom/audible/hushpuppy/model/write/HushpuppyModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final SEEKBAR_EBOOK_POSITION_DELAY_TIME:I = 0x190


# instance fields
.field private final audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field private final dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

.field private volatile ebookSeekBarPosition:I

.field private final handler:Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;

.field private final handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

.field private isActivityActive:Z

.field protected kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field protected libraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

.field private final metricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

.field protected narrationRate:Lcom/audible/hushpuppy/common/player/NarrationRate;

.field protected readAlongController:Lcom/audible/hushpuppy/controller/ReadAlongController;

.field protected readAlongModel:Lcom/audible/hushpuppy/model/write/ReadAlongModel;

.field private final readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

.field private recentContentSelection:Lcom/amazon/kindle/krx/content/IContentSelection;

.field private seekController:Lcom/audible/hushpuppy/controller/SeekController;

.field private waitingOnPlayerLoadForPlayButtonClicked:Z

.field private waitingOnPlayerLoadForPlayContentButtonClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/LocationSeekerController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/SeekController;Lcom/audible/hushpuppy/common/dialog/DialogManager;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;Lcom/audible/hushpuppy/common/player/NarrationRate;Lcom/audible/hushpuppy/controller/ReadAlongController;Lcom/audible/hushpuppy/controller/LibraryDownloadController;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/model/read/IReadAlongModel;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;)V
    .locals 0

    .line 175
    check-cast p2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-direct {p0, p2, p3}, Lcom/audible/hushpuppy/controller/AbstractController;-><init>(Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    .line 176
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 177
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 178
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    .line 179
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    .line 180
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 181
    iput-object p8, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handler:Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;

    .line 182
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->narrationRate:Lcom/audible/hushpuppy/common/player/NarrationRate;

    .line 183
    iput-object p10, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readAlongController:Lcom/audible/hushpuppy/controller/ReadAlongController;

    .line 184
    iput-object p11, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->libraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    .line 185
    iput-object p12, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 186
    check-cast p13, Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    iput-object p13, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readAlongModel:Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    .line 187
    new-instance p2, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    const/16 p4, 0x190

    invoke-direct {p2, p4}, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;-><init>(I)V

    iput-object p2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    .line 188
    iput-object p14, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 189
    iput-object p15, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->metricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    const/4 p2, 0x1

    .line 190
    iput-boolean p2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->isActivityActive:Z

    .line 192
    invoke-virtual {p3, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 193
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/controller/LocationSeekerController;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->ebookSeekBarPosition:I

    return p0
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 67
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/audible/hushpuppy/controller/LocationSeekerController;)Lcom/audible/hushpuppy/controller/SeekController;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/audible/hushpuppy/controller/LocationSeekerController;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->hideChromeAndCommitReaderPosition(I)V

    return-void
.end method

.method private getDownloadMetric()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;
    .locals 5

    .line 924
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEbookOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 925
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 926
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    .line 927
    sget-object v2, Lcom/audible/hushpuppy/controller/LocationSeekerController$4;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-string v4, "Current Reader Mode: %s"

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 935
    sget-object v2, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Reader Mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", returning Null for download Metrics"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-object v1

    .line 932
    :cond_0
    sget-object v1, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 933
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    return-object v0

    .line 929
    :cond_1
    sget-object v1, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 930
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromReaderMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    return-object v0

    :cond_2
    return-object v1
.end method

.method private getEbookPageEndPositionBasedOnReaderMode()I
    .locals 3

    .line 889
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 890
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 891
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    return v0

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    return v0
.end method

.method private getEbookPageStartPositionBasedOnReaderMode()I
    .locals 3

    .line 872
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 873
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 874
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    return v0

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    return v0
.end method

.method private getJumpBackAudioPosition(I)I
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentAudioPosition()I

    move-result v0

    sub-int/2addr v0, p1

    .line 945
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMinimumSyncedAudioPosition()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getJumpForwardAudioPosition(I)I
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentAudioPosition()I

    move-result v0

    add-int/2addr v0, p1

    .line 951
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast p1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMaximumSyncedAudioPosition()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private getPlayerActionMetric(Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEbookOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 455
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    .line 456
    sget-object v1, Lcom/audible/hushpuppy/controller/LocationSeekerController$4;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 460
    :cond_0
    invoke-static {p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->access$300(Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    move-result-object p1

    return-object p1

    .line 458
    :cond_1
    invoke-static {p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->access$200(Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    move-result-object p1

    return-object p1

    .line 465
    :cond_2
    invoke-static {p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->access$400(Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    move-result-object p1

    return-object p1
.end method

.method private handleDownloadButtonClicked()V
    .locals 5

    .line 741
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->showNetworkSettingsIfNeeded(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    sget-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;->PENDING:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadState(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$DownloadState;)V

    .line 746
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setDownloadProgressToEmpty()V

    .line 747
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/chrome/DownloadButtonClickedEvent;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v2

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v3, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v3}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isAudioFileFound()Z

    move-result v3

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v4, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v4}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isSyncFileFound()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/audible/hushpuppy/common/event/chrome/DownloadButtonClickedEvent;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private handlePauseButtonClicked()V
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->pause()V

    goto :goto_0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    sget-object v1, Lcom/audible/hushpuppy/common/player/PlayerState;->PAUSED:Lcom/audible/hushpuppy/common/player/PlayerState;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setPlayerState(Lcom/audible/hushpuppy/common/player/PlayerState;)V

    :goto_0
    return-void
.end method

.method private handleSpinnerClicked()V
    .locals 0

    return-void
.end method

.method private hideChromeAndCommitReaderPosition(I)V
    .locals 3

    .line 906
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->setOverlaysVisible(ZZ)V

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 912
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->commitToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    :cond_1
    return-void
.end method

.method private inContinuousScrollReaderMode()Z
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 275
    invoke-static {v0}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInvalidBookNavigatorPosition(Lcom/amazon/kindle/krx/reader/IBookNavigator;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 708
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 709
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getMostRecentPageReadEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private reloadFileIfNecessary()V
    .locals 6

    const-string v0, ""

    .line 316
    sget-object v1, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "reloadFileIfNecessary"

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    .line 318
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v2

    .line 319
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v3

    invoke-interface {v3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result v4

    .line 323
    :try_start_0
    iget-object v5, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v5, v3, v4}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->isAsinLoaded(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 324
    new-instance v1, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;

    invoke-direct {v1, v0, v0}, Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0, v2, v4}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getLocalAudiobookInfo(Lcom/audible/mobile/domain/Asin;Z)Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;->getAudioFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {v1, v3, v0, v4}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->loadFile(Ljava/lang/String;Ljava/io/File;Z)V

    goto :goto_0

    .line 333
    :cond_1
    sget-object v2, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "audiobookInfo %s, local audiobook file not found"

    invoke-interface {v2, v3, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/controller/SyncFilePathHelper;->getSyncFilePath(Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/relationship/IRelationship;)Ljava/io/File;

    move-result-object v0

    .line 337
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;

    const/4 v4, 0x0

    .line 338
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-direct {v3, v1, v4, v0}, Lcom/audible/hushpuppy/common/event/file/LocalAudiobookFileNotFoundEvent;-><init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;ZZ)V

    .line 337
    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/audible/hushpuppy/controller/audible/service/PlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 343
    sget-object v1, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Error calling the player service!"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getNarrationSpeedDialogLabel(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;)Ljava/lang/String;
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->narrationRate:Lcom/audible/hushpuppy/common/player/NarrationRate;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->rate()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/common/player/NarrationRate;->getTempoText(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleHeadphoneToggleButtonClicked()V
    .locals 3

    .line 559
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPlayerToggledOn()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Handling headphone toggle. Setting showPesistenPlayer to %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isPlayerToggledOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setShowPlayer(Z)V

    return-void
.end method

.method public jumpBack(I)V
    .locals 1

    .line 536
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->JumpBackMetric:Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->getPlayerActionMetric(Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 537
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->getJumpBackAudioPosition(I)I

    move-result p1

    .line 538
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(I)V

    return-void
.end method

.method public jumpForward(I)V
    .locals 1

    .line 548
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpForward:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 549
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->getJumpForwardAudioPosition(I)I

    move-result p1

    .line 550
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(I)V

    return-void
.end method

.method public onCancelDownload()V
    .locals 2

    .line 524
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadCancelled:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 525
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->tryToCancel(Lcom/audible/hushpuppy/common/relationship/IRelationship;)V

    return-void
.end method

.method public onContinuousScrollSupportChangedEvent(Lcom/amazon/kindle/krx/events/ContinuousScrollChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = false
    .end annotation

    .line 306
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->metricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->endNarration(Z)V

    return-void
.end method

.method public onDownloadErrorTryAgainClicked()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEbookOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handleDownloadButtonClicked()V

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->libraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getLastOpenedEBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->setEbookAndRelationship(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 514
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->libraryDownloadController:Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/controller/LibraryDownloadController;->handleLibraryDownload()V

    :goto_0
    return-void
.end method

.method public onDownloadNeededButtonClicked()V
    .locals 1

    .line 500
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->getDownloadMetric()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 501
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handleDownloadButtonClicked()V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ReaderActivityLifecycleEvent$OnPause;)V
    .locals 0

    const/4 p1, 0x0

    .line 295
    iput-boolean p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->isActivityActive:Z

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ReaderActivityLifecycleEvent$OnResume;)V
    .locals 0

    const/4 p1, 0x1

    .line 285
    iput-boolean p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->isActivityActive:Z

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/DownloadCancelledEvent;)V
    .locals 1

    .line 253
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->metricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->CANCEL_TO_DOWNLOAD:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    invoke-virtual {p1, v0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->emitMiniPlayerActionMetric(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/servicescallback/PlayerNewContentLoadedEvent;)V
    .locals 1

    .line 239
    iget-boolean p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->waitingOnPlayerLoadForPlayButtonClicked:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 240
    iput-boolean v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->waitingOnPlayerLoadForPlayButtonClicked:Z

    .line 241
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->onFileLoadedChromePlayClicked()V

    goto :goto_0

    .line 242
    :cond_0
    iget-boolean p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->waitingOnPlayerLoadForPlayContentButtonClicked:Z

    if-eqz p1, :cond_1

    .line 243
    iput-boolean v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->waitingOnPlayerLoadForPlayContentButtonClicked:Z

    .line 244
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->onFileLoadedContentSelectionPlayClicked()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFileLoadedChromePlayClicked()V
    .locals 9

    .line 575
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Play button clicked but sync data isn\'t loaded! Play button shouldn\'t be here!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 580
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->inContinuousScrollReaderMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Lcom/audible/hushpuppy/controller/audible/service/PlayerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMinimumSyncedAudioPosition()I

    move-result v0

    .line 598
    :goto_0
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMinimumSyncedAudioPosition()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMaximumSyncedAudioPosition()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 600
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    invoke-virtual {v2, v0, v1}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(IZ)V

    return-void

    .line 610
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getCurrentPosition()I

    move-result v0
    :try_end_1
    .catch Lcom/audible/hushpuppy/controller/audible/service/PlayerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 612
    :catch_1
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Unable to set current location based on current player position, fall back to the last location set on the model."

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCurrentAudioPosition()I

    move-result v0

    .line 620
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v3}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setMaxDurationAudioPosition(I)V

    .line 621
    sget-object v2, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "On play button clicked, maxDuration from services: %s"

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v4}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->getDuration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/audible/hushpuppy/controller/audible/service/PlayerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 623
    :catch_2
    sget-object v2, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Unable to set the duration inside the onFileLoadedChromePlayClicked"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 626
    :goto_2
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v2

    if-nez v2, :cond_2

    .line 627
    sget-object v2, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Playing when EBook is closed"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 628
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    invoke-virtual {v2, v0, v1}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(IZ)V

    return-void

    .line 632
    :cond_2
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->isInvalidBookNavigatorPosition(Lcom/amazon/kindle/krx/reader/IBookNavigator;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 633
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Unable to play. BookNavigator or IPosition is null"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 637
    :cond_3
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readerManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 639
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Unable to play. EBook position is invalid."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    .line 640
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;->PlayButtonClicked_InvalidEBookPosition:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$ErrorMetric;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Occurred:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void

    .line 644
    :cond_4
    :try_start_3
    iget-object v4, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v4, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v4}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getRangeMembership(Lcom/audible/hushpuppy/sync/ISyncData;I)Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    move-result-object v4

    .line 645
    iget-object v5, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v5, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v5, v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getEBookPositionRelativeToSyncedContent(I)Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    move-result-object v2

    .line 647
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->getEbookPageStartPositionBasedOnReaderMode()I

    move-result v5

    .line 648
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->getEbookPageEndPositionBasedOnReaderMode()I

    move-result v6

    .line 649
    iget-object v7, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v7, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v7}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v7

    invoke-static {v7, v5, v6}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getMinAudiobookPosFromEBookRange(Lcom/audible/hushpuppy/sync/ISyncData;II)I

    move-result v7

    .line 650
    iget-object v8, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v8, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v8}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v8

    invoke-static {v8, v5, v6}, Lcom/audible/hushpuppy/sync/SyncDataUtils;->getMaxAudiobookPosFromEBookRange(Lcom/audible/hushpuppy/sync/ISyncData;II)I

    move-result v6

    if-lt v0, v7, :cond_5

    if-gt v0, v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_6

    .line 654
    sget-object v6, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->WITHIN:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    if-ne v4, v6, :cond_6

    .line 657
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    invoke-virtual {v2, v0, v1}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(IZ)V

    .line 658
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v1}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v1, v2, :cond_b

    .line 659
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->hideChromeAndCommitReaderPosition(I)V

    goto/16 :goto_4

    .line 661
    :cond_6
    sget-object v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->WITHIN:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    if-ne v2, v0, :cond_7

    if-eq v7, v3, :cond_7

    .line 665
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    invoke-virtual {v0, v7, v1}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(IZ)V

    .line 666
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_b

    .line 667
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, v7}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->hideChromeAndCommitReaderPosition(I)V

    goto/16 :goto_4

    .line 669
    :cond_7
    sget-object v0, Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;->AFTER:Lcom/audible/hushpuppy/sync/SyncDataUtils$RangeMembership;

    if-eq v2, v0, :cond_9

    .line 672
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, v7}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 673
    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->readAlongModel:Lcom/audible/hushpuppy/model/write/ReadAlongModel;

    invoke-virtual {v2, v0}, Lcom/audible/hushpuppy/model/write/ReadAlongModel;->isPositionOnPage(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 674
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    invoke-virtual {v0, v7, v1}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(IZ)V

    .line 675
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_b

    .line 676
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, v7}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getCorrespondingEBookPosition(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->hideChromeAndCommitReaderPosition(I)V

    goto :goto_4

    .line 681
    :cond_8
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->dialogManager:Lcom/audible/hushpuppy/common/dialog/DialogManager;

    new-instance v1, Lcom/audible/hushpuppy/controller/LocationSeekerController$3;

    invoke-direct {v1, p0, v5}, Lcom/audible/hushpuppy/controller/LocationSeekerController$3;-><init>(Lcom/audible/hushpuppy/controller/LocationSeekerController;I)V

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/dialog/DialogManager;->onUnsynchronizedContent(Lcom/audible/hushpuppy/common/misc/IVoidCallback;)V

    goto :goto_4

    .line 693
    :cond_9
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isEbookOutsideSampleRegion()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 696
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Playing outside sample region"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getMinimumSyncedAudioPosition()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(IZ)V

    goto :goto_4

    .line 700
    :cond_a
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Play button clicked, but we\'re not in synced content. Play button shouldnt be clickable!"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 703
    :catch_3
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;->Asin_key:Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getSyncData()Lcom/audible/hushpuppy/sync/ISyncData;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/sync/ISyncData;->getAsinId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->Asin_id:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    invoke-virtual {v0, v1, v2, v3}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Ljava/lang/String;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public onFileLoadedContentSelectionPlayClicked()V
    .locals 3

    .line 773
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->seekController:Lcom/audible/hushpuppy/controller/SeekController;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->recentContentSelection:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {v1, v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getSyncedAudiobookPosition(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/controller/SeekController;->seekTo(IZ)V

    .line 774
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayFromHere:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    return-void
.end method

.method public onPlayControlClicked()V
    .locals 6

    .line 360
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onPlayControlClicked()"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getPlayerControlType()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    move-result-object v0

    .line 362
    sget-object v1, Lcom/audible/hushpuppy/controller/LocationSeekerController$4;->$SwitchMap$com$audible$hushpuppy$model$read$IHushpuppyModel$PlayerControlTypeVisibility:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 377
    sget-object v1, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Play control was clicked but state doesn\'t make sense: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handleDownloadButtonClicked()V

    goto :goto_0

    .line 371
    :cond_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handleSpinnerClicked()V

    goto :goto_0

    .line 368
    :cond_2
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handlePauseButtonClicked()V

    goto :goto_0

    .line 364
    :cond_3
    iput-boolean v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->waitingOnPlayerLoadForPlayButtonClicked:Z

    .line 365
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reloadFileIfNecessary()V

    :goto_0
    return-void
.end method

.method public onPlaySelectionControlClicked(Lcom/amazon/kindle/krx/content/IContentSelection;)V
    .locals 2

    .line 757
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onPlaySelectionControlClicked()"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->isContentSelectionPlayable(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 759
    sget-object p1, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "onPlaySelectionControlClicked contentSelection was clicked but is not synced!"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 761
    :cond_0
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->recentContentSelection:Lcom/amazon/kindle/krx/content/IContentSelection;

    const/4 p1, 0x1

    .line 762
    iput-boolean p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->waitingOnPlayerLoadForPlayContentButtonClicked:Z

    .line 763
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reloadFileIfNecessary()V

    :goto_0
    return-void
.end method

.method public onPlayerPlayControlClicked()V
    .locals 5

    .line 388
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$4;->$SwitchMap$com$audible$hushpuppy$model$read$IHushpuppyModel$PlayerControlTypeVisibility:[I

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getPlayerControlType()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 404
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Play control was clicked but state doesn\'t make sense: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v4, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v4}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getPlayerControlType()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handleDownloadButtonClicked()V

    goto :goto_0

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handleSpinnerClicked()V

    goto :goto_0

    .line 394
    :cond_2
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->PausedMetric:Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->getPlayerActionMetric(Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 395
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handlePauseButtonClicked()V

    goto :goto_0

    .line 390
    :cond_3
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->PlayedMetric:Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->getPlayerActionMetric(Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 391
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->onPlayControlClicked()V

    :goto_0
    return-void
.end method

.method public onProgressChanged(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 207
    sget-object p2, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 209
    new-instance p2, Lcom/audible/hushpuppy/controller/LocationSeekerController$1;

    invoke-direct {p2, p0, p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController$1;-><init>(Lcom/audible/hushpuppy/controller/LocationSeekerController;I)V

    .line 217
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handler:Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;

    invoke-virtual {v0, p2}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->post(Ljava/lang/Runnable;)V

    .line 220
    :cond_0
    iput p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->ebookSeekBarPosition:I

    .line 222
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    new-instance p2, Lcom/audible/hushpuppy/controller/LocationSeekerController$2;

    invoke-direct {p2, p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController$2;-><init>(Lcom/audible/hushpuppy/controller/LocationSeekerController;)V

    invoke-virtual {p1, p2}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onScrubbingStarted()V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setScrubbing(Z)V

    return-void
.end method

.method public onScrubbingStopped()V
    .locals 0

    return-void
.end method

.method public reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V
    .locals 2

    if-nez p1, :cond_0

    .line 803
    sget-object p1, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "No Valid key to report click metric"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 806
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, p1, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 807
    instance-of v0, p1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;->DownloadFromReaderMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$DownloadMetricKey;

    .line 808
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->metricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->TAP_TO_DOWNLOAD:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    invoke-virtual {p1, v0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->emitMiniPlayerActionMetric(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;)V

    goto :goto_0

    .line 811
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpBackFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpBackFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 812
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 813
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->metricsReporter:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->REWIND30:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    invoke-virtual {p1, v0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->emitMiniPlayerActionMetric(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setNarrationSpeedSettingFromDialog(I)V
    .locals 2

    .line 855
    invoke-static {}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->values()[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    move-result-object v0

    aget-object p1, v0, p1

    .line 856
    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->rate()F

    move-result v0

    .line 858
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1, p1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->setNarrationSpeed(Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;)V

    .line 859
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->narrationRate:Lcom/audible/hushpuppy/common/player/NarrationRate;

    invoke-virtual {v1, v0}, Lcom/audible/hushpuppy/common/player/NarrationRate;->setTempo(F)V

    .line 860
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->changeNarrationSpeed(F)V

    .line 861
    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->metricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    return-void
.end method

.method public setNarrationSpeedToNormal()V
    .locals 2

    .line 831
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->narrationRate:Lcom/audible/hushpuppy/common/player/NarrationRate;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/player/NarrationRate;->setNarrationTempoToNormal()V

    .line 832
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->narrationRate:Lcom/audible/hushpuppy/common/player/NarrationRate;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/player/NarrationRate;->getTempoFloat()F

    move-result v0

    .line 833
    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->changeNarrationSpeed(F)V

    return-void
.end method

.method public upsellPlayPauseButtonClicked()V
    .locals 3

    .line 474
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$4;->$SwitchMap$com$audible$hushpuppy$model$read$IHushpuppyModel$PlayerControlTypeVisibility:[I

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v1, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getPlayerControlType()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 488
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pitch control was clicked but state doesn\'t make sense: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AbstractController;->model:Ljava/lang/Object;

    check-cast v2, Lcom/audible/hushpuppy/model/write/HushpuppyModel;

    invoke-virtual {v2}, Lcom/audible/hushpuppy/model/write/HushpuppyModel;->getPlayerControlType()Lcom/audible/hushpuppy/model/read/IHushpuppyModel$PlayerControlTypeVisibility;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellSamplePaused:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 484
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->handlePauseButtonClicked()V

    goto :goto_0

    .line 477
    :cond_1
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->setNarrationSpeedToNormal()V

    .line 478
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;->UpsellSamplePlayed:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$UpsellMetricKey;

    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reportClick(Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;)V

    .line 479
    iput-boolean v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController;->waitingOnPlayerLoadForPlayButtonClicked:Z

    .line 480
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->reloadFileIfNecessary()V

    :goto_0
    return-void
.end method
