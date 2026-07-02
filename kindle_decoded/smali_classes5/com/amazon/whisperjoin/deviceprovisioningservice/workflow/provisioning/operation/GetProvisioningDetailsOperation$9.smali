.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$9;
.super Ljava/lang/Object;
.source "GetProvisioningDetailsOperation.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;->recordVisibleNetworkMetrics()Lio/reactivex/functions/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$9;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$9;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation;)Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    move-result-object v0

    sget-object v1, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->GET_VISIBLE_NETWORKS:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;->getMetricsRecorder(Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)Lcom/amazon/whisperjoin/metrics/MetricsRecorder;

    move-result-object v0

    .line 262
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericTreeSetCollection;->size()I

    move-result p1

    int-to-double v1, p1

    const-string p1, "DiscoveredNetworkCount"

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->recordCounter(Ljava/lang/String;D)V

    .line 263
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/metrics/MetricsRecorder;->close()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 258
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/GetProvisioningDetailsOperation$9;->accept(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;)V

    return-void
.end method
