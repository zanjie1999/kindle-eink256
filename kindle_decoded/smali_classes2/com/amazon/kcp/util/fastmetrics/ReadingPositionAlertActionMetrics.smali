.class public final Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;
.super Ljava/lang/Object;
.source "ReadingPositionAlertActionMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;,
        Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;,
        Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;,
        Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recordMetrics(Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 10

    const-string v0, "alertType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sheetState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->MRPR_FPR_ALERT_ACTION_PERFORMED:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->MRPR_FPR_ALERT_ACTION_PERFORMED:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    new-instance v9, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;

    move-object v2, v9

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$recordMetrics$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 47
    invoke-static {v0, v1, v9}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
