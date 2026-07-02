.class final Lcom/amazon/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$FloatDeser;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;
.source "PrimitiveArrayDeserializers.java"


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FloatDeser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base<",
        "[F>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 497
    const-class v0, [F

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private final handleNonArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)[F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 526
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 532
    :cond_0
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 535
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->_parseFloatPrimitive(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)F

    move-result p1

    aput p1, v0, v1

    return-object v0

    .line 533
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 493
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$FloatDeser;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)[F

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)[F
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 503
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->isExpectedStartArrayToken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$FloatDeser;->handleNonArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)[F

    move-result-object p1

    return-object p1

    .line 506
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getArrayBuilders()Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->getFloatBuilder()Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->resetAndStart()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 510
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_ARRAY:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_2

    .line 512
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->_parseFloatPrimitive(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)F

    move-result v4

    .line 513
    array-length v5, v1

    if-lt v3, v5, :cond_1

    .line 514
    invoke-virtual {v0, v1, v3}, Lcom/amazon/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v3, 0x0

    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 517
    aput v4, v1, v3

    move v3, v5

    goto :goto_0

    .line 519
    :cond_2
    invoke-virtual {v0, v1, v3}, Lcom/amazon/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;->completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    return-object p1
.end method
