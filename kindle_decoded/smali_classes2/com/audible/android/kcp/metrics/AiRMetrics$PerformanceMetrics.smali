.class public interface abstract Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;
.super Ljava/lang/Object;
.source "AiRMetrics.java"


# static fields
.field public static final ACTIVATION_FAILURE:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final ACTIVATION_SUCCESS:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final OPEN_MATCHMAKER:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final OPEN_PLAYER_MATCHMAKER_LISTEN_NOW:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final OPEN_PLAYER_UPGRADER_LISTEN_NOW:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final OPEN_UPGRADER:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final PLAYBACK_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 174
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToOpenPlayerFromLeftNav"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToOpenPersistentPlayerFromActionBar"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToOpenPlayerFromNotification"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 177
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToOpenPlayerFromUnknown"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToOpenPersistentPlayerFromLibraryActionBar"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToOpenPlayerFromLibraryPersistentPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToOpenPlayerFromReaderPersistentPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToPlayerFromUpgraderListenNow"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->OPEN_PLAYER_UPGRADER_LISTEN_NOW:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 182
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToPlayerFromMatchmakerListenNow"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->OPEN_PLAYER_MATCHMAKER_LISTEN_NOW:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 184
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToOpenMatchMaker"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->OPEN_MATCHMAKER:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 185
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToOpenUpgrader"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->OPEN_UPGRADER:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 187
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToLoadCoverartWarm"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToLoadCoverartCold"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToPlaybackFromPlayer"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToPlaybackFromNotification"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->PLAYBACK_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 192
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToPlayerSwitchChapter"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToActivateDeviceSuccess"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->ACTIVATION_SUCCESS:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 195
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "TimeToActivateDeviceFailure"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->ACTIVATION_FAILURE:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    return-void
.end method
