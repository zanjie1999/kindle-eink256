.class public final Lcom/amazon/whispersync/dcp/metrics/MetricsContract$Counter;
.super Ljava/lang/Object;
.source "MetricsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/metrics/MetricsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Counter"
.end annotation


# static fields
.field public static final COLUMN_COUNTER_NAME:Ljava/lang/String; = "counter_name"

.field public static final COLUMN_COUNTER_VALUE:Ljava/lang/String; = "counter_value"

.field public static final COLUMN_METRIC_COMPONENT:Ljava/lang/String; = "component"

.field public static final COLUMN_METRIC_DOMAIN:Ljava/lang/String; = "domain"

.field public static final COLUMN_METRIC_LEVEL:Ljava/lang/String; = "level"

.field public static final COLUMN_METRIC_NAME:Ljava/lang/String; = "metric_name"

.field public static final COLUMN_METRIC_PACKAGE:Ljava/lang/String; = "package"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.amazon.dcp.metric.counter"

.field public static final CONTENT_MIME_SUBTYPE:Ljava/lang/String; = "vnd.amazon.dcp.metric.counter"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.amazon.dcp.metric.counter"

.field public static final URI_PATH_ROOT:Ljava/lang/String; = "counters"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentItemUri(Landroid/net/Uri;Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;)Landroid/net/Uri;
    .locals 1

    const-string v0, "counters"

    .line 262
    invoke-static {p0, v0, p1}, Lcom/amazon/whispersync/dcp/metrics/MetricsContract;->buildMetricUri(Landroid/net/Uri;Ljava/lang/String;Lcom/amazon/whispersync/dcp/metrics/MetricIdentifier;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getContentUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    const-string v0, "counters"

    .line 267
    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
