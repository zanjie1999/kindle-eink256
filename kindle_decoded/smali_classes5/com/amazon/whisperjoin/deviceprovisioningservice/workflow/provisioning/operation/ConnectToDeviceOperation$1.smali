.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1;
.super Ljava/lang/Object;
.source "ConnectToDeviceOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ConnectToDevice;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ConnectToDevice;)Lio/reactivex/ObservableSource;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ConnectToDevice;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;->getWJProvisionee()Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    .line 46
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;

    .line 47
    invoke-static {v1, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Lio/reactivex/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;

    .line 48
    invoke-static {v2, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Lio/reactivex/Observable;

    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;

    iget-object v3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;

    .line 50
    invoke-static {v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;)Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;

    move-result-object v3

    sget-object v4, Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;->CONNECT_TO_DEVICE_OPERATION:Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;

    invoke-direct {v2, v3, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/metrics/MetricsRecorderObservableSourceTransformer;-><init>(Lcom/amazon/whisperjoin/metrics/MetricsRecorderProvider;Lcom/amazon/whisperjoin/metrics/WhisperJoinMetricSourceName;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)V

    .line 51
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->onErrorReturn(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;

    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->CONNECTING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    invoke-direct {v2, p1, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;)V

    .line 67
    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;->inProgress(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ConnectToDevice;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ConnectToDevice;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
