.class public Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "SerializableWithTypeSerializer.java"


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "Lcom/amazon/org/codehaus/jackson/map/JsonSerializableWithType;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/JsonSerializableWithType;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->createObjectNode()Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 59
    invoke-static {p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 60
    const-class v1, Lcom/amazon/org/codehaus/jackson/schema/JsonSerializableSchema;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const-class v1, Lcom/amazon/org/codehaus/jackson/schema/JsonSerializableSchema;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/amazon/org/codehaus/jackson/schema/JsonSerializableSchema;

    .line 62
    invoke-interface {p2}, Lcom/amazon/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaType()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-interface {p2}, Lcom/amazon/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "##irrelevant"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-interface {p2}, Lcom/amazon/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 66
    :goto_0
    invoke-interface {p2}, Lcom/amazon/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 67
    invoke-interface {p2}, Lcom/amazon/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object p2, v0

    move-object v0, v2

    goto :goto_1

    :cond_2
    const-string v1, "any"

    move-object p2, v0

    :goto_1
    const-string/jumbo v2, "type"

    .line 71
    invoke-virtual {p1, v2, v1}, Lcom/amazon/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    :try_start_0
    const-string/jumbo v1, "properties"

    .line 74
    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;-><init>()V

    const-class v3, Lcom/amazon/org/codehaus/jackson/JsonNode;

    invoke-virtual {v2, v0, v3}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/JsonNode;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonNode;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 76
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    :try_start_1
    const-string v0, "items"

    .line 81
    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;-><init>()V

    const-class v2, Lcom/amazon/org/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p2, v2}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/org/codehaus/jackson/JsonNode;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonNode;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 83
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_3
    return-object p1
.end method

.method public serialize(Lcom/amazon/org/codehaus/jackson/map/JsonSerializableWithType;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 38
    invoke-interface {p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializable;->serialize(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializableWithType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;->serialize(Lcom/amazon/org/codehaus/jackson/map/JsonSerializableWithType;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public final serializeWithType(Lcom/amazon/org/codehaus/jackson/map/JsonSerializableWithType;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 46
    invoke-interface {p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializableWithType;->serializeWithType(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializableWithType;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;->serializeWithType(Lcom/amazon/org/codehaus/jackson/map/JsonSerializableWithType;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method
