.class Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$2;
.super Ljava/lang/Object;
.source "BasicPeripheralDevice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->startProvisioning()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/whisperbridge/ProvisioningStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whisperbridge/ProvisioningStatus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-static {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->access$100(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;->startProvisioning()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperbridge/ProvisioningStatus;

    .line 171
    invoke-virtual {v0}, Lcom/amazon/whisperbridge/ProvisioningStatus;->isProvisioner()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->access$200(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;->getTrustProvider()Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiator;

    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-interface {v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiator;->start(Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->access$302(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;

    .line 178
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$2;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-static {v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->access$400(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$2;->call()Lcom/amazon/whisperbridge/ProvisioningStatus;

    move-result-object v0

    return-object v0
.end method
