.class public Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/ProtoInteger;
.super Ljava/lang/Object;
.source "ProtoInteger.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/TypeSerializer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize([B)Ljava/lang/Integer;
    .locals 3

    .line 23
    :try_start_0
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->getValue()I

    move-result p1

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 25
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

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/ProtoInteger;->deserialize([B)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Integer;)[B
    .locals 1

    .line 12
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->setValue(I)Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;

    .line 14
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufIntegerClass$ProtobufInteger;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;)[B
    .locals 0

    .line 8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/protobuf/provisioning/data/ProtoInteger;->serialize(Ljava/lang/Integer;)[B

    move-result-object p1

    return-object p1
.end method
