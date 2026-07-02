.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;
.super Ljava/lang/Object;
.source "ProtoDataMap.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;
    .locals 3

    .line 80
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;->deserializeMap(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 83
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

    .line 16
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    move-result-object p1

    return-object p1
.end method

.method public deserializeMap(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;
    .locals 4

    .line 56
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDataMapList()Ljava/util/List;

    move-result-object p1

    .line 57
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;-><init>()V

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    .line 59
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasBytesValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putValue(Ljava/lang/String;[B)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putStringValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasSint32Value()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getSint32Value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasBoolValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 68
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getBoolValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->putBooleanValue(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 70
    :cond_3
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown DataValue Type for key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)[B
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;->serializeMap(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 16
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoDataMap;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)[B

    move-result-object p1

    return-object p1
.end method

.method public serializeMap(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
    .locals 4

    .line 25
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMap;->getMap()Ljava/util/Map;

    move-result-object p1

    .line 26
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object v0

    .line 28
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object v2

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->setKey(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;

    .line 34
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getBytesValue()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 35
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getBytesValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->setBytesValue(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    .line 36
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->addDataMap(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getStringValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 38
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->setStringValue(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    .line 39
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->addDataMap(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getIntegerValue()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getIntegerValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->setSint32Value(I)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    .line 42
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->addDataMap(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 44
    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DataMapValue;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->setBoolValue(Z)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    .line 45
    invoke-virtual {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->addDataMap(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    goto :goto_0

    .line 47
    :cond_3
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;

    const-string v0, "DataMapValue doesn\'t contain any value"

    invoke-direct {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/exceptions/DataSerializationError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_4
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object p1

    return-object p1
.end method
