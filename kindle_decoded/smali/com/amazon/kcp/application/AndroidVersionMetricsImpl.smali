.class final Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;
.super Ljava/lang/Object;
.source "AndroidVersionMetrics.kt"


# instance fields
.field private final apiLevel:I

.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final osString:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V
    .locals 1

    const-string/jumbo v0, "osString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fastMetrics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->apiLevel:I

    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->osString:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;

    iget v0, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->apiLevel:I

    iget v1, p1, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->apiLevel:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->osString:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->osString:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object p1, p1, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->apiLevel:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->osString:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final recordFastMetric()V
    .locals 3

    .line 51
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->ANDROID_VERSION_INFO:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    .line 52
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    const-string v1, "fastMetrics.getPayloadBu\u2026me, schema.schemaVersion)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget v1, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->apiLevel:I

    const-string v2, "android_api_level"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 55
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->osString:Ljava/lang/String;

    const-string/jumbo v2, "os_version_string"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 56
    invoke-interface {v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v0

    const-string v1, "builder.run {\n          \u2026urn@run build()\n        }"

    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidVersionMetricsImpl(apiLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->apiLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", osString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->osString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fastMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidVersionMetricsImpl;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
