.class public Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;
.super Ljava/lang/Object;
.source "RecordDirectoryPermissionMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;,
        Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emitDirectoryPermissionMetric(Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;)V
    .locals 3

    const-string v0, "entryPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filename"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newValue"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->LOCAL_DIRECTORY_PERMISSION:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->LOCAL_DIRECTORY_PERMISSION:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v1

    .line 40
    new-instance v2, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$emitDirectoryPermissionMetric$1;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$emitDirectoryPermissionMetric$1;-><init>(Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;)V

    .line 37
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->recordMetrics(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
