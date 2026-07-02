.class public final Lcom/amazon/kcp/util/fastmetrics/RecordLibraryDownloadCDEErrorMetrics;
.super Ljava/lang/Object;
.source "RecordLibraryDownloadCDEErrorMetrics.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/RecordLibraryDownloadCDEErrorMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordLibraryDownloadCDEErrorMetrics;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recordCDEErrorMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "errorTitle"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_1

    .line 25
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->LIBRARY_DOWNLOAD_CDE_ERROR_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 26
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->LIBRARY_DOWNLOAD_CDE_ERROR_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    .line 24
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/DownloadCDEErrorMetricsKey;->DOWNLOAD_ERROR_TITLE:Lcom/amazon/kcp/util/fastmetrics/DownloadCDEErrorMetricsKey;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/DownloadCDEErrorMetricsKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 28
    sget-object p0, Lcom/amazon/kcp/util/fastmetrics/DownloadCDEErrorMetricsKey;->USER_RESPONSE:Lcom/amazon/kcp/util/fastmetrics/DownloadCDEErrorMetricsKey;

    invoke-virtual {p0}, Lcom/amazon/kcp/util/fastmetrics/DownloadCDEErrorMetricsKey;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string p0, "getPayloadBuilder(\n     \u2026erResponse)\n            }"

    .line 26
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_1
    return-void
.end method
