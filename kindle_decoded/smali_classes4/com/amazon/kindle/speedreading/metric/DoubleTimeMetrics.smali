.class public Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;
.super Ljava/lang/Object;
.source "DoubleTimeMetrics.java"


# static fields
.field private static final DOUBLETIME_BACKWARD_BUTTON:Ljava/lang/String; = "doubletime_back_button"

.field private static final DOUBLETIME_BACKWARD_BUTTON_IN_CLUTCH:Ljava/lang/String; = "doubletime_back_button_clutch"

.field private static final DOUBLETIME_CLUTCH_CONTEXT:Ljava/lang/String; = "doubletime_clutch_context"

.field private static final DOUBLETIME_CLUTCH_SHOWN:Ljava/lang/String; = "doubletime_clutch_shown"

.field private static final DOUBLETIME_CONTEXT:Ljava/lang/String; = "doubletime_context"

.field private static final DOUBLETIME_ENTERED:Ljava/lang/String; = "doubletime_entered"

.field private static final DOUBLETIME_FORWARD_BUTTON:Ljava/lang/String; = "doubletime_forward_button"

.field private static final DOUBLETIME_FORWARD_BUTTON_IN_CLUTCH:Ljava/lang/String; = "doubletime_forward_button_clutch"

.field private static final DOUBLETIME_LOOPING_TIMER:Ljava/lang/String; = "doubletime_looping_timer"

.field private static final DOUBLETIME_RUNNING_TIMER:Ljava/lang/String; = "doubletime_running_timer"

.field private static final DOUBLETIME_SESSION_CONTEXT:Ljava/lang/String; = "doubletime_session_context"

.field private static final DOUBLETIME_TAP_TO_PAUSE:Ljava/lang/String; = "doubletime_tap_to_pause"

.field private static final DOUBLETIME_WPM:Ljava/lang/String; = "doubletime_wpm"

.field private static final END_OF_CHAPTER_DIALOG:Ljava/lang/String; = "doubletime_eoc_dialog"

.field private static final SHARE_BUTTON_PRESSED:Ljava/lang/String; = "doubletime_share_button_pressed"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.speedreading.metric.DoubleTimeMetrics"


# instance fields
.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private metricHandler:Landroid/os/Handler;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private sessionStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 56
    iput-wide v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->sessionStartTime:J

    .line 65
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DoubleTimeMetricThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    .line 71
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;J)J
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->sessionStartTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportSessionLengthCounter()V

    return-void
.end method

.method private reportSessionLengthCounter()V
    .locals 7

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->sessionStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-string v2, "doubletime_session_less_than_1"

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xb4

    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    const-string v2, "doubletime_session_1_to_3"

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x12c

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    const-string v2, "doubletime_session_3_to_5"

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x258

    cmp-long v6, v0, v2

    if-lez v6, :cond_3

    cmp-long v2, v0, v4

    if-gtz v2, :cond_3

    const-string v2, "doubletime_session_5_to_10"

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x4b0

    cmp-long v6, v0, v4

    if-lez v6, :cond_4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_4

    const-string v2, "doubletime_session_10_to_20"

    goto :goto_0

    :cond_4
    const-wide/16 v4, 0x708

    cmp-long v6, v0, v2

    if-lez v6, :cond_5

    cmp-long v2, v0, v4

    if-gtz v2, :cond_5

    const-string v2, "doubletime_session_20_to_30"

    goto :goto_0

    :cond_5
    cmp-long v2, v0, v4

    if-lez v2, :cond_6

    const-string v2, "doubletime_session_greater_than_30"

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    .line 317
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v4, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SessionLength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " sec. Metric fired = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public endMetrics()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    const-string v2, "end metrics"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public reportBackButtonMetric(Z)V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reporting back button metric. isClutchEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$2;-><init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportClutchHiddenMetric(I)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report clutch hidden metric. location = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$5;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$5;-><init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportClutchShownMetric(I)V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report clutch shown metric. location = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$4;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$4;-><init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportClutchTapToPauseMetric()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Report tap to pause metric."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$6;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$6;-><init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportDoubleTimeEntered()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Report doubletime entered metric."

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$7;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$7;-><init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportDoubleTimeExited()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Report doubletime exited metric"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    const-string v2, "doubletime_running_timer"

    invoke-interface {v0, v1, v2, v2}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "doubletime_context"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    return-void
.end method

.method public reportEndDoubleTimeLooperMetrics(I)V
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report end doubletime looper metric. location = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$9;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$9;-><init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportEndOfChapterDialogShown()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$10;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$10;-><init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportForwardButtonMetric(Z)V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reporting forward button metric. isClutchEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$3;-><init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportShareButtonPressed()V
    .locals 3

    .line 338
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    const-string v2, "Report share button pressed"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$11;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$11;-><init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportStartDoubleTimeLooperMetric(II)V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report start doubletime looper metric. location = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", wpm = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$8;-><init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportWPMMetric(I)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reporting WPM metric. WPM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->metricHandler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics$1;-><init>(Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
