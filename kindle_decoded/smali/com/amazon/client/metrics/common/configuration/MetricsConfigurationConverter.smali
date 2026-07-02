.class public Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationConverter;
.super Ljava/lang/Object;
.source "MetricsConfigurationConverter.java"


# direct methods
.method public static convertBatchPipelineConfigurationMap_fromCommonToThirdParty(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;",
            "Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;",
            "Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "convertConfigMap"

    const-string v0, "Returning null for null Common Batch Pipeline Config Map Input"

    .line 195
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 202
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 205
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 207
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;

    invoke-static {v2}, Lcom/amazon/client/metrics/common/batch/creator/internal/PriorityChannelPairConverter;->convertCommonToThirdParty(Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;)Lcom/amazon/client/metrics/thirdparty/batch/creator/PriorityChannelPair;

    move-result-object v2

    .line 210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;

    invoke-static {v1}, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationConverter;->convertBatchPipelineConfiguration_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    move-result-object v1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 213
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static convertBatchPipelineConfiguration_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;)Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "convertPipelineConfig"

    if-nez p0, :cond_0

    const-string p0, "Returning null for null Common Batch Pipeline Config Input"

    .line 156
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 161
    :cond_0
    instance-of v2, p0, Lcom/amazon/client/metrics/common/configuration/MetricsBatchPipelineConfiguration;

    if-nez v2, :cond_1

    const-string p0, "BatchPipelineConfig not instance of MetricsBatchPipelineConfig, returning null"

    .line 162
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 167
    :cond_1
    check-cast p0, Lcom/amazon/client/metrics/common/configuration/MetricsBatchPipelineConfiguration;

    .line 168
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/configuration/MetricsBatchPipelineConfiguration;->getDelegateBatchPipelineConfiguration()Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;

    move-result-object p0

    .line 170
    instance-of v2, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsBatchPipelineConfiguration;

    if-eqz v2, :cond_2

    .line 171
    check-cast p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsBatchPipelineConfiguration;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsBatchPipelineConfiguration;->getDelegateBatchPipelineConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/BatchPipelineConfiguration;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Returning null for Common BatchPipeline Config that does not delegate to ThirdParty"

    .line 174
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static convertCodecConfiguration_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;)Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "convertCodecConfig"

    if-nez p0, :cond_0

    const-string p0, "Returning null for null Common Codec Config Input"

    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;->getDelegateCodecConfiguration()Lcom/amazon/client/metrics/common/configuration/internal/ICodecConfiguration;

    move-result-object p0

    .line 109
    instance-of v2, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidCodecConfiguration;

    if-eqz v2, :cond_1

    .line 110
    check-cast p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidCodecConfiguration;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidCodecConfiguration;->getDelegateCodecConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Returning null for Common CodecConfig that does not delegate to ThirdParty"

    .line 113
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static convertHttpConfiguration_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;)Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "convertHttpConfig"

    if-nez p0, :cond_0

    const-string p0, "Returning null for null Common Http Config Input"

    .line 129
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;->getDelegateHttpConfiguration()Lcom/amazon/client/metrics/common/configuration/internal/IHttpConfiguration;

    move-result-object p0

    .line 136
    instance-of v2, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidHttpConfiguration;

    if-eqz v2, :cond_1

    .line 137
    check-cast p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidHttpConfiguration;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidHttpConfiguration;->getDelegateHttpConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Returning null for Common HttpConfig that does not delegate to ThirdParty"

    .line 140
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static convertMetricsConfiguration_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;)Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "convertMetricsConfig"

    if-nez p0, :cond_0

    const-string p0, "Returning null for null Common MetricsConfiguration Input"

    .line 232
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;->getDelegateMetricsConfiguration()Lcom/amazon/client/metrics/common/configuration/internal/IMetricsConfiguration;

    move-result-object p0

    .line 240
    instance-of v2, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsConfiguration;

    if-eqz v2, :cond_1

    .line 241
    check-cast p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsConfiguration;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsConfiguration;->getDelegateThirdPartyMetricsConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "Returning null for Common MetricsConfiguration that does not delegate to ThirdParty"

    .line 244
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static convertNetworkConfiguration_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;)Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "convertNetworkConfig"

    if-nez p0, :cond_0

    const-string p0, "Returning null for null Common NetworkConfig Input"

    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 47
    :cond_0
    instance-of v2, p0, Lcom/amazon/client/metrics/common/configuration/MetricsNetworkConfiguration;

    if-nez v2, :cond_1

    const-string p0, "NetworkConfig not instance of MetricsNetworkConfig, returning null"

    .line 48
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 53
    :cond_1
    check-cast p0, Lcom/amazon/client/metrics/common/configuration/MetricsNetworkConfiguration;

    .line 54
    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/configuration/MetricsNetworkConfiguration;->getDelegateNetworkConfiguration()Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;

    move-result-object p0

    .line 56
    instance-of v2, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsNetworkConfiguration;

    if-eqz v2, :cond_2

    .line 57
    check-cast p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsNetworkConfiguration;

    invoke-virtual {p0}, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsNetworkConfiguration;->getDelegateNetworkConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Returning null for Common NetworkConfig that does not delegate to ThirdParty"

    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static convertNetworkTypes_fromCommonToThirdParty(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/client/metrics/common/configuration/NetworkType;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "convertNetworkTypes"

    const-string v0, "Returning null for null Common NetworkTypes Input"

    .line 360
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 364
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 365
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 367
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/client/metrics/common/configuration/NetworkType;

    .line 370
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {v1}, Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;

    move-result-object v1

    .line 368
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
