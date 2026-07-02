.class public Lcom/amazon/org/codehaus/jackson/map/ser/impl/UnknownSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "UnknownSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected failForEmpty(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No serializer found for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS) )"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSchema(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->FAIL_ON_EMPTY_BEANS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/UnknownSerializer;->failForEmpty(Ljava/lang/Object;)V

    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 29
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeEndObject()V

    return-void
.end method

.method public final serializeWithType(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->FAIL_ON_EMPTY_BEANS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p3, v0}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/UnknownSerializer;->failForEmpty(Ljava/lang/Object;)V

    .line 41
    :cond_0
    invoke-virtual {p4, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    .line 42
    invoke-virtual {p4, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
