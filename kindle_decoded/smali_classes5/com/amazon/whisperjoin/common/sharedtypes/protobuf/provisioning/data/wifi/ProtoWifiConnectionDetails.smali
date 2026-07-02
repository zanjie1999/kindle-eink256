.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;
.super Ljava/lang/Object;
.source "ProtoWifiConnectionDetails.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getProtobufKeyManagement(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;
    .locals 0

    .line 59
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object p1

    return-object p1
.end method

.method private getProtobufState(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;
    .locals 0

    .line 63
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;->getValue()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;

    move-result-object p1

    return-object p1
.end method

.method private getState(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;
    .locals 1

    .line 55
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;

    return-object p1
.end method

.method private getWifiKeyManagement(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;
    .locals 1

    .line 51
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->values()[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;
    .locals 3

    .line 24
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;->getWifiConnectionDetails(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 26
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

    .line 13
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    move-result-object p1

    return-object p1
.end method

.method public getProtobufWifiConnectionDetails(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    .locals 2

    .line 33
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->setSsid(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    .line 35
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;->getProtobufKeyManagement(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->setWifiKeyManagement(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    .line 36
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;->getConnectionState()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;->getProtobufState(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->setState(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    .line 37
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object p1

    return-object p1
.end method

.method public getWifiConnectionDetails(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;
    .locals 3

    .line 42
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getWifiKeyManagement()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;->getWifiKeyManagement(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getState()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;->getState(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails$State;)V

    return-object v2
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;)[B
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;->getProtobufWifiConnectionDetails(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 13
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiConnectionDetails;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiConnectionDetails;)[B

    move-result-object p1

    return-object p1
.end method
