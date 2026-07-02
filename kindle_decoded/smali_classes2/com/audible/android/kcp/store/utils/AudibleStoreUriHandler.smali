.class public Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;
.super Ljava/lang/Object;
.source "AudibleStoreUriHandler.java"

# interfaces
.implements Lcom/audible/android/kcp/store/utils/AudibleUriHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;
    }
.end annotation


# static fields
.field private static final ACTION_PARAM:Ljava/lang/String; = "action"

.field private static final ASIN_PARAM:Ljava/lang/String; = "asin"

.field private static final BASE_AUDIBLE_STORE_ACTION:Ljava/lang/String; = "audible://store/"

.field private static final EBOOK_ASIN_PARAM:Ljava/lang/String; = "ebookAsin"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final METRIC_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/audible/android/kcp/metrics/AiRMetricKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_AUDIBLE_STORE_ACTION_FORMAT:Ljava/lang/String; = "Handled Uri that was not an Audible Store action. Uri: %s"

.field private static final NOT_VALID_STORE_ACTION_FORMAT:Ljava/lang/String; = "Handled Uri was a valid store action but we don\'t handle it. Uri: %s"

.field private static final START_LISTENING_EBOOK_FORMAT:Ljava/lang/String; = "Attempting to open library or player with ebook asin %s"


# instance fields
.field private final mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

.field private final mReaderManager:Lcom/amazon/kindle/krx/reader/IReaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->METRIC_MAP:Ljava/util/Map;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->PLAY_SAMPLE:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/store/StoreType;->UPGRADER:Lcom/audible/android/kcp/store/StoreType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->UPGRADER_PLAY_SAMPLE:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->PLAY_SAMPLE:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/store/StoreType;->MATCHMAKER:Lcom/audible/android/kcp/store/StoreType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->MATCHMAKER_PLAY_SAMPLE:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->START_LISTENING:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/store/StoreType;->UPGRADER:Lcom/audible/android/kcp/store/StoreType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->UPGRADER_START_LISTENING:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->START_LISTENING:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/store/StoreType;->MATCHMAKER:Lcom/audible/android/kcp/store/StoreType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->MATCHMAKER_START_LISTENING:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->CONTINUE_READING:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/audible/android/kcp/store/StoreType;->UPGRADER:Lcom/audible/android/kcp/store/StoreType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->UPGRADER_CONTINUE_READING:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->CONTINUE_READING:Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/audible/android/kcp/store/StoreType;->MATCHMAKER:Lcom/audible/android/kcp/store/StoreType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/audible/android/kcp/metrics/AiRMetrics$UsageMetrics;->MATCHMAKER_CONTINUE_READING:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    .line 59
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->kindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->mReaderManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    return-void
.end method

.method private getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "?"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private reportActivityMetric(Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;Lcom/audible/android/kcp/store/StoreType;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->METRIC_MAP:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    if-nez v0, :cond_1

    .line 138
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "Metric key is not defined for [%s:%s]. No metric logged."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 142
    :cond_1
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->reportMetric(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    return-void

    .line 132
    :cond_2
    :goto_0
    sget-object p1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string p2, "Either AudibleStoreAction or StoreType is null. No metric logged."

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleUri(Ljava/lang/String;)Z
    .locals 7

    .line 65
    invoke-direct {p0, p1}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->getBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audible://store/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Handled Uri that was not an Audible Store action. Uri: %s"

    invoke-interface {v0, v2, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 70
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "action"

    .line 71
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;->fromParamValue(Ljava/lang/String;)Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;

    move-result-object v2

    const-string v3, "Handled Uri was a valid store action but we don\'t handle it. Uri: %s"

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 74
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return v4

    .line 78
    :cond_1
    sget-object v5, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$1;->$SwitchMap$com$audible$android$kcp$store$utils$AudibleStoreUriHandler$AudibleStoreAction:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_7

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const/4 v0, 0x3

    if-eq v5, v0, :cond_2

    .line 115
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {p1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->continueReading()V

    goto/16 :goto_1

    .line 85
    :cond_3
    sget-object p1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$1;->$SwitchMap$com$audible$android$kcp$store$StoreType:[I

    iget-object v1, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {v1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getStoreType()Lcom/audible/android/kcp/store/StoreType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v4, :cond_5

    if-eq p1, v6, :cond_4

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object p1

    sget-object v1, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->OPEN_PLAYER_UPGRADER_LISTEN_NOW:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {p1, v1}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->startMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    goto :goto_0

    .line 87
    :cond_5
    invoke-static {}, Lcom/audible/android/kcp/metrics/KrxMetricsManager;->getInstance()Lcom/audible/android/kcp/metrics/AiRMetricsManager;

    move-result-object p1

    sget-object v1, Lcom/audible/android/kcp/metrics/AiRMetrics$PerformanceMetrics;->OPEN_PLAYER_MATCHMAKER_LISTEN_NOW:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    invoke-interface {p1, v1}, Lcom/audible/android/kcp/metrics/AiRMetricsManager;->startMetricTimer(Lcom/audible/android/kcp/metrics/AiRMetricKey;)V

    :goto_0
    const-string p1, "asin"

    .line 93
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 95
    sget-object v3, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->AUDIOBOOK_ASIN:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {v3}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ebookAsin"

    .line 97
    invoke-virtual {v0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    iget-object v0, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->mReaderManager:Lcom/amazon/kindle/krx/reader/IReaderManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_6

    .line 101
    sget-object p1, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Current book is null, stop open"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {p1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->continueReading()V

    goto :goto_1

    .line 107
    :cond_6
    sget-object v0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Attempting to open library or player with ebook asin %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {v0, p1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->openLibraryOrPlayer(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 81
    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PAUSE:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    iget-object v1, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {v0, v1}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    :goto_1
    iget-object p1, p0, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->mActivity:Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;

    invoke-virtual {p1}, Lcom/audible/android/kcp/store/activity/AbstractAudibleStoreActivity;->getStoreType()Lcom/audible/android/kcp/store/StoreType;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler;->reportActivityMetric(Lcom/audible/android/kcp/store/utils/AudibleStoreUriHandler$AudibleStoreAction;Lcom/audible/android/kcp/store/StoreType;)V

    return v4
.end method
