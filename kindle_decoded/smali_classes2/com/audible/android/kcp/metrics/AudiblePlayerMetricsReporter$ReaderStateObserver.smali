.class final Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;
.super Ljava/lang/Object;
.source "AudiblePlayerMetricsReporter.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/misc/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ReaderStateObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/model/write/IStateContext<",
        "Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;",
        ">;>;"
    }
.end annotation


# instance fields
.field private currentReaderState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

.field private previousReaderState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

.field final synthetic this$0:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;


# direct methods
.method private constructor <init>(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;->this$0:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$1;)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;-><init>(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/hushpuppy/model/write/IStateContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/model/write/IStateContext<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;",
            ">;)V"
        }
    .end annotation

    .line 205
    invoke-interface {p1}, Lcom/audible/hushpuppy/model/write/IStateContext;->getState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    .line 206
    invoke-static {}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->access$700()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reader state change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;->this$0:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->endNarration(Z)V

    .line 208
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;->currentReaderState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    iput-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;->previousReaderState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    .line 209
    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;->currentReaderState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    .line 210
    instance-of p1, p1, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;->this$0:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->SWITCH_TO_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    invoke-virtual {p1, v0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->emitMiniPlayerActionMetric(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 199
    check-cast p1, Lcom/audible/hushpuppy/model/write/IStateContext;

    invoke-virtual {p0, p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;->execute(Lcom/audible/hushpuppy/model/write/IStateContext;)V

    return-void
.end method

.method public getPreviousReaderState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;->previousReaderState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    return-object v0
.end method
