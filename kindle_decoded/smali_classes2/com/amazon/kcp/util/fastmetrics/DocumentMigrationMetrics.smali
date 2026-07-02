.class public final Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;
.super Ljava/lang/Object;
.source "DocumentMigrationMetrics.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final hasMetricBeenReported(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "DocumentMigrationPrefs"

    .line 40
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "MetricWasReported"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final markMetricReported(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DocumentMigrationPrefs"

    const/4 v1, 0x0

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 50
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "MetricWasReported"

    const/4 v1, 0x1

    .line 51
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 52
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static final recordMigrationMetric(Landroid/content/Context;IIJJZ)V
    .locals 13

    move-object v9, p0

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->DOCUMENTS_MIGRATION_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v10

    .line 69
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->DOCUMENTS_MIGRATION_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v11

    .line 70
    new-instance v12, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;

    move-object v0, v12

    move v1, p1

    move v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;-><init>(IIJJZLandroid/content/Context;)V

    .line 67
    invoke-static {v10, v11, v12}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 78
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;->markMetricReported(Landroid/content/Context;)V

    return-void
.end method
