.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoVisibleNetworksUpdatedEvent;
.super Ljava/lang/Object;
.source "ProtoVisibleNetworksUpdatedEvent.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final protoWifiScanResultCollection:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiScanResultCollection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiScanResultCollection;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiScanResultCollection;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoVisibleNetworksUpdatedEvent;->protoWifiScanResultCollection:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiScanResultCollection;

    return-void
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;
    .locals 3

    .line 30
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoVisibleNetworksUpdatedEvent;->protoWifiScanResultCollection:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiScanResultCollection;

    .line 36
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiScanResultCollection;->getWifiScanResultCollection(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 32
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic deserialize([B)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoVisibleNetworksUpdatedEvent;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;)[B
    .locals 2

    .line 18
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/UuidHelpers;->encodeIntoByteArray(Ljava/util/UUID;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;->setUuid(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoVisibleNetworksUpdatedEvent;->protoWifiScanResultCollection:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiScanResultCollection;

    .line 20
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/ProvisionableEvent;->getEventData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;

    invoke-virtual {v1, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiScanResultCollection;->getProtobufWifiScanResultCollection(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiScanResultCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;->setEventData(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    .line 21
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/ble/events/ProtoVisibleNetworksUpdatedEvent;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/ble/events/VisibleNetworksUpdatedEvent;)[B

    move-result-object p1

    return-object p1
.end method
