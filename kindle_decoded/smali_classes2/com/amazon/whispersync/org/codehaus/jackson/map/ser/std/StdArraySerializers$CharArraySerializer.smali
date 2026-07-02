.class public final Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "StdArraySerializers.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "[C>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 297
    const-class v0, [C

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final _writeArrayContents(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;[C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 333
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, 0x1

    .line 334
    invoke-virtual {p1, p2, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString([CII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 2

    const-string p1, "array"

    const/4 p2, 0x1

    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    const-string p2, "string"

    .line 342
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    const-string/jumbo v1, "type"

    .line 343
    invoke-virtual {v0, v1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "items"

    .line 344
    invoke-virtual {p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 293
    check-cast p1, [C

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;->serialize([CLcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize([CLcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 304
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 305
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 306
    invoke-direct {p0, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;->_writeArrayContents(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;[C)V

    .line 307
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeEndArray()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 309
    array-length v0, p1

    invoke-virtual {p2, p1, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString([CII)V

    :goto_0
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 293
    check-cast p1, [C

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;->serializeWithType([CLcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType([CLcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 320
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 321
    invoke-direct {p0, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;->_writeArrayContents(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;[C)V

    .line 322
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForArray(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    const/4 p3, 0x0

    .line 325
    array-length v0, p1

    invoke-virtual {p2, p1, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString([CII)V

    .line 326
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    :goto_0
    return-void
.end method
