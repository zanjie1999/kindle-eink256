.class Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;
.super Ljava/lang/Object;
.source "BasicPeripheralDevice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->connectToPeripheral(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/util/concurrent/Future;
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

.field final synthetic val$configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

.field final synthetic val$deviceSharedSecret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;->val$configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;->val$deviceSharedSecret:Ljava/lang/String;

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

    .line 147
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;->call()Ljava/lang/Void;

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

    .line 149
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->access$100(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;

    move-result-object v0

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/DeviceConnectionStateEventHandler;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-static {v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->access$000(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/DeviceConnectionStateEventHandler;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;)V

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;->openConnection(Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/DeviceConnectionStateEventHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->access$200(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;->val$configuration:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->setDeviceConnectionConfiguration(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->access$200(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;->val$deviceSharedSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->setPreSharedSecret(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
