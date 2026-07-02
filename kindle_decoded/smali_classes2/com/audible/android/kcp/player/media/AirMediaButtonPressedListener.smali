.class public Lcom/audible/android/kcp/player/media/AirMediaButtonPressedListener;
.super Ljava/lang/Object;
.source "AirMediaButtonPressedListener.java"

# interfaces
.implements Lcom/audible/mobile/media/button/ButtonPressedListener;


# instance fields
.field private final mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

.field private final mSyncUpdater:Lcom/audible/android/kcp/sync/SynchronizationUpdater;


# direct methods
.method public constructor <init>(Lcom/audible/android/kcp/player/manager/AiRPlayerManager;Lcom/audible/android/kcp/sync/SynchronizationUpdater;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPressedListener;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    .line 27
    iput-object p2, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPressedListener;->mSyncUpdater:Lcom/audible/android/kcp/sync/SynchronizationUpdater;

    return-void
.end method

.method private actionPause()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPressedListener;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->getCompanionEbook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPressedListener;->mSyncUpdater:Lcom/audible/android/kcp/sync/SynchronizationUpdater;

    sget-object v2, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->WHISPERSYNC_PAUSE_FROM_HEADSET_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v1, v0, v2}, Lcom/audible/android/kcp/sync/SynchronizationUpdater;->syncCurrentAudiobookIfPlaying(Lcom/amazon/kindle/krx/content/IBook;Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 71
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object v0

    sget-object v1, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_PAUSE_FROM_MEDIA_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->reportMetric(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    return-void
.end method


# virtual methods
.method public onButtonDown(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onButtonUp(Landroid/view/KeyEvent;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x55

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x57

    if-eq p1, v0, :cond_1

    const/16 v0, 0x58

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPressedListener;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    sget v0, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->JUMP_FORWARD_BACKWARD_DURATION_MS:I

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->jumpBackward(I)V

    .line 52
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object p1

    sget-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_JUMP_BACKWARD_FROM_MEDIA_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->reportMetric(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPressedListener;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    sget v0, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->JUMP_FORWARD_BACKWARD_DURATION_MS:I

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->jumpForward(I)V

    .line 56
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object p1

    sget-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_JUMP_FORWARD_FROM_MEDIA_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->reportMetric(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    goto :goto_0

    .line 44
    :cond_2
    iget-object p1, p0, Lcom/audible/android/kcp/player/media/AirMediaButtonPressedListener;->mPlayerManager:Lcom/audible/android/kcp/player/manager/AiRPlayerManager;

    invoke-interface {p1}, Lcom/audible/android/kcp/player/manager/AiRPlayerManager;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45
    invoke-direct {p0}, Lcom/audible/android/kcp/player/media/AirMediaButtonPressedListener;->actionPause()V

    goto :goto_0

    .line 47
    :cond_3
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object p1

    sget-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_PLAY_FROM_MEDIA_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->reportMetric(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    :goto_0
    return-void
.end method

.method public onMultiplePress(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method
