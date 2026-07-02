.class public final Lcom/amazon/whispersync/dcp/metrics/MetricsContract;
.super Ljava/lang/Object;
.source "MetricsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/metrics/MetricsContract$Timer;,
        Lcom/amazon/whispersync/dcp/metrics/MetricsContract$Counter;
    }
.end annotation


# static fields
.field public static final BROADCAST_LOG_OFFLOAD_FAILED:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.OFFLOAD_FAILED"

.field public static final BROADCAST_LOG_OFFLOAD_SUCCESS:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.OFFLOAD_SUCCESS"

.field public static final BROADCAST_UPLOAD_COMPLETE:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.UPLOAD_COMPLETE"

.field public static final COLUMN_METRIC_COMPONENT:Ljava/lang/String; = "component"

.field public static final COLUMN_METRIC_DOMAIN:Ljava/lang/String; = "domain"

.field public static final COLUMN_METRIC_LEVEL:Ljava/lang/String; = "level"

.field public static final COLUMN_METRIC_NAME:Ljava/lang/String; = "metric_name"

.field public static final COLUMN_METRIC_PACKAGE:Ljava/lang/String; = "package"

.field public static final COLUMN_METRIC_SWINVENTORY_ID:Ljava/lang/String; = "sw_inv_id"

.field public static final COLUMN_METRIC_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field public static final COLUMN_METRIC_VERSION:Ljava/lang/String; = "sw_ver"

.field public static final COLUMN_SWINVENTORY_HEADER:Ljava/lang/String; = "sw_inventory_header"

.field public static final DEFAULT_COUNTER_NAME:Ljava/lang/String; = "counter"

.field public static final EXTRA_UPLOAD_RESULT:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.UPLOAD_RESULT"

.field private static final ID_NAME:Ljava/lang/String; = "_id"

.field public static final INTENT_ACTION_INCREMENT_COUNTER:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.action.INCREMENT_COUNTER"

.field public static final INTENT_ACTION_OFFLOAD_LOGS:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.OFFLOAD_LOGS"

.field public static final INTENT_ACTION_RECORD_TIMING:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.action.RECORD_TIMING"

.field public static final INTENT_ACTION_START_LOG_CAPTURE:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.action.START_LOG_CAPTURE"

.field public static final INTENT_ACTION_START_TIMER:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.action.START_TIMER"

.field public static final INTENT_ACTION_STOP_LOG_CAPTURE:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.action.STOP_LOG_CAPTURE"

.field public static final INTENT_ACTION_STOP_TIMER:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.action.STOP_TIMER"

.field public static final INTENT_ACTION_UPLOAD_LOGS:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.UPLOAD_LOGS"

.field public static final INTENT_ACTION_UPLOAD_METRICS:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.UPLOAD_METRICS"

.field public static final INTENT_EXTRA_ELAPSED_TIME_MS:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.ELAPSED_TIME_MS"

.field public static final INTENT_EXTRA_LOGCAT_BUFFERS:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.LOGCAT_BUFFERS"

.field public static final INTENT_EXTRA_LOGCAT_FILTERS:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.LOGCAT_FILTER"

.field public static final INTENT_EXTRA_METRIC_COUNTERS:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.METRIC_COUNTERS"

.field public static final INTENT_EXTRA_METRIC_IDENTIFIER:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.METRIC_IDENTIFIER"

.field public static final INTENT_EXTRA_NAMES:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.NAMES"

.field public static final INTENT_EXTRA_PACKAGE:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.PACKAGE"

.field public static final INTENT_EXTRA_START_TIME:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.START_TIME"

.field public static final INTENT_EXTRA_STOP_TIME:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.STOP_TIME"

.field public static final INTENT_EXTRA_TIMER_NAME:Ljava/lang/String; = "com.amaozn.dcp.metrics.TIMER_NAME"

.field public static final INTENT_EXTRA_UPLOAD_ANONYMOUS:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.UPLOAD_ANONYMOUS"

.field public static final INTENT_EXTRA_UPLOAD_TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.UPLOAD_TAG"

.field private static final LEVEL_QUERY_PARAM:Ljava/lang/String; = "level"

.field private static final METRIC_URI_SEGMENT_COUNT:I = 0x4

.field private static final MIME_DELIMITER:Ljava/lang/String; = "/"

.field public static final PERMISSION_METRICS_SERVICE:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.permission.METRICS_PERMISSION"

.field public static final PRODUCTION_AUTHORITY:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.metricsprovider"

.field public static final PRODUCTION_AUTHORITY_URI:Landroid/net/Uri;

.field public static final SYSTEM_COLLECTOR_DOMAIN:Ljava/lang/String; = "System"

.field public static final TEST_AUTHORITY:Ljava/lang/String; = "com.amazon.whispersync.dcp.metrics.metricsprovider.test"

.field public static final TEST_AUTHORITY_URI:Landroid/net/Uri;

.field private static final VALID_URI_PATH_ROOTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.amazon.dcp.metrics.metricsprovider"

    .line 29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/metrics/MetricsContract;->PRODUCTION_AUTHORITY_URI:Landroid/net/Uri;

    const-string v0, "content://com.amazon.dcp.metrics.metricsprovider.test"

    .line 41
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/metrics/MetricsContract;->TEST_AUTHORITY_URI:Landroid/net/Uri;

    const-string v0, "counters"

    const-string/jumbo v1, "timers"

    .line 227
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/metrics/MetricsContract;->VALID_URI_PATH_ROOTS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildMetricUri(Landroid/net/Uri;Ljava/lang/String;Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;)Landroid/net/Uri;
    .locals 0

    .line 313
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 314
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 315
    invoke-virtual {p2}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getDomain()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 316
    invoke-virtual {p2}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getComponent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 317
    invoke-virtual {p2}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 318
    invoke-virtual {p2}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;->getLevel()Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "level"

    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 319
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static identifierFromUri(Landroid/net/Uri;)Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;
    .locals 5

    .line 325
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.whispersync.dcp.metrics.metricsprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 330
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 332
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_5

    .line 336
    sget-object v1, Lcom/amazon/whispersync/dcp/metrics/MetricsContract;->VALID_URI_PATH_ROOTS:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-nez v4, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    const-class v0, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;

    const-string v1, "level"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;->INFO:Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;

    invoke-static {v0, p0, v1}, Lcom/amazon/whispersync/dcp/metrics/MetricsContract;->parseEnum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;

    .line 367
    new-instance v0, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;-><init>(Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 349
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    .line 353
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    .line 357
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized metrics URI root path"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 334
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized metrics URI segments"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized metrics URI authority"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseEnum(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 376
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object p2
.end method
