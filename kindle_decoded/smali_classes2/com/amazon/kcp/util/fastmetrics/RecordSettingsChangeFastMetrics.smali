.class public final Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics;
.super Ljava/lang/Object;
.source "RecordSettingsChangeFastMetrics.kt"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics;-><init>()V

    .line 22
    const-class v0, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(RecordSetti\u2026eFastMetrics::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final sendSettingsChangeInt(Ljava/lang/String;IZ)V
    .locals 3

    const-string v0, "settingName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->SETTINGS_CHANGE_INT:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->SETTINGS_CHANGE_INT:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics$sendSettingsChangeInt$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics$sendSettingsChangeInt$1;-><init>(Ljava/lang/String;IZ)V

    .line 31
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final sendSettingsChangeRange(Ljava/lang/String;II)V
    .locals 3

    const-string v0, "settingName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->SETTINGS_CHANGE_RANGE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->SETTINGS_CHANGE_RANGE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics$sendSettingsChangeRange$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/amazon/kcp/util/fastmetrics/RecordSettingsChangeFastMetrics$sendSettingsChangeRange$1;-><init>(Ljava/lang/String;II)V

    .line 46
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
