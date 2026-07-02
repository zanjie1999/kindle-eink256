.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;
.super Ljava/lang/Object;
.source "PhilipsZigbeeBleWorkflow.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->verifyAssociationAndProvision(Ljava/lang/String;Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)Lio/reactivex/CompletableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

.field final synthetic val$basicBLEDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

.field final synthetic val$deviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;

.field final synthetic val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;

    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->val$basicBLEDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->val$deviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)Lio/reactivex/CompletableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 288
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;->getZigbeeArcusSettings()Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/ZigbeeArcusSettings;->useV2Api()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 289
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->val$basicBLEDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->val$deviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->val$request:Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->val$basicBLEDevice:Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->val$deviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->access$900(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerDevicesCredentialsRequest;Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)Lio/reactivex/CompletableSource;

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

    .line 285
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$14;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
