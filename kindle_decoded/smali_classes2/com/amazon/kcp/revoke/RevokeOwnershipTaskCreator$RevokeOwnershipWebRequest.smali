.class Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator$RevokeOwnershipWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "RevokeOwnershipTaskCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RevokeOwnershipWebRequest"
.end annotation


# instance fields
.field asin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p3, p0, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator$RevokeOwnershipWebRequest;->asin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 9

    .line 66
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "RevokeOwnershipWebRequest"

    const-string v3, "RequestComplete"

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 67
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRevokeOwnershipResumer()Lcom/amazon/kindle/IRevokeOwnershipResumer;

    move-result-object v4

    if-eqz v0, :cond_2

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v5

    .line 74
    invoke-interface {v5}, Lcom/amazon/kindle/network/INetworkService;->isWifiConnected()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Lcom/amazon/kindle/network/INetworkService;->isWanConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 76
    invoke-static {}, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator;->access$000()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Revoke : network not available. Asin : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator$RevokeOwnershipWebRequest;->asin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    new-instance v5, Lcom/amazon/kindle/revoke/RevokeTracker;

    iget-object v6, p0, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator$RevokeOwnershipWebRequest;->asin:Ljava/lang/String;

    sget-object v7, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 79
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/amazon/kindle/revoke/RevokeFailureType;->NETWORK:Lcom/amazon/kindle/revoke/RevokeFailureType;

    .line 80
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/amazon/kindle/revoke/RevokeTracker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    invoke-interface {v4, v5}, Lcom/amazon/kindle/IRevokeOwnershipResumer;->persistRevokeRequest(Lcom/amazon/kindle/revoke/IRevokeTracker;)V

    .line 83
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v5, "NetworkNotAvailable"

    invoke-virtual {v3, v2, v5, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_1

    .line 86
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator;->access$000()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Revoke : service error. Asin : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator$RevokeOwnershipWebRequest;->asin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    new-instance v5, Lcom/amazon/kindle/revoke/RevokeTracker;

    iget-object v6, p0, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator$RevokeOwnershipWebRequest;->asin:Ljava/lang/String;

    sget-object v7, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->BOOK_SAMPLE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    .line 89
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/amazon/kindle/revoke/RevokeFailureType;->OTHER:Lcom/amazon/kindle/revoke/RevokeFailureType;

    .line 90
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/amazon/kindle/revoke/RevokeTracker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    invoke-interface {v4, v5}, Lcom/amazon/kindle/IRevokeOwnershipResumer;->persistRevokeRequest(Lcom/amazon/kindle/revoke/IRevokeTracker;)V

    .line 93
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v5, "ServiceError"

    invoke-virtual {v3, v2, v5, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_1

    .line 97
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator;->access$000()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Revoke ownership request successful. Deleting revoke request from DB for asin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator$RevokeOwnershipWebRequest;->asin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/amazon/kcp/revoke/RevokeOwnershipTaskCreator$RevokeOwnershipWebRequest;->asin:Ljava/lang/String;

    invoke-interface {v4, v2}, Lcom/amazon/kindle/IRevokeOwnershipResumer;->deleteRevokeRequest(Ljava/lang/String;)V

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method
