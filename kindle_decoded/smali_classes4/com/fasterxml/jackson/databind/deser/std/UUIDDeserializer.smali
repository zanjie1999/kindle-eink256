.class public Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.source "UUIDDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field static final HEX_DIGITS:[I

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x7f

    new-array v0, v0, [I

    .line 17
    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    const/4 v1, -0x1

    .line 19
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 20
    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    add-int/lit8 v3, v1, 0x30

    aput v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 22
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0x41

    .line 23
    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method static _badChar(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;C)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 114
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    aput-object p3, p1, v0

    const/4 p3, 0x2

    aput-object p0, p1, p3

    const-string p3, "Non-hex character \'%c\' (value 0x%s), not valid for UUID String: input String \'%s\'"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p2

    const-class p3, Ljava/util/UUID;

    invoke-static {p2, p1, p0, p3}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    move-result-object p0

    throw p0
.end method

.method private _badFormat(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 79
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "UUID has to be represented by standard 36-char representation: input String \'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    move-result-object p1

    throw p1
.end method

.method private _fromBytes([BLcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 121
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 126
    new-instance p2, Ljava/util/UUID;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_long([BI)J

    move-result-wide v0

    const/16 v2, 0x8

    invoke-static {p1, v2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_long([BI)J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p2

    .line 122
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can only construct UUIDs from byte[16]; got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p2, v0, p1, v1}, Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/exc/InvalidFormatException;

    move-result-object p1

    throw p1
.end method

.method private static _int([BI)I
    .locals 2

    .line 138
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static _long([BI)J
    .locals 3

    .line 130
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_int([BI)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    .line 131
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_int([BI)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr p0, v2

    ushr-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, p1, 0x1

    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_0

    if-gt v2, v3, :cond_0

    .line 102
    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    aget v5, v4, v0

    shl-int/lit8 v5, v5, 0x4

    aget v4, v4, v2

    or-int/2addr v4, v5

    if-ltz v4, :cond_0

    return v4

    :cond_0
    const/4 v4, 0x0

    if-gt v0, v3, :cond_2

    .line 107
    sget-object v3, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->HEX_DIGITS:[I

    aget v3, v3, v0

    if-gez v3, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-static {p0, v1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badChar(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;C)I

    throw v4

    .line 108
    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badChar(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;C)I

    throw v4
.end method

.method static intFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 86
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    invoke-static {p0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x6

    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static shortFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 93
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->byteFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x18

    const/16 v3, 0x24

    if-eq v0, v3, :cond_1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 39
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/Base64Variant;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_fromBytes([BLcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badFormat(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    throw v1

    :cond_1
    const/16 v0, 0x8

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    .line 50
    invoke-static {p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->intFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v0

    int-to-long v0, v0

    const/16 v3, 0x20

    shl-long/2addr v0, v3

    const/16 v4, 0x9

    .line 52
    invoke-static {p1, v4, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    const/16 v7, 0xe

    .line 53
    invoke-static {p1, v7, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v7

    int-to-long v7, v7

    or-long/2addr v4, v7

    add-long/2addr v0, v4

    const/16 v4, 0x13

    .line 56
    invoke-static {p1, v4, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v4

    shl-int/2addr v4, v6

    invoke-static {p1, v2, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->shortFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result v2

    or-int/2addr v2, v4

    int-to-long v4, v2

    shl-long/2addr v4, v3

    const/16 v2, 0x1c

    .line 59
    invoke-static {p1, v2, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->intFromChars(Ljava/lang/String;ILcom/fasterxml/jackson/databind/DeserializationContext;)I

    move-result p1

    int-to-long p1, p1

    shl-long/2addr p1, v3

    ushr-long/2addr p1, v3

    or-long/2addr p1, v4

    .line 63
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v0, v1, p1, p2}, Ljava/util/UUID;-><init>(JJ)V

    return-object v2

    .line 48
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_badFormat(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    throw v1
.end method

.method protected bridge synthetic _deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method protected _deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 70
    check-cast p1, [B

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/UUIDDeserializer;->_fromBytes([BLcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/UUID;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
