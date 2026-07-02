.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$5;
.super Ljava/lang/Object;
.source "PhilipsZigbeeBleWorkflow.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->establishConnection(Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$5;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connection Success"

    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$5;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->reportConnectionSuccess()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    check-cast p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$5;->accept(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;)V

    return-void
.end method
