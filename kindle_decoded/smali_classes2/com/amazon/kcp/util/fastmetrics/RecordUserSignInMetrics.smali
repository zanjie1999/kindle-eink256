.class public final Lcom/amazon/kcp/util/fastmetrics/RecordUserSignInMetrics;
.super Ljava/lang/Object;
.source "RecordUserSignInMetrics.kt"


# static fields
.field private static final DOWNLOAD_CHANNEL:Ljava/lang/String; = "download_channel"

.field private static final OPERATION:Ljava/lang/String; = "operation"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_SIGN_IN:Ljava/lang/String; = "USER_SIGN_IN"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/amazon/kcp/util/fastmetrics/RecordUserSignInMetrics;

    invoke-direct {v0}, Lcom/amazon/kcp/util/fastmetrics/RecordUserSignInMetrics;-><init>()V

    .line 13
    const-class v0, Lcom/amazon/kcp/util/fastmetrics/RecordUserSignInMetrics;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(RecordUserSignInMetrics::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordUserSignInMetrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final recordUserSignIn()V
    .locals 4

    .line 24
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz v0, :cond_0

    .line 27
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->USER_SIGN_IN_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaName()Ljava/lang/String;

    move-result-object v1

    .line 28
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->USER_SIGN_IN_METRICS:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;

    invoke-virtual {v2}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSchemas;->getSchemaVersion()I

    move-result v2

    .line 27
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string v2, "fastMetrics.getPayloadBu\u2026IN_METRICS.schemaVersion)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "operation"

    const-string v3, "USER_SIGN_IN"

    .line 29
    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/DownloadChannelInfo;->getDownloadChannel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "download_channel"

    invoke-interface {v1, v3, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 31
    invoke-interface {v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_0
    return-void
.end method
