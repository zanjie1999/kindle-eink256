.class public final Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;
.super Ljava/lang/Object;
.source "InBookFastMetrics.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getFastMetrics()Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;
    .locals 1

    .line 65
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-object v0
.end method

.method public static final reportBookmarkAction(ZLjava/lang/String;)V
    .locals 3

    const-string v0, "entryPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->getFastMetrics()Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->BOOKMARK_TAP_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 21
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->BOOKMARK_TAP_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    .line 20
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string v2, "it.getPayloadBuilder(Fas\u2026AP_ACTIONS.schemaVersion)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "is_created"

    .line 22
    invoke-interface {v1, v2, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p0, "entry_point"

    .line 23
    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 24
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method

.method public static final reportOrientationLockTap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "orientationName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->getFastMetrics()Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->ORIENTATION_LOCK_TAP_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 38
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->ORIENTATION_LOCK_TAP_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    .line 37
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string v2, "it.getPayloadBuilder(Fas\u2026AP_ACTIONS.schemaVersion)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "orientation"

    .line 39
    invoke-interface {v1, v2, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    const-string p0, "entry_point"

    .line 40
    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 41
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method
