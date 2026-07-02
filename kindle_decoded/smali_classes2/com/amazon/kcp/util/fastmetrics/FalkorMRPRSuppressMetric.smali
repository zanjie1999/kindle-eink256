.class public final Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric;
.super Ljava/lang/Object;
.source "FalkorMRPRSuppressMetric.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$FieldKey;,
        Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;,
        Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recordMetrics(Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;)V
    .locals 3

    const-string v0, "alertType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->MRPR_FPR_ALERT_ACTION_PERFORMED:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->MRPR_FPR_ALERT_ACTION_PERFORMED:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$recordMetrics$1;

    invoke-direct {v2, p1, p0}, Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$recordMetrics$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$ActionType;Lcom/amazon/kcp/util/fastmetrics/FalkorMRPRSuppressMetric$AlertType;)V

    .line 32
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
