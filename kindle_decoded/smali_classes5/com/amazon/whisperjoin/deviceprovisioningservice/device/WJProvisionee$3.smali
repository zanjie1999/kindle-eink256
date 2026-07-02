.class Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$3;
.super Ljava/lang/Object;
.source "WJProvisionee.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->connectToDevice(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

.field final synthetic val$configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$3;->val$configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/CompletableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$3;->this$0:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;

    invoke-static {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee;)Lcom/amazon/whisperjoin/provisionerSDK/devices/AmazonPeripheralDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$3;->val$configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->connectToPeripheral(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/device/WJProvisionee$3;->call()Lio/reactivex/CompletableSource;

    move-result-object v0

    return-object v0
.end method
