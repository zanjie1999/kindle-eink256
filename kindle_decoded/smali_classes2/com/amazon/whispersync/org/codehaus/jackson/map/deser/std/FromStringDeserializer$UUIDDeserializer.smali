.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$UUIDDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UUIDDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$UUIDDeserializer;->_deserialize(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/UUID;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 110
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic _deserializeEmbedded(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$UUIDDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method protected _deserializeEmbedded(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/UUID;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 117
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 118
    check-cast p1, [B

    .line 119
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can only construct UUIDs from 16 byte arrays; got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    .line 123
    :cond_0
    new-instance p2, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 124
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 125
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    .line 126
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v0, v1, p1, p2}, Ljava/util/UUID;-><init>(JJ)V

    return-object v2

    .line 128
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method
