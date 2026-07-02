.class public Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsConfiguration;
.super Ljava/lang/Object;
.source "AndroidMetricsConfiguration.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/configuration/internal/IMetricsConfiguration;


# instance fields
.field private final mDelegateThirdPartyMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;",
            "Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;",
            "Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;",
            "Ljava/util/Map<",
            "Lcom/amazon/client/metrics/common/batch/creator/PriorityChannelPair;",
            "Lcom/amazon/client/metrics/common/configuration/BatchPipelineConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    :try_start_0
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    .line 88
    invoke-static {p1}, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationConverter;->convertNetworkConfiguration_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;)Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    move-result-object p1

    .line 89
    invoke-static {p2}, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationConverter;->convertCodecConfiguration_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;)Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;

    move-result-object p2

    .line 90
    invoke-static {p3}, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationConverter;->convertHttpConfiguration_fromCommonToThirdParty(Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;)Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;

    move-result-object p3

    .line 91
    invoke-static {p4}, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationConverter;->convertBatchPipelineConfigurationMap_fromCommonToThirdParty(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;Lcom/amazon/client/metrics/thirdparty/configuration/CodecConfiguration;Lcom/amazon/client/metrics/thirdparty/configuration/HttpConfiguration;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsConfiguration;->mDelegateThirdPartyMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;
    :try_end_0
    .catch Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 93
    new-instance p2, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getDelegateThirdPartyMetricsConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsConfiguration;->mDelegateThirdPartyMetricsConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/MetricsConfiguration;

    return-object v0
.end method
