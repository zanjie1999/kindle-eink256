.class public final Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$DoubleArraySerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;
.source "StdArraySerializers.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase<",
        "[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 447
    const-class v0, [D

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V

    return-void
.end method


# virtual methods
.method public _withValueTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    const-string p1, "array"

    const/4 p2, 0x1

    .line 471
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    const-string p2, "number"

    .line 472
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p2

    const-string v0, "items"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object p1
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 443
    check-cast p1, [D

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StdArraySerializers$DoubleArraySerializer;->serializeContents([DLcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents([DLcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 463
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 464
    aget-wide v1, p1, v0

    invoke-virtual {p2, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeNumber(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
