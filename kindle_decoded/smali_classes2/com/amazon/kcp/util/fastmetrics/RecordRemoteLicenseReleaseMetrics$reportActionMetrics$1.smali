.class final Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$reportActionMetrics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecordRemoteLicenseReleaseMetrics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;->reportActionMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;Lcom/amazon/kindle/krx/content/ContentType;II)V
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
.field final synthetic $actionType:Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;

.field final synthetic $contentType:Lcom/amazon/kindle/krx/content/ContentType;

.field final synthetic $numberOfDevicesSelected:I

.field final synthetic $totalSelectableDevices:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;Lcom/amazon/kindle/krx/content/ContentType;II)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$reportActionMetrics$1;->$actionType:Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$reportActionMetrics$1;->$contentType:Lcom/amazon/kindle/krx/content/ContentType;

    iput p3, p0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$reportActionMetrics$1;->$totalSelectableDevices:I

    iput p4, p0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$reportActionMetrics$1;->$numberOfDevicesSelected:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;
    .locals 2

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$reportActionMetrics$1;->$actionType:Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseActionType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_type"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$reportActionMetrics$1;->$contentType:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_type"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 38
    iget v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$reportActionMetrics$1;->$totalSelectableDevices:I

    const-string/jumbo v1, "total_selectable_devices"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 39
    iget v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$reportActionMetrics$1;->$numberOfDevicesSelected:I

    const-string v1, "number_of_selected_devices"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    const-string v0, "addInteger(METRIC_NUMBER\u2026 numberOfDevicesSelected)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$reportActionMetrics$1;->invoke(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object p1

    return-object p1
.end method
