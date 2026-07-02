.class public interface abstract Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;
.super Ljava/lang/Object;
.source "AiRMetrics.java"


# static fields
.field public static final ACTIVATION_REQUEST:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final ACTIVATION_REQUEST_TIME_OUT:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final ACTIVATION_SUCCESS:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final MATCHMAKER_CONTINUE_READING:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final MATCHMAKER_PLAY_SAMPLE:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final MATCHMAKER_START_LISTENING:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final NARRATION_SPEED_050:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final NARRATION_SPEED_075:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final NARRATION_SPEED_100:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final NARRATION_SPEED_125:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final NARRATION_SPEED_150:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final NARRATION_SPEED_175:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final NARRATION_SPEED_200:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final NARRATION_SPEED_250:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final NARRATION_SPEED_300:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PLAYBACK_JUMP_BACKWARD_FROM_MEDIA_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PLAYBACK_JUMP_FORWARD_FROM_MEDIA_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PLAYBACK_PAUSE_FROM_MEDIA_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PLAYBACK_PAUSE_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PLAYBACK_PLAY_FROM_MEDIA_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PLAYBACK_PLAY_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PLAYBACK_STOP_FROM_DEREGISTRATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PLAYBACK_STOP_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PLAYER_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PROGRESSIVE_PLAYBACK_PAUSE_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PROGRESSIVE_PLAYBACK_PLAY_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PROGRESSIVE_PLAYBACK_STOP_FROM_DEREGISTRATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PROGRESSIVE_PLAYBACK_STOP_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PROGRESSIVE_PLAYER_FROM_LIBRARY_ACTION_BAR:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PROGRESSIVE_PLAYER_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final UPGRADER_CONTINUE_READING:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final UPGRADER_PLAY_SAMPLE:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final UPGRADER_START_LISTENING:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final WHISPERSYNC_DELETE_OPENED_AUDIOBOOK:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final WHISPERSYNC_PAUSE_FROM_HEADSET_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final WHISPERSYNC_PAUSE_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final WHISPERSYNC_PAUSE_UNPLUG_HEADSET:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final WHISPERSYNC_STOP_FROM_DEREGISTRATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final WHISPERSYNC_STOP_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ActivationRequest"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->ACTIVATION_REQUEST:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 28
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ActivationSuccess"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->ACTIVATION_SUCCESS:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 29
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ActivationRequestTimeOut"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->ACTIVATION_REQUEST_TIME_OUT:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 31
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "DownloadFromLibrary"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "DownloadFromLibraryWithEbook"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "DownloadFromPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "DownloadFromPlayerActionBar"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "DownloadFromStore"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "AudiobookDownloadOnWifi"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SyncfileDownloadOnWifi"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "AudiobookDownloadOnCellularData"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SyncfileDownloadOnCellularData"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "AudiobookDownloadSuccess"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SyncfileDownloadSuccess"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "AudiobookDownloadCancelled"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SyncfileDownloadCancelled"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "MatchmakerViewWithIndicator"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "MatchmakerViewWithoutIndicator"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "MatchmakerInExternalBrowser"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "MatchmakerPlaySample"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->MATCHMAKER_PLAY_SAMPLE:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 52
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "MatchmakerStartListening"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->MATCHMAKER_START_LISTENING:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 53
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "MatchmakerContinueReading"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->MATCHMAKER_CONTINUE_READING:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 55
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "UpgraderView"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "UpgraderPlaySample"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->UPGRADER_PLAY_SAMPLE:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 57
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "UpgraderStartListening"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->UPGRADER_START_LISTENING:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 58
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "UpgraderContinueReading"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->UPGRADER_CONTINUE_READING:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 60
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlayerFromNotification"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYER_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 61
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ShowPersistentPlayerFromLibraryActionBar"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ShowPersistentPlayerFromReaderActionBar"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "DismissPersistentPlayerFromLibraryActionBar"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "DismissPersistentPlayerFromReaderActionBar"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlayerFromReaderLeftNav"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ReaderFromPlayerActionBar"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ReaderFromPlayerLeftNav"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackPlayFromPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackPlayFromNotification"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_PLAY_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 72
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackPauseFromPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackPauseFromNotification"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_PAUSE_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 74
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackStopFromNotification"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_STOP_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 75
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackStopFromDeregistration"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_STOP_FROM_DEREGISTRATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 77
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackJumpForward"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackJumpBackward"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackChapterForward"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackChapterBackward"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackToggleToChapterControl"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackToggleToJumpControl"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackTimeOnImmersionReadingMode"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackTimeOnPlayerMode"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackTimeOutsideReader"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackPlayFromPersistentPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackPauseFromPersistentPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "CancelFromPersistentPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackJumpBackwardFromPersistentPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "OpenPlayerFromPersistentPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "DownloadFromPersistentPlayerReader"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "CancelDownloadFromPersistentPlayerReader"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackPlayFromPersistentPlayerLibrary"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackPauseFromPersistentPlayerLibrary"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "CancelFromPersistentPlayerLibrary"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackJumpBackwardFromPersistentPlayerLibrary"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "OpenPlayerFromPersistentPlayerLibrary"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackPlayFromMediaButton"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_PLAY_FROM_MEDIA_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 106
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackPauseFromMediaButton"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_PAUSE_FROM_MEDIA_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 107
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackJumpForwardFromMediaButton"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_JUMP_FORWARD_FROM_MEDIA_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 108
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "PlaybackJumpBackwardFromMediaButton"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_JUMP_BACKWARD_FROM_MEDIA_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 110
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ProgressivePlaybackPlayFromPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ProgressivePlaybackPauseFromPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ProgressivePlaybackJumpForward"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ProgressivePlaybackJumpBackward"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ProgressivePlaybackChapterForward"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ProgressivePlaybackChapterBackward"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ProgressivePlaybackPlayFromNotification"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PROGRESSIVE_PLAYBACK_PLAY_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 117
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ProgressivePlaybackPauseFromNotification"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PROGRESSIVE_PLAYBACK_PAUSE_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 118
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ProgressivePlaybackStopFromNotification"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PROGRESSIVE_PLAYBACK_STOP_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 119
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ProgressivePlayerFromNotification"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PROGRESSIVE_PLAYER_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 120
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ProgressivePlayerFromLibraryActionBar"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PROGRESSIVE_PLAYER_FROM_LIBRARY_ACTION_BAR:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 121
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ProgressivePlaybackStopFromDeregistration"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PROGRESSIVE_PLAYBACK_STOP_FROM_DEREGISTRATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 123
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "NarrationSpeed050"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_050:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 124
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "NarrationSpeed075"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_075:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 125
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "NarrationSpeed100"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_100:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 126
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "NarrationSpeed125"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_125:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 127
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "NarrationSpeed150"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_150:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 128
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "NarrationSpeed175"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_175:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 129
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "NarrationSpeed200"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_200:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 130
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "NarrationSpeed250"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_250:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 131
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "NarrationSpeed300"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->NARRATION_SPEED_300:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 133
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SleepTimerNone"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SleepTimer10Min"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SleepTimer15Min"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SleepTimer30Min"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SleepTimer60Min"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SleepTimerEndChapter"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "DeleteAudiobookLibrary"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "WhispersyncPauseFromNotification"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->WHISPERSYNC_PAUSE_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 143
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "WhispersyncStopFromNotification"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->WHISPERSYNC_STOP_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 144
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "WhispersyncStopFromDeregistration"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->WHISPERSYNC_STOP_FROM_DEREGISTRATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 145
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "WhispersyncPauseFromHeadsetButton"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->WHISPERSYNC_PAUSE_FROM_HEADSET_BUTTON:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 146
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "WhispersyncPauseUnplugHeadset"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->WHISPERSYNC_PAUSE_UNPLUG_HEADSET:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 147
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "WhispersyncDeleteOpenedAudiobook"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->WHISPERSYNC_DELETE_OPENED_AUDIOBOOK:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 148
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "WhispersyncPauseFromPersistentPlayerLibrary"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    return-void
.end method
