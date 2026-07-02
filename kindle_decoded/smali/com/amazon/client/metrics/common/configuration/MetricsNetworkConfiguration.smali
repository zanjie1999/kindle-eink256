.class public Lcom/amazon/client/metrics/common/configuration/MetricsNetworkConfiguration;
.super Ljava/lang/Object;
.source "MetricsNetworkConfiguration.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;


# instance fields
.field private final mDelegateNetworkConfiguration:Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/configuration/TransportType;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/client/metrics/common/configuration/TransportType;",
            "Ljava/util/Set<",
            "Lcom/amazon/client/metrics/common/configuration/NetworkType;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsNetworkConfiguration;

    invoke-direct {v0, p1, p2}, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsNetworkConfiguration;-><init>(Lcom/amazon/client/metrics/common/configuration/TransportType;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/configuration/MetricsNetworkConfiguration;->mDelegateNetworkConfiguration:Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;

    goto :goto_0

    .line 47
    :cond_0
    new-instance p1, Lcom/amazon/client/metrics/common/configuration/internal/NullMetricsNetworkConfiguration;

    invoke-direct {p1}, Lcom/amazon/client/metrics/common/configuration/internal/NullMetricsNetworkConfiguration;-><init>()V

    iput-object p1, p0, Lcom/amazon/client/metrics/common/configuration/MetricsNetworkConfiguration;->mDelegateNetworkConfiguration:Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;

    :goto_0
    return-void
.end method


# virtual methods
.method getDelegateNetworkConfiguration()Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/client/metrics/common/configuration/MetricsNetworkConfiguration;->mDelegateNetworkConfiguration:Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;

    return-object v0
.end method
