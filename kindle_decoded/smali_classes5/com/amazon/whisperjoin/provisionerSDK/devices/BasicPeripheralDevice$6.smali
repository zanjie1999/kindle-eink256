.class Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$6;
.super Ljava/lang/Object;
.source "BasicPeripheralDevice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->getDeviceDetails()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$6;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$6;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    sget-object v1, Lcom/amazon/whisperbridge/constants/Command;->GET_DEVICE_DETAILS:Lcom/amazon/whisperbridge/constants/Command;

    new-instance v2, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$6$1;

    invoke-direct {v2, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$6$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$6;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->executeOperation(Lcom/amazon/whisperbridge/constants/Command;Ljava/lang/Object;Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$6;->call()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;

    move-result-object v0

    return-object v0
.end method
