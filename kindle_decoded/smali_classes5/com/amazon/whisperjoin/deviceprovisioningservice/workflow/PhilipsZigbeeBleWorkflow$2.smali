.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$2;
.super Ljava/lang/Object;
.source "PhilipsZigbeeBleWorkflow.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->prepareWorkflow(Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

.field final synthetic val$thirdPartyPeripheralDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$2;->val$thirdPartyPeripheralDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;)Lio/reactivex/CompletableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->isCanProceed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->getProvisionerReportUrl()Ljava/lang/String;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$2;->val$thirdPartyPeripheralDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$2;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    invoke-static {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->registerDeviceForEventReporting(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object p1

    return-object p1

    .line 135
    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceProvisioningDeferredException;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;->getWaitTimeMs()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/DeviceProvisioningDeferredException;-><init>(J)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$2;->apply(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/DiscoveredSmartHomeProvisioneeResponse;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
