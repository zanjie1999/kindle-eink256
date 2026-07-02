.class public Lcom/fasterxml/jackson/databind/node/BinaryNode;
.super Lcom/fasterxml/jackson/databind/node/ValueNode;
.source "BinaryNode.java"


# static fields
.field static final EMPTY_BINARY_NODE:Lcom/fasterxml/jackson/databind/node/BinaryNode;


# instance fields
.field protected final _data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lcom/fasterxml/jackson/databind/node/BinaryNode;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/node/BinaryNode;-><init>([B)V

    sput-object v0, Lcom/fasterxml/jackson/databind/node/BinaryNode;->EMPTY_BINARY_NODE:Lcom/fasterxml/jackson/databind/node/BinaryNode;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/BinaryNode;->_data:[B

    return-void
.end method

.method public static valueOf([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 42
    sget-object p0, Lcom/fasterxml/jackson/databind/node/BinaryNode;->EMPTY_BINARY_NODE:Lcom/fasterxml/jackson/databind/node/BinaryNode;

    return-object p0

    .line 44
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/node/BinaryNode;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/BinaryNode;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 3

    .line 87
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/BinaryNode;->_data:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 103
    :cond_1
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/node/BinaryNode;

    if-nez v1, :cond_2

    return v0

    .line 106
    :cond_2
    check-cast p1, Lcom/fasterxml/jackson/databind/node/BinaryNode;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/node/BinaryNode;->_data:[B

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/BinaryNode;->_data:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/BinaryNode;->_data:[B

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 94
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object p2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/BinaryNode;->_data:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 121
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/BinaryNode;->_data:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/core/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
