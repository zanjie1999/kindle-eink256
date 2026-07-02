.class Lcom/amazon/kcp/store/adapter/InstrumentDCMAdapter;
.super Ljava/lang/Object;
.source "InstrumentDCMAdapter.java"


# direct methods
.method private static createMetricsConfiguration()Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;
    .locals 24

    .line 58
    :try_start_0
    sget-object v0, Lcom/amazon/client/metrics/common/configuration/TransportType;->HTTP:Lcom/amazon/client/metrics/common/configuration/TransportType;

    .line 59
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 60
    sget-object v2, Lcom/amazon/client/metrics/common/configuration/NetworkType;->WIFI:Lcom/amazon/client/metrics/common/configuration/NetworkType;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v2, Lcom/amazon/client/metrics/common/configuration/NetworkType;->ETHERNET:Lcom/amazon/client/metrics/common/configuration/NetworkType;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v2, Lcom/amazon/client/metrics/common/configuration/MetricsNetworkConfiguration;

    invoke-direct {v2, v0, v1}, Lcom/amazon/client/metrics/common/configuration/MetricsNetworkConfiguration;-><init>(Lcom/amazon/client/metrics/common/configuration/TransportType;Ljava/util/Set;)V

    .line 63
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;

    sget-object v1, Lcom/amazon/client/metrics/common/configuration/CodecType;->PROTOCOL_BUFFERS:Lcom/amazon/client/metrics/common/configuration/CodecType;

    const-string v3, "1.0"

    invoke-direct {v0, v1, v3}, Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;-><init>(Lcom/amazon/client/metrics/common/configuration/CodecType;Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;

    sget-object v3, Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;->OAUTH:Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;

    const-string v4, "https://device-metrics-us.amazon.com:443"

    const-string v5, "https://device-metrics-us-2.amazon.com:443"

    invoke-direct {v1, v3, v4, v5}, Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;-><init>(Lcom/amazon/client/metrics/common/configuration/HttpRequestSignerType;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66
    new-instance v15, Lcom/amazon/client/metrics/common/configuration/MetricsBatchPipelineConfiguration;

    sget-object v5, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;->NON_VOLATILE:Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    const-string v6, ""

    const-wide/32 v7, 0x493e0

    const-wide/32 v9, 0x2bf20

    const/high16 v11, 0x10000

    const/high16 v12, 0x10000

    const/high16 v13, 0x500000

    const/high16 v14, 0x10000

    const-wide/32 v16, 0x240c8400

    const-wide/32 v18, 0x5265c00

    const-wide/32 v20, 0x927c0

    sget-object v22, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->PERIODIC:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    move-object v4, v15

    move-object/from16 v23, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-object/from16 v21, v22

    invoke-direct/range {v4 .. v21}, Lcom/amazon/client/metrics/common/configuration/MetricsBatchPipelineConfiguration;-><init>(Lcom/amazon/client/metrics/common/configuration/BatchQueueType;Ljava/lang/String;JJIIIIJJJLcom/amazon/client/metrics/common/configuration/BatchTransmitterType;)V

    .line 67
    new-instance v4, Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;

    sget-object v5, Lcom/amazon/client/metrics/common/Priority;->NORMAL:Lcom/amazon/client/metrics/common/Priority;

    sget-object v6, Lcom/amazon/client/metrics/common/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

    invoke-direct {v4, v5, v6}, Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V

    move-object/from16 v5, v23

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v4, Lcom/amazon/client/metrics/common/configuration/MetricsBatchPipelineConfiguration;

    sget-object v7, Lcom/amazon/client/metrics/common/configuration/BatchQueueType;->SEMI_VOLATILE:Lcom/amazon/client/metrics/common/configuration/BatchQueueType;

    const-string v8, ""

    const-wide/16 v9, 0x3e8

    const-wide/16 v11, 0x1f4

    const/high16 v13, 0x10000

    const/high16 v14, 0x10000

    const/high16 v15, 0x100000

    const/high16 v16, 0x10000

    const-wide/32 v17, 0x240c8400

    const-wide/32 v19, 0x5265c00

    const-wide/32 v21, 0x493e0

    sget-object v23, Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;->URGENT:Lcom/amazon/client/metrics/common/configuration/BatchTransmitterType;

    move-object v6, v4

    invoke-direct/range {v6 .. v23}, Lcom/amazon/client/metrics/common/configuration/MetricsBatchPipelineConfiguration;-><init>(Lcom/amazon/client/metrics/common/configuration/BatchQueueType;Ljava/lang/String;JJIIIIJJJLcom/amazon/client/metrics/common/configuration/BatchTransmitterType;)V

    .line 69
    new-instance v5, Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;

    sget-object v6, Lcom/amazon/client/metrics/common/Priority;->HIGH:Lcom/amazon/client/metrics/common/Priority;

    sget-object v7, Lcom/amazon/client/metrics/common/Channel;->ANONYMOUS:Lcom/amazon/client/metrics/common/Channel;

    invoke-direct {v5, v6, v7}, Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;-><init>(Lcom/amazon/client/metrics/common/Priority;Lcom/amazon/client/metrics/common/Channel;)V

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v4, Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;

    invoke-direct {v4, v2, v0, v1, v3}, Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;-><init>(Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setMetricsConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 42
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 44
    invoke-static {}, Lcom/amazon/kcp/store/adapter/InstrumentDCMAdapter;->createMetricsConfiguration()Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->setMetricsConfiguration(Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;)V

    .line 45
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->setDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    invoke-static {p0, p1}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->setDeviceType(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    new-instance p1, Lcom/amazon/kcp/store/adapter/InstrumentDCMAdapter$1;

    invoke-direct {p1}, Lcom/amazon/kcp/store/adapter/InstrumentDCMAdapter$1;-><init>()V

    .line 53
    invoke-static {p0, p1}, Lcom/amazon/client/metrics/common/AndroidMetricsFactoryImpl;->setOAuthHelper(Landroid/content/Context;Lcom/amazon/client/metrics/common/transport/OAuthHelper;)V

    return-void
.end method
