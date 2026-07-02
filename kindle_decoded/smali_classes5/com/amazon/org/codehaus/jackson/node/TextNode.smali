.class public final Lcom/amazon/org/codehaus/jackson/node/TextNode;
.super Lcom/amazon/org/codehaus/jackson/node/ValueNode;
.source "TextNode.java"


# static fields
.field static final EMPTY_STRING_NODE:Lcom/amazon/org/codehaus/jackson/node/TextNode;

.field static final INT_SPACE:I = 0x20


# instance fields
.field final _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/amazon/org/codehaus/jackson/node/TextNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/node/TextNode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->EMPTY_STRING_NODE:Lcom/amazon/org/codehaus/jackson/node/TextNode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/node/ValueNode;-><init>()V

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    return-void
.end method

.method protected static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x22

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {p0, p1}, Lcom/amazon/org/codehaus/jackson/util/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/TextNode;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    sget-object p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->EMPTY_STRING_NODE:Lcom/amazon/org/codehaus/jackson/node/TextNode;

    return-object p0

    .line 42
    :cond_1
    new-instance v0, Lcom/amazon/org/codehaus/jackson/node/TextNode;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/node/TextNode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected _reportBase64EOF()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .line 297
    new-instance v0, Lcom/amazon/org/codehaus/jackson/JsonParseException;

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonLocation;->NA:Lcom/amazon/org/codehaus/jackson/JsonLocation;

    const-string v2, "Unexpected end-of-String when base64 content"

    invoke-direct {v0, v2, v1}, Lcom/amazon/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;)V

    throw v0
.end method

.method protected _reportInvalidBase64(Lcom/amazon/org/codehaus/jackson/Base64Variant;CI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_reportInvalidBase64(Lcom/amazon/org/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    return-void
.end method

.method protected _reportInvalidBase64(Lcom/amazon/org/codehaus/jackson/Base64Variant;CILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/16 v0, 0x20

    if-gt p2, v0, :cond_0

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal white space character (code 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") as character #"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " of 4-char base64 unit: can only used between units"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 280
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected padding character (\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\') as character #"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 282
    :cond_1
    invoke-static {p2}, Ljava/lang/Character;->isDefined(C)Z

    move-result p1

    const-string p3, ") in base64 content"

    if-eqz p1, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 286
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal character \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' (code 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 284
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal character (code 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p4, :cond_4

    .line 289
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 291
    :cond_4
    new-instance p2, Lcom/amazon/org/codehaus/jackson/JsonParseException;

    sget-object p3, Lcom/amazon/org/codehaus/jackson/JsonLocation;->NA:Lcom/amazon/org/codehaus/jackson/JsonLocation;

    invoke-direct {p2, p1, p3}, Lcom/amazon/org/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;)V

    throw p2
.end method

.method public asBoolean(Z)Z
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public asDouble(D)D
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/io/NumberInput;->parseAsDouble(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public asInt(I)I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/io/NumberInput;->parseAsInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public asLong(J)J
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/io/NumberInput;->parseAsLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public asText()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public asToken()Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

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

    .line 229
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/org/codehaus/jackson/node/TextNode;

    if-eq v1, v2, :cond_2

    return v0

    .line 232
    :cond_2
    check-cast p1, Lcom/amazon/org/codehaus/jackson/node/TextNode;

    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBinaryValue()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/Base64Variants;->getDefaultVariant()Lcom/amazon/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->getBinaryValue(Lcom/amazon/org/codehaus/jackson/Base64Variant;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBinaryValue(Lcom/amazon/org/codehaus/jackson/Base64Variant;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-instance v0, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;-><init>(I)V

    .line 67
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_f

    :goto_1
    add-int/lit8 v5, v4, 0x1

    .line 76
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v5, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v6, 0x20

    if-le v4, v6, :cond_e

    .line 81
    invoke-virtual {p1, v4}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v6

    if-gez v6, :cond_1

    .line 83
    invoke-virtual {p0, p1, v4, v3}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_reportInvalidBase64(Lcom/amazon/org/codehaus/jackson/Base64Variant;CI)V

    :cond_1
    if-lt v5, v2, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_reportBase64EOF()V

    :cond_2
    add-int/lit8 v4, v5, 0x1

    .line 90
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 91
    invoke-virtual {p1, v5}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v7

    if-gez v7, :cond_3

    const/4 v8, 0x1

    .line 93
    invoke-virtual {p0, p1, v5, v8}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_reportInvalidBase64(Lcom/amazon/org/codehaus/jackson/Base64Variant;CI)V

    :cond_3
    shl-int/lit8 v5, v6, 0x6

    or-int/2addr v5, v7

    if-lt v4, v2, :cond_5

    .line 99
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v6

    if-nez v6, :cond_4

    shr-int/lit8 p1, v5, 0x4

    .line 102
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_3

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_reportBase64EOF()V

    :cond_5
    add-int/lit8 v6, v4, 0x1

    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 108
    invoke-virtual {p1, v4}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, -0x2

    const/4 v10, 0x2

    if-gez v7, :cond_9

    if-eq v7, v9, :cond_6

    .line 113
    invoke-virtual {p0, p1, v4, v10}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_reportInvalidBase64(Lcom/amazon/org/codehaus/jackson/Base64Variant;CI)V

    :cond_6
    if-lt v6, v2, :cond_7

    .line 117
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_reportBase64EOF()V

    :cond_7
    add-int/lit8 v4, v6, 0x1

    .line 119
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 120
    invoke-virtual {p1, v6}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->usesPaddingChar(C)Z

    move-result v7

    if-nez v7, :cond_8

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expected padding character \'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->getPaddingChar()C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v6, v8, v7}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_reportInvalidBase64(Lcom/amazon/org/codehaus/jackson/Base64Variant;CILjava/lang/String;)V

    :cond_8
    shr-int/lit8 v5, v5, 0x4

    .line 125
    invoke-virtual {v0, v5}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->append(I)V

    goto/16 :goto_0

    :cond_9
    shl-int/lit8 v4, v5, 0x6

    or-int/2addr v4, v7

    if-lt v6, v2, :cond_b

    .line 133
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->usesPadding()Z

    move-result v5

    if-nez v5, :cond_a

    shr-int/lit8 p1, v4, 0x2

    .line 135
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto :goto_3

    .line 138
    :cond_a
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_reportBase64EOF()V

    :cond_b
    add-int/lit8 v5, v6, 0x1

    .line 140
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 141
    invoke-virtual {p1, v6}, Lcom/amazon/org/codehaus/jackson/Base64Variant;->decodeBase64Char(C)I

    move-result v7

    if-gez v7, :cond_d

    if-eq v7, v9, :cond_c

    .line 144
    invoke-virtual {p0, p1, v6, v8}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_reportInvalidBase64(Lcom/amazon/org/codehaus/jackson/Base64Variant;CI)V

    :cond_c
    shr-int/lit8 v4, v4, 0x2

    .line 147
    invoke-virtual {v0, v4}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->appendTwoBytes(I)V

    goto :goto_2

    :cond_d
    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v7

    .line 151
    invoke-virtual {v0, v4}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->appendThreeBytes(I)V

    :goto_2
    move v4, v5

    goto/16 :goto_0

    :cond_e
    move v4, v5

    goto/16 :goto_1

    .line 154
    :cond_f
    :goto_3
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public getTextValue()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isTextual()Z
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

    .line 211
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNull()V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    shr-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 247
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/node/TextNode;->_value:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/org/codehaus/jackson/node/TextNode;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
