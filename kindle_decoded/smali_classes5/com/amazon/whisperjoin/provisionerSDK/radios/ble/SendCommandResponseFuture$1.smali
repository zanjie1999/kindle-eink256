.class Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture$1;
.super Ljava/lang/Object;
.source "SendCommandResponseFuture.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;-><init>(Ljava/io/ByteArrayOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$oStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture$1;->val$oStream:Ljava/io/ByteArrayOutputStream;

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

    .line 20
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture$1;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ProtocolBuffersSerializer;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture$1;->val$oStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 26
    const-class v2, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    .line 27
    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    .line 26
    invoke-interface {v0, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->deserialize([BLcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;

    .line 29
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command Response Data for UUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->getIdentifier()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->byteStruct(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 30
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->getData()[B

    move-result-object v0

    return-object v0

    .line 32
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/ble/SendCommandResponseFuture;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Command was not successful"

    invoke-static {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->getIdentifier()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/commands/ProvisioningCommandResponse;->getStatus()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/UnsuccessfulProvisioningCommandError;-><init>(Ljava/lang/String;I)V

    throw v1
.end method
