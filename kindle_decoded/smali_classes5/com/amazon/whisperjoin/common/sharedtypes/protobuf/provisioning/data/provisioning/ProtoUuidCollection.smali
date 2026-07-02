.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoUuidCollection;
.super Ljava/lang/Object;
.source "ProtoUuidCollection.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createProtobufValidatableUuid(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;
    .locals 1

    .line 57
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;->getValue()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/UuidHelpers;->encodeIntoByteArray(Ljava/util/UUID;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid$Builder;->setValue(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid$Builder;

    .line 59
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;

    move-result-object p1

    return-object p1
.end method

.method private createValidatableUuid(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;)Ljava/util/UUID;
    .locals 0

    .line 64
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/UuidHelpers;->decodeIntoUuid([B)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;
    .locals 3

    .line 27
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoUuidCollection;->getUuidCollection(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 29
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

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoUuidCollection;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;

    move-result-object p1

    return-object p1
.end method

.method public getProtobufUuidCollection(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;
    .locals 3

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericHashSetCollection;->getSetCollection()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 36
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;

    invoke-direct {p0, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoUuidCollection;->createProtobufValidatableUuid(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/ValidatableUuid;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->addProtobufUuidCollection(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    move-result-object p1

    return-object p1
.end method

.method public getUuidCollection(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;
    .locals 2

    .line 46
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->getProtobufUuidCollectionList()Ljava/util/List;

    move-result-object p1

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;

    .line 50
    invoke-direct {p0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoUuidCollection;->createValidatableUuid(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;)Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;

    invoke-direct {p1, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;)[B
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoUuidCollection;->getProtobufUuidCollection(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 17
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/provisioning/ProtoUuidCollection;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/UuidCollection;)[B

    move-result-object p1

    return-object p1
.end method
