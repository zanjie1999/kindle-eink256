.class public Lcom/amazon/client/metrics/thirdparty/configuration/MetricsNetworkConfiguration;
.super Ljava/lang/Object;
.source "MetricsNetworkConfiguration.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/configuration/NetworkConfiguration;


# instance fields
.field final mNetworkTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;",
            ">;"
        }
    .end annotation
.end field

.field mTransportType:Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;",
            "Ljava/util/Set<",
            "Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 21
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsNetworkConfiguration;->mTransportType:Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;

    .line 25
    iput-object p2, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsNetworkConfiguration;->mNetworkTypes:Ljava/util/Set;

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "networkTypes is null or empty in configuration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "tranportType is null in configuration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getNetworkTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/client/metrics/thirdparty/configuration/NetworkType;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsNetworkConfiguration;->mNetworkTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getTransportType()Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/configuration/MetricsNetworkConfiguration;->mTransportType:Lcom/amazon/client/metrics/thirdparty/configuration/TransportType;

    return-object v0
.end method
