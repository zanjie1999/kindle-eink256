.class final Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DocumentMigrationMetrics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;->recordMigrationMetric(Landroid/content/Context;IIJJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        "Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $countFailed:I

.field final synthetic $countTotal:I

.field final synthetic $hasPermissions:Z

.field final synthetic $transferDuration:J

.field final synthetic $transferSize:J


# direct methods
.method constructor <init>(IIJJZLandroid/content/Context;)V
    .locals 0

    iput p1, p0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->$countTotal:I

    iput p2, p0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->$countFailed:I

    iput-wide p3, p0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->$transferSize:J

    iput-wide p5, p0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->$transferDuration:J

    iput-boolean p7, p0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->$hasPermissions:Z

    iput-object p8, p0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->$countTotal:I

    const-string v1, "documents_total_count"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 72
    iget v0, p0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->$countFailed:I

    const-string v1, "documents_failed_count"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 73
    iget-wide v0, p0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->$transferSize:J

    const-string v2, "migration_transfer_size"

    invoke-interface {p1, v2, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 74
    iget-wide v0, p0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->$transferDuration:J

    const-string v2, "migration_transfer_duration"

    invoke-interface {p1, v2, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 75
    iget-boolean v0, p0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->$hasPermissions:Z

    const-string v1, "has_external_permissions"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics;->hasMetricBeenReported(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "was_metric_reported_previously"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "addBoolean(WAS_METRIC_RE\u2026ricBeenReported(context))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/DocumentMigrationMetrics$recordMigrationMetric$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
