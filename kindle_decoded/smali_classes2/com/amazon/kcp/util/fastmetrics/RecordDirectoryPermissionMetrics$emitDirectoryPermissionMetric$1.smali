.class final Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$emitDirectoryPermissionMetric$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecordDirectoryPermissionMetrics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;->emitDirectoryPermissionMetric(Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;)V
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
.field final synthetic $entryPoint:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;

.field final synthetic $filename:Ljava/lang/String;

.field final synthetic $newValue:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

.field final synthetic $preValue:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$emitDirectoryPermissionMetric$1;->$entryPoint:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$emitDirectoryPermissionMetric$1;->$filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$emitDirectoryPermissionMetric$1;->$preValue:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    iput-object p4, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$emitDirectoryPermissionMetric$1;->$newValue:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$emitDirectoryPermissionMetric$1;->$entryPoint:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$EntryPoint;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entry_point"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$emitDirectoryPermissionMetric$1;->$filename:Ljava/lang/String;

    const-string v1, "directory_name"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$emitDirectoryPermissionMetric$1;->$preValue:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prev_value"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$emitDirectoryPermissionMetric$1;->$newValue:Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$DirectoryAccess;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "new_value"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "addString(NEW_VALUE, newValue.value)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics$emitDirectoryPermissionMetric$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
