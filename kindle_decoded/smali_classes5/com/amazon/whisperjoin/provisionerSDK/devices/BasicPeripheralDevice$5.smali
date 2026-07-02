.class Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$5;
.super Ljava/lang/Object;
.source "BasicPeripheralDevice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->completeProvisioning()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$5;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$5;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->COMPLETE_PROVISIONING:Lcom/amazon/whisperbridge/constants/Command;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->executeOperation(Lcom/amazon/whisperbridge/constants/Command;Ljava/lang/Object;Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$5;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->access$100(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;->onProvisioningComplete()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method
