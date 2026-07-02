.class public Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlayerBroadcastReceiver.java"


# static fields
.field private static final HIDE_NOTIFICATION_BAR_INTENT:Landroid/content/Intent;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final PLAY_METRIC_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/audible/android/kcp/metrics/AiRMetricKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROGRESSIVE_PLAYBACK:Ljava/lang/String; = "PROGRESSIVE_PLAYBACK_"

.field private static final SYNC_METRIC_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/audible/android/kcp/metrics/AiRMetricKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

.field private final mReaderModeHandler:Lcom/amazon/kindle/krx/reader/IReaderModeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->HIDE_NOTIFICATION_BAR_INTENT:Landroid/content/Intent;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->PLAY_METRIC_MAP:Ljava/util/Map;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/audible/android/kcp/player/receiver/PlayerAction;->OPEN:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYER_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->PLAY_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PLAY:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_PLAY_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->PLAY_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PAUSE:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_PAUSE_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->PLAY_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_STOP_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->PLAY_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP_PLAYER:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/util/BroadcastSource;->DEREGISTRATION:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PLAYBACK_STOP_FROM_DEREGISTRATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->PLAY_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PROGRESSIVE_PLAYBACK_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PLAY:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PROGRESSIVE_PLAYBACK_PLAY_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->PLAY_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PAUSE:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PROGRESSIVE_PLAYBACK_PAUSE_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->PLAY_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PROGRESSIVE_PLAYBACK_STOP_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->PLAY_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/audible/android/kcp/player/receiver/PlayerAction;->OPEN:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PROGRESSIVE_PLAYER_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->PLAY_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/audible/android/kcp/player/receiver/PlayerAction;->OPEN:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/audible/android/kcp/util/BroadcastSource;->PERSISTENT_PLAYER_LIBRARY:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PROGRESSIVE_PLAYER_FROM_LIBRARY_ACTION_BAR:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->PLAY_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP_PLAYER:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/util/BroadcastSource;->DEREGISTRATION:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->PROGRESSIVE_PLAYBACK_STOP_FROM_DEREGISTRATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->SYNC_METRIC_MAP:Ljava/util/Map;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PAUSE:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->WHISPERSYNC_PAUSE_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->SYNC_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/util/BroadcastSource;->NOTIFICATION_BAR:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->WHISPERSYNC_STOP_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->SYNC_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/player/receiver/PlayerAction;->STOP_PLAYER:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/util/BroadcastSource;->DEREGISTRATION:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->WHISPERSYNC_STOP_FROM_DEREGISTRATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->SYNC_METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PAUSE:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/audible/android/kcp/util/BroadcastSource;->HEADSET_UNPLUGGED:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->WHISPERSYNC_PAUSE_UNPLUG_HEADSET:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    .line 119
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->mReaderModeHandler:Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    .line 120
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->mApplicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    return-void
.end method

.method private clearNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 210
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    sget-object p1, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Unable to clear notification, audiobook asin is empty"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 215
    :cond_0
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->HIDE_NOTIFICATION_BAR_INTENT:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    new-instance v0, Lcom/audible/mobile/domain/ImmutableAsinImpl;

    invoke-direct {v0, p2}, Lcom/audible/mobile/domain/ImmutableAsinImpl;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/audible/android/kcp/download/notification/DownloadNotificationBuilder;->clearAudioDownloadNotification(Landroid/content/Context;Lcom/audible/mobile/domain/Asin;)V

    return-void
.end method

.method public static getPlayerBroadcastIntentFilter(Landroid/content/Context;)Landroid/content/IntentFilter;
    .locals 5

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    invoke-static {}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->values()[Lcom/audible/android/kcp/player/receiver/PlayerAction;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 110
    invoke-virtual {v4, p0}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getReaderModeFromString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;
    .locals 5

    .line 198
    invoke-static {}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->values()[Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 199
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    return-object p1
.end method

.method private openPlayer(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V
    .locals 1

    const-string v0, "context can\'t be null!"

    .line 222
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "readerMode can\'t be null"

    .line 223
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object p1, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Unable to create intent to open player, Ebook id is null"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->mReaderModeHandler:Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    invoke-interface {v0, p2, p3}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->setReaderMode(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V

    .line 233
    iget-object p3, p0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->mApplicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-static {p2, p3}, Lcom/audible/android/kcp/util/IntentUtil;->getPlayerOpenIntent(Ljava/lang/String;Lcom/amazon/kindle/krx/application/IApplicationManager;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->fromActionString(Landroid/content/Context;Ljava/lang/String;)Lcom/audible/android/kcp/player/receiver/PlayerAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    sget-object p1, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "An intent action must be provided!"

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 135
    :cond_0
    sget-object v1, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver$1;->$SwitchMap$com$audible$android$kcp$player$receiver$PlayerAction:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const/4 p1, 0x4

    if-eq v1, p1, :cond_2

    const/4 p1, 0x5

    if-eq v1, p1, :cond_1

    .line 188
    sget-object p1, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid action provided! Action: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->release()V

    goto :goto_0

    .line 179
    :cond_2
    iget-object p1, p0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->stop()V

    goto :goto_0

    .line 171
    :cond_3
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PauseFromNotification:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 172
    iget-object p1, p0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->pause()V

    goto :goto_0

    .line 163
    :cond_4
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object p1

    sget-object p2, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->PLAYBACK_FROM_NOTIFICATION:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {p1, p2}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->startMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    .line 164
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object p2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayFromNotification:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, p2, v0}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 165
    iget-object p1, p0, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->mPlayerService:Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;

    invoke-virtual {p1}, Lcom/audible/android/kcp/player/hp/AapHushpuppyPlayerService;->start()V

    goto :goto_0

    .line 148
    :cond_5
    sget-object v0, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->EBOOK_ID:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v0}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->AUDIOBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    sget-object v5, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->READER_MODE:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v5}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 152
    invoke-direct {p0, p2}, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->getReaderModeFromString(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p2

    .line 153
    sget-object v5, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v2, v6

    aput-object v0, v2, v4

    aput-object p2, v2, v3

    const-string v3, "Open player for audio %s, ebook %s, in mode %s"

    invoke-interface {v5, v3, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-direct {p0, p1, v0, p2}, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->openPlayer(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V

    .line 159
    invoke-direct {p0, p1, v1}, Lcom/audible/android/kcp/player/receiver/PlayerBroadcastReceiver;->clearNotification(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
