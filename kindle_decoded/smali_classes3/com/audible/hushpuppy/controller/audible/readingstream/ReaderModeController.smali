.class public Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;
.super Ljava/lang/Object;
.source "ReaderModeController.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    return-void
.end method


# virtual methods
.method public final handleReaderModeChangedEvent(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    if-eqz p1, :cond_2

    .line 44
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    const-string v2, "Reader Mode Changed: %s"

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController$1;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;->getReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;->switchToInsideBookMode()V

    return-void

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ReaderModeController;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;->switchToPlayerMode()V

    :cond_2
    return-void
.end method
