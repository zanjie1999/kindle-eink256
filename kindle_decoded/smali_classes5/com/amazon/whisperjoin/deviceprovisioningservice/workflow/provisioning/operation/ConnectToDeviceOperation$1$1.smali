.class Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1$1;
.super Ljava/lang/Object;
.source "ConnectToDeviceOperation.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1;->apply(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$ConnectToDevice;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

.field final synthetic val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)V
    .locals 0

    .line 51
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1$1;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1$1;->val$configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;
    .locals 4

    .line 54
    invoke-static {}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection was unsuccessful, cleaning up connection."

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1$1;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->disconnect()V

    .line 58
    instance-of v0, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$ConnectionOperationError;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$ConnectionOperationError;

    .line 60
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1$1;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$ConnectionOperationError;->getConnectionStatusUpdate()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$ConnectionOperationError;->getFailureCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;->error(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1$1;->val$wjProvisionee:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    new-instance v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1$1;->val$configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    sget-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->OTHER_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    invoke-direct {v1, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;)V

    invoke-static {v0, v1, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;->error(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult$Connection;

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

    .line 51
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/ConnectToDeviceOperation$1$1;->apply(Ljava/lang/Throwable;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;

    move-result-object p1

    return-object p1
.end method
