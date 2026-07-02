.class public interface abstract Lcom/audible/android/kcp/metrics/AiRMetrics$ErrorMetrics;
.super Ljava/lang/Object;
.source "AiRMetrics.java"


# static fields
.field public static final ACTIVATION_ERROR:Lcom/audible/android/kcp/metrics/AiRMetricKey;

.field public static final ACTIVATION_NETWORK_ERROR:Lcom/audible/android/kcp/metrics/AiRMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 153
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ActivationError"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$ErrorMetrics;->ACTIVATION_ERROR:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 154
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "ActivationNetworkError"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AiRMetrics$ErrorMetrics;->ACTIVATION_NETWORK_ERROR:Lcom/audible/android/kcp/metrics/AiRMetricKey;

    .line 156
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "AudiobookDownloadServerError"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "AudiobookDownloadConnectionError"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "AudiobookDownloadConnectionErrorNoDataNetwork"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SyncfileDownloadServerError"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SyncfileDownloadConnectionError"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "SyncfileDownloadConnectionErrorNoDataNetwork"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "CoverArtDecodeFailure"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "AudiobookPlaybackFormatMismatchFailure"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "AudiobookDownloadFormatMismatchFailureFromPlayerCoverArt"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/audible/android/kcp/metrics/AiRMetricKey;

    const-string v1, "AudiobookDownloadFormatMismatchFailureFromPlayerActionbar"

    invoke-direct {v0, v1}, Lcom/audible/android/kcp/metrics/AiRMetricKey;-><init>(Ljava/lang/String;)V

    return-void
.end method
