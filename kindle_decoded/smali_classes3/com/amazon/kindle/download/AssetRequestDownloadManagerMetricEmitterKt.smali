.class public final Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;
.super Ljava/lang/Object;
.source "AssetRequestDownloadManagerMetricEmitter.kt"


# static fields
.field private static final DOWNLOAD_CONTENT_OPEN_TYPES:[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

.field private static final FAILED_SCHEMA_NAME:Ljava/lang/String; = "ardm_failed_task_v1"

.field private static final FAILED_SCHEMA_VERSION:I = 0x0

.field private static final KEY_ASIN:Ljava/lang/String; = "content_asin"

.field private static final KEY_ASSET_ID:Ljava/lang/String; = "asset_id"

.field private static final KEY_BOOK_TYPE:Ljava/lang/String; = "book_type"

.field private static final KEY_CANCELLED:Ljava/lang/String; = "download_cancelled"

.field private static final KEY_DOWNLOAD_AVAILABLE_SPACE:Ljava/lang/String; = "available_bytes_at_download_path"

.field private static final KEY_DOWNLOAD_PATH:Ljava/lang/String; = "download_path"

.field private static final KEY_KRX_ERROR_STATE:Ljava/lang/String; = "krx_error_state"

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final KEY_TASK_COMPLETION_TIME:Ljava/lang/String; = "completed_time"

.field private static final KEY_TASK_CREATION_TIME:Ljava/lang/String; = "creation_time"

.field private static final KEY_TASK_STARTED_TIME:Ljava/lang/String; = "started_time"

.field private static final NO_NETWORK_VAL:Ljava/lang/String; = "NONE"

.field private static final SUCCESS_SCHEMA_NAME:Ljava/lang/String; = "ardm_successful_task_v1"

.field private static final SUCCESS_SCHEMA_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final UNKNOWN_LONG_VAL:J = -0x1L

.field private static final UNKNOWN_STRING_VAL:Ljava/lang/String; = "UNKNOWN"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const-class v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitter;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 25
    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPENABLE:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 26
    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 27
    sget-object v1, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 25
    sput-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->DOWNLOAD_CONTENT_OPEN_TYPES:[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    return-void
.end method

.method public static final synthetic access$getDOWNLOAD_CONTENT_OPEN_TYPES$p()[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->DOWNLOAD_CONTENT_OPEN_TYPES:[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    return-object v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerMetricEmitterKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
