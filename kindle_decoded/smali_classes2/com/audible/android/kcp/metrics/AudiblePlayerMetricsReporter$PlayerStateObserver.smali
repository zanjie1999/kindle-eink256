.class final Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;
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
    name = "PlayerStateObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/common/misc/ICallback<",
        "Lcom/audible/hushpuppy/model/write/IStateContext<",
        "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;


# direct methods
.method private constructor <init>(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;->this$0:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$1;)V
    .locals 0

    .line 220
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;-><init>(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/audible/hushpuppy/model/write/IStateContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/model/write/IStateContext<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-interface {p1}, Lcom/audible/hushpuppy/model/write/IStateContext;->getState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerState;

    .line 225
    instance-of v0, p1, Lcom/audible/hushpuppy/model/write/playerstate/PlayState;

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->access$700()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Player state change to : PlayState"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 227
    iget-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;->this$0:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    invoke-virtual {p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->startNarration()V

    .line 228
    iget-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;->this$0:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->PLAY:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    invoke-virtual {p1, v0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->emitMiniPlayerActionMetric(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;)V

    goto :goto_0

    .line 229
    :cond_0
    instance-of v0, p1, Lcom/audible/hushpuppy/model/write/playerstate/PauseState;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->access$700()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Player state change to : PauseState"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;->this$0:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    invoke-virtual {p1, v1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->endNarration(Z)V

    .line 232
    iget-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;->this$0:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->PAUSE:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    invoke-virtual {p1, v0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->emitMiniPlayerActionMetric(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;)V

    goto :goto_0

    .line 233
    :cond_1
    instance-of p1, p1, Lcom/audible/hushpuppy/model/write/playerstate/ErrorState;

    if-eqz p1, :cond_2

    .line 234
    invoke-static {}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->access$700()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Player state change to : ErrorState"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;->this$0:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    invoke-virtual {p1, v1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->endNarration(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 220
    check-cast p1, Lcom/audible/hushpuppy/model/write/IStateContext;

    invoke-virtual {p0, p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;->execute(Lcom/audible/hushpuppy/model/write/IStateContext;)V

    return-void
.end method
