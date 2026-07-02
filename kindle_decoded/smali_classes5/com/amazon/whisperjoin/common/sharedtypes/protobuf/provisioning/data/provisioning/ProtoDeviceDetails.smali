.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoDeviceDetails;
.super Ljava/lang/Object;
.source "ProtoDeviceDetails.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mProtoDataMap:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;

.field private final mProtoWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoDeviceDetails;->mProtoDataMap:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;

    .line 20
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoDeviceDetails;->mProtoWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;

    return-void
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;
    .locals 10

    .line 53
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    new-instance v9, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceModelNumber()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceHardwareRevision()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceFirmwareRevision()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoDeviceDetails;->mProtoDataMap:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;

    .line 63
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;->deserializeMap(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    move-result-object v6

    .line 64
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->hasLastConnectionWifiDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoDeviceDetails;->mProtoWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;

    .line 65
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;->getWifiConnectionDetails(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    .line 67
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getSdkVersion()Ljava/lang/String;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->getNetworkSyncToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v9, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 55
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
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoDeviceDetails;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;)[B
    .locals 3

    .line 25
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setManufacturer(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 27
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceModelNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setDeviceModelNumber(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 28
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setDeviceSerialNumber(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 29
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceHardwareRevision()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setDeviceHardwareRevision(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 30
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceFirmwareRevision()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setDeviceFirmwareRevision(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoDeviceDetails;->mProtoDataMap:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;

    .line 31
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getDeviceCapabilitiesMap()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;->serializeMap(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setDeviceCapabilitiesMap(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 34
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->hasLastConnectionWifiDetails()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoDeviceDetails;->mProtoWifiConnectionDetails:Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;

    .line 36
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getLastConnectionWifiDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;->getProtobufWifiConnectionDetails(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setLastConnectionWifiDetails(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->getNetworkSyncToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->getNetworkSyncToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setNetworkSyncToken(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 44
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;->getSdkVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->setSdkVersion(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;

    .line 46
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufDeviceDetailsClass$ProtobufDeviceDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoDeviceDetails;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;)[B

    move-result-object p1

    return-object p1
.end method
