.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiNetwork;
.super Ljava/lang/Object;
.source "ProtoWifiNetwork.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getProtobufKeyManagement(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;
    .locals 0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object p1

    return-object p1
.end method

.method private getWifiKeyManagement(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;
    .locals 1

    .line 37
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;->values()[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;
    .locals 3

    .line 26
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->getWifiKeyManagement()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiNetwork;->getWifiKeyManagement(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object v0

    .line 32
    new-instance v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;-><init>(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 28
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

    .line 11
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiNetwork;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)[B
    .locals 2

    .line 14
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;->setSsid(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    .line 16
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;->getKeyManagement()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiNetwork;->getProtobufKeyManagement(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiKeyManagement;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;->setWifiKeyManagement(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    .line 17
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/wifi/ProtoWifiNetwork;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/wifi/WifiNetwork;)[B

    move-result-object p1

    return-object p1
.end method
