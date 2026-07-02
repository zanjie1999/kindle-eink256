.class public final Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;
.super Ljava/lang/Object;
.source "ForegroundStateController.java"


# static fields
.field private static final DELAY_TIME:Lcom/audible/mobile/domain/Time;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final applicationForegroundedRunnable:Ljava/lang/Runnable;

.field private final handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

.field private final readerBackgroundedRunnable:Ljava/lang/Runnable;

.field private final readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 30
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xfa

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->DELAY_TIME:Lcom/audible/mobile/domain/Time;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/common/system/IWorkerHandler;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "readerStateContext can\'t be null."

    .line 50
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "handler can\'t be null"

    .line 51
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    .line 54
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    .line 55
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->createApplicationForegroundedRunnable()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->applicationForegroundedRunnable:Ljava/lang/Runnable;

    .line 56
    invoke-direct {p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->createReaderBackgroundRunnable()Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->readerBackgroundedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 26
    sget-object v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;)Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    return-object p0
.end method

.method private createApplicationForegroundedRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 111
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController$1;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController$1;-><init>(Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;)V

    return-object v0
.end method

.method private createReaderBackgroundRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 122
    new-instance v0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController$2;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController$2;-><init>(Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;)V

    return-object v0
.end method


# virtual methods
.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;)V
    .locals 4

    .line 66
    sget-object v0, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;->BACKGROUND:Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    if-ne v0, p1, :cond_0

    .line 67
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Application is backgrounded"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 69
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Remove possible delayed #readerBackgrounded()"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->readerBackgroundedRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/system/IWorkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Call #applicationBackgrounded()"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;->applicationBackgrounded()V

    goto :goto_0

    .line 74
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;->FOREGROUND:Lcom/audible/hushpuppy/common/event/common/ApplicationForegroundStateChangeEvent;

    if-ne v0, p1, :cond_1

    .line 75
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Application is foregrounded"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 77
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Post delayed #applicationForegrounded()"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->applicationForegroundedRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->DELAY_TIME:Lcom/audible/mobile/domain/Time;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->DELAY_TIME:Lcom/audible/mobile/domain/Time;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/audible/hushpuppy/common/system/IWorkerHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 80
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Unknown ApplicationForegroundStateChangeEvent. This shouldn\'t happen."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;)V
    .locals 4

    .line 91
    sget-object v0, Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;->BACKGROUND:Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;

    if-ne v0, p1, :cond_0

    .line 92
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Reader Activity is backgrounded"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 94
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Post delayed #readerBackgrounded()"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->readerBackgroundedRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->DELAY_TIME:Lcom/audible/mobile/domain/Time;

    invoke-interface {v1}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v1

    sget-object v2, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->DELAY_TIME:Lcom/audible/mobile/domain/Time;

    invoke-interface {v2}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/audible/hushpuppy/common/system/IWorkerHandler;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 96
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;->FOREGROUND:Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;

    if-ne v0, p1, :cond_1

    .line 97
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Reader Activity is foregrounded"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 99
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Remove possible delayed #applicationForegrounded()"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->handler:Lcom/audible/hushpuppy/common/system/IWorkerHandler;

    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->applicationForegroundedRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/system/IWorkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Call #readerActivityForegrounded()"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;->readerActivityForegrounded()V

    goto :goto_0

    .line 105
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Unknown ReaderActivityForegroundStateChangeEvent. This shouldn\'t happen."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
