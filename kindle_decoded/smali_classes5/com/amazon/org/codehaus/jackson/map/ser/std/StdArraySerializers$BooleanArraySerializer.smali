.class public final Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$BooleanArraySerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;
.source "StdArraySerializers.java"


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BooleanArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase<",
        "[Z>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 182
    const-class v0, [Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V

    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public getSchema(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 1

    const-string p1, "array"

    const/4 p2, 0x1

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    const-string p2, "boolean"

    .line 207
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p2

    const-string v0, "items"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonNode;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    return-object p1
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 178
    check-cast p1, [Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$BooleanArraySerializer;->serializeContents([ZLcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents([ZLcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 198
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 199
    aget-boolean v1, p1, v0

    invoke-virtual {p2, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
