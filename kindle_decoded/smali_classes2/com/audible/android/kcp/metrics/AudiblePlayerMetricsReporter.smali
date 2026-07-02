.class public Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;
.super Ljava/lang/Object;
.source "AudiblePlayerMetricsReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;,
        Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;,
        Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;,
        Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;,
        Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;
    }
.end annotation


# static fields
.field private static final DURATION_NULL_VALUE:I = 0x0

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final SCHEMA_NAME:Ljava/lang/String; = "reader_audible_immersion_reading"

.field private static final SCHEMA_VERSION:I


# instance fields
.field private final metricsHelper:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

.field private narrationStartContext:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;

.field private final playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

.field private final playerStateObserver:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;

.field private final readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

.field private final readerStateObserver:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->metricsHelper:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

    .line 87
    iput-object p2, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    .line 88
    new-instance p1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;-><init>(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$1;)V

    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->readerStateObserver:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;

    .line 89
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->readerStateContext:Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/misc/IObservable;->register(Ljava/lang/Object;)Z

    .line 90
    iput-object p3, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    .line 91
    new-instance p1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;

    invoke-direct {p1, p0, p2}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;-><init>(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$1;)V

    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->playerStateObserver:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$PlayerStateObserver;

    .line 92
    iget-object p2, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->playerStateContext:Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-interface {p2, p1}, Lcom/audible/hushpuppy/common/misc/IObservable;->register(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$700()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 28
    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method private recordMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 164
    :cond_0
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-nez v0, :cond_1

    .line 166
    sget-object p1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Fast metrics instance is null"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 170
    :cond_1
    sget-object v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record metrics with context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " readingMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "reader_audible_immersion_reading"

    .line 172
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    .line 173
    sget-object v2, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->CONTEXT:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    invoke-static {v2}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->access$600(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 174
    sget-object p1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->ACTION:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    invoke-static {p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->access$600(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    if-eqz p3, :cond_2

    .line 176
    sget-object p1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->READING_MODE:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    invoke-static {p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->access$600(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 178
    :cond_2
    sget-object p1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->DURATION:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;

    invoke-static {p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;->access$600(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$FieldKey;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p4}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 179
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    return-void

    .line 160
    :cond_3
    :goto_0
    sget-object p1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "context or action is null"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public emitMiniPlayerActionMetric(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;)V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->metricsHelper:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

    invoke-virtual {v0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->getCurrentReadingMode()Ljava/lang/String;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->SWITCH_TO_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->readerStateObserver:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;

    invoke-virtual {v1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;->getPreviousReaderState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->metricsHelper:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

    iget-object v3, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->readerStateObserver:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;

    invoke-virtual {v3}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ReaderStateObserver;->getPreviousReaderState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->convertReaderStateToContext(Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->access$400(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->recordMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->metricsHelper:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

    invoke-virtual {v1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->getCurrentContext()Ljava/lang/String;

    move-result-object v1

    .line 152
    sget-object v3, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->INBOOK_FULL_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    invoke-virtual {v3}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 153
    invoke-static {p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->access$400(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->recordMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public endNarration(Z)V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->narrationStartContext:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;

    if-nez v0, :cond_0

    .line 119
    sget-object p1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "End Narration is called without Start Narration"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 124
    iget-object v2, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->narrationStartContext:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;

    invoke-static {v2}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;->access$200(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-int v3, v2

    .line 125
    iget-object v2, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->narrationStartContext:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;

    invoke-static {v2}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;->access$300(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->NARRATION:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    invoke-static {v4}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->access$400(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->narrationStartContext:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;

    invoke-static {v5}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;->access$500(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v4, v5, v3}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->recordMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-nez p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->metricsHelper:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

    invoke-virtual {p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->getCurrentContext()Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object v2, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->metricsHelper:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

    invoke-virtual {v2}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->getCurrentReadingMode()Ljava/lang/String;

    move-result-object v2

    .line 130
    new-instance v3, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;

    invoke-direct {v3, p1, v2, v0, v1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v3, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->narrationStartContext:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;

    .line 131
    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Narration switch to context: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " readingMode: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->narrationStartContext:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;

    :goto_0
    return-void
.end method

.method public startNarration()V
    .locals 7

    .line 101
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->metricsHelper:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

    invoke-virtual {v0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->getCurrentContext()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->metricsHelper:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

    invoke-virtual {v1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;->getCurrentReadingMode()Ljava/lang/String;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v2, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->narrationStartContext:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$NarrationContext;

    .line 104
    sget-object v2, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start narration with context: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " readingMode: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void
.end method
