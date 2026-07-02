.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1;
.super Ljava/lang/Object;
.source "BlessDiscoveredWhisperJoinDeviceOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$BlessDiscoveredDevice;",
        "Lio/reactivex/ObservableSource<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$BlessDiscoveredDevice;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$BlessDiscoveredDevice;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    .line 67
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->isDistressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;

    move-object v1, p1

    check-cast v1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;

    .line 69
    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetailsV2;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->discoveredDistressedProvisionee(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredDistressedProvisioneeRequest;)Lio/reactivex/Single;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;

    invoke-static {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/DSSClient;->discoveredProvisionableDevice(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredProvisionableDeviceRequest;)Lio/reactivex/Single;

    move-result-object v0

    .line 79
    :goto_0
    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)V

    .line 80
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMapObservable(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)V

    .line 94
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 103
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;->inProgress()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Discovery;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

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

    .line 62
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$BlessDiscoveredDevice;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/BlessDiscoveredWhisperJoinDeviceOperation$1;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$BlessDiscoveredDevice;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
