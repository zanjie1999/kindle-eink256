.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoConfigurationKeySet;
.super Ljava/lang/Object;
.source "ProtoConfigurationKeySet.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;
    .locals 3

    .line 28
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->getKeySetList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 30
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
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoConfigurationKeySet;->deserialize([B)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;)[B
    .locals 2

    .line 16
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;->getKeySet()Ljava/util/Collection;

    move-result-object p1

    .line 17
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object v0

    .line 18
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->addKeySet(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/configuration/ProtoConfigurationKeySet;->serialize(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/ConfigurationKeySet;)[B

    move-result-object p1

    return-object p1
.end method
