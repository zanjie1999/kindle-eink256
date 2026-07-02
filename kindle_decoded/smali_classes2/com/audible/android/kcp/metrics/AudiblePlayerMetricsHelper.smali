.class Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;
.super Ljava/lang/Object;
.source "AudiblePlayerMetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;,
        Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 68
    iput-object p2, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    return-void
.end method

.method private getCurrentReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public convertReaderStateToContext(Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;)Ljava/lang/String;
    .locals 1

    .line 88
    instance-of v0, p1, Lcom/audible/hushpuppy/model/write/readerstate/LockScreenState;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/audible/hushpuppy/model/write/readerstate/OutsideApplicationState;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    instance-of v0, p1, Lcom/audible/hushpuppy/model/write/readerstate/InsideBookState;

    if-eqz v0, :cond_1

    .line 91
    sget-object p1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->INBOOK_MINI_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    invoke-static {p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->access$000(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 92
    :cond_1
    instance-of v0, p1, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;

    if-eqz v0, :cond_2

    .line 93
    sget-object p1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->INBOOK_FULL_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    invoke-static {p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->access$000(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 94
    :cond_2
    instance-of p1, p1, Lcom/audible/hushpuppy/model/write/readerstate/OutsideBookState;

    if-eqz p1, :cond_3

    .line 95
    sget-object p1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->IN_APP:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    invoke-static {p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->access$000(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    .line 89
    :cond_4
    :goto_0
    sget-object p1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->OUT_OF_APP:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    invoke-static {p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->access$000(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getCurrentContext()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/IStateContext;->getState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    .line 78
    invoke-virtual {p0, v0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->convertReaderStateToContext(Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentReadingMode()Ljava/lang/String;
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->getCurrentContext()Ljava/lang/String;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->OUT_OF_APP:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    invoke-static {v1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->access$000(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    invoke-direct {p0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->getCurrentReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne v0, v1, :cond_2

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->isContinuousScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;->VERTICAL_SCROLL:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;->PAGINATED:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

    :goto_0
    invoke-static {v0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;->access$100(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
