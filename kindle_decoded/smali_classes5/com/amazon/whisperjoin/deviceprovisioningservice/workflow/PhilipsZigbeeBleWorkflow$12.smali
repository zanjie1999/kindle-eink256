.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$12;
.super Ljava/lang/Object;
.source "PhilipsZigbeeBleWorkflow.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->provisionPhilipsDevice(Lcom/amazon/whisperjoin/provisionerSDK/devices/basic/BasicBLEDevice;Lcom/amazon/whisperjoin/common/sharedtypes/devices/ThirdPartyPeripheralDeviceDetails;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$12;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$12;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Retrieved provisioning details"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->access$600(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 249
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow$12;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/PhilipsZigbeeBleWorkflow;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/SmartHomeProvisioningEventReporter;->reportRetrievedProvisioningDetailsSuccess(Ljava/lang/String;)V

    return-void
.end method
