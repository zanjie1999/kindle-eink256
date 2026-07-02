.class public final Lcom/amazon/org/codehaus/jackson/node/BinaryNode;
.super Lcom/amazon/org/codehaus/jackson/node/ValueNode;
.source "BinaryNode.java"


# static fields
.field static final EMPTY_BINARY_NODE:Lcom/amazon/org/codehaus/jackson/node/BinaryNode;


# instance fields
.field final _data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;-><init>([B)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->EMPTY_BINARY_NODE:Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/node/ValueNode;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->_data:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/node/ValueNode;-><init>()V

    if-nez p2, :cond_0

    .line 33
    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 34
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->_data:[B

    goto :goto_0

    .line 36
    :cond_0
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->_data:[B

    const/4 v1, 0x0

    .line 37
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static valueOf([B)Lcom/amazon/org/codehaus/jackson/node/BinaryNode;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 47
    sget-object p0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->EMPTY_BINARY_NODE:Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    return-object p0

    .line 49
    :cond_1
    new-instance v0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;-><init>([B)V

    return-object v0
.end method

.method public static valueOf([BII)Lcom/amazon/org/codehaus/jackson/node/BinaryNode;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 58
    sget-object p0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->EMPTY_BINARY_NODE:Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    return-object p0

    .line 60
    :cond_1
    new-instance v0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public asText()Ljava/lang/String;
    .locals 3

    .line 95
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/amazon/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->_data:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asToken()Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 75
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 116
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    if-eq v1, v2, :cond_2

    return v0

    .line 119
    :cond_2
    check-cast p1, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;

    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->_data:[B

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->_data:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getBinaryValue()[B
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->_data:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->_data:[B

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public isBinary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 108
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->_data:[B

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeBinary([B)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 134
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/amazon/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/node/BinaryNode;->_data:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
