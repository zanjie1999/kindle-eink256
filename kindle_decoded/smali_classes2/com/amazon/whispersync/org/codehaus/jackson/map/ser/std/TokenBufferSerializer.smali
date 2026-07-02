.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/TokenBufferSerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "TokenBufferSerializer.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0

    const-string p1, "any"

    const/4 p2, 0x1

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 32
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;->serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 22
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/TokenBufferSerializer;->serialize(Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public final serializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 52
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/TokenBufferSerializer;->serialize(Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    .line 54
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

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

    .line 22
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/TokenBufferSerializer;->serializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/util/TokenBuffer;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method
