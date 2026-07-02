.class public Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsNetworkConfiguration;
.super Ljava/lang/Object;
.source "AndroidMetricsNetworkConfiguration.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/configuration/NetworkConfiguration;


# instance fields
.field private final mDelegateThirdPartyNetworkConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;


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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsNetworkConfiguration;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;

    move-result-object p1

    .line 40
    invoke-static {p2}, Lcom/amazon/client/metrics/common/configuration/MetricsConfigurationConverter;->convertNetworkTypes_fromCommonToThirdParty(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsNetworkConfiguration;-><init>(Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsNetworkConfiguration;->mDelegateThirdPartyNetworkConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    return-void
.end method


# virtual methods
.method public getDelegateNetworkConfiguration()Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/client/metrics/common/configuration/internal/android/AndroidMetricsNetworkConfiguration;->mDelegateThirdPartyNetworkConfiguration:Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;

    return-object v0
.end method
