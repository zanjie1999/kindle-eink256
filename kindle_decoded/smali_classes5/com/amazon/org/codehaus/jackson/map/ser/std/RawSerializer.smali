.class public Lcom/amazon/org/codehaus/jackson/map/ser/std/RawSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "RawSerializer.java"


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 0

    const-string/jumbo p1, "string"

    const/4 p2, 0x1

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeRawValue(Ljava/lang/String;)V

    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 41
    invoke-virtual {p4, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/RawSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    .line 43
    invoke-virtual {p4, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
