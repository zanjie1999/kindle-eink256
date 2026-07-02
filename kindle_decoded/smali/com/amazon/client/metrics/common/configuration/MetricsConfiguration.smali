.class public Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;
.super Ljava/lang/Object;
.source "MetricsConfiguration.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/configuration/internal/IMetricsConfiguration;


# instance fields
.field private final mDelegateMetricsConfiguration:Lcom/amazon/client/metrics/common/configuration/internal/IMetricsConfiguration;


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

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsConfiguration;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsConfiguration;-><init>(Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;Lcom/amazon/client/metrics/common/configuration/CodecConfiguration;Lcom/amazon/client/metrics/common/configuration/HttpConfiguration;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;->mDelegateMetricsConfiguration:Lcom/amazon/client/metrics/common/configuration/internal/IMetricsConfiguration;

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Lcom/amazon/client/metrics/common/configuration/internal/NullMetricsConfiguration;

    invoke-direct {p1}, Lcom/amazon/client/metrics/common/configuration/internal/NullMetricsConfiguration;-><init>()V

    iput-object p1, p0, Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;->mDelegateMetricsConfiguration:Lcom/amazon/client/metrics/common/configuration/internal/IMetricsConfiguration;

    :goto_0
    return-void
.end method


# virtual methods
.method getDelegateMetricsConfiguration()Lcom/amazon/client/metrics/common/configuration/internal/IMetricsConfiguration;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/client/metrics/common/configuration/MetricsConfiguration;->mDelegateMetricsConfiguration:Lcom/amazon/client/metrics/common/configuration/internal/IMetricsConfiguration;

    return-object v0
.end method
