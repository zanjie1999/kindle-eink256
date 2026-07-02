.class public Lcom/amazon/whispersync/communication/serialize/ByteBufferJsonDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
.source "ByteBufferJsonDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/communication/serialize/ByteBufferJsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/nio/ByteBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v1, v0, :cond_0

    .line 42
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->getBase64Variant()Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getBinaryValue(Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;)[B

    move-result-object p1

    .line 43
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentLocation()Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;)V

    throw p2
.end method
