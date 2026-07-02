.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializableSerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/SerializerBase;
.source "SerializableSerializer.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/SerializerBase<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializable;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializableSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializableSerializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializableSerializer;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializableSerializer;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializableSerializer;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializable;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->createObjectNode()Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 68
    invoke-static {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->type(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    .line 69
    const-class v1, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSerializableSchema;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    const-class v1, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSerializableSchema;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSerializableSchema;

    .line 71
    invoke-interface {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaType()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-interface {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    move-result-object v2

    const-string v3, "##irrelevant"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-interface {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaObjectPropertiesDefinition()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 75
    :goto_0
    invoke-interface {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    invoke-interface {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/schema/JsonSerializableSchema;->schemaItemDefinition()Ljava/lang/String;

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

    .line 80
    invoke-virtual {p1, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    :try_start_0
    const-string v1, "properties"

    .line 83
    new-instance v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;-><init>()V

    const-class v3, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {v2, v0, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 85
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    :try_start_1
    const-string v0, "items"

    .line 90
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;-><init>()V

    const-class v2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {v1, p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    invoke-virtual {p1, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 92
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    :goto_3
    return-object p1
.end method

.method public serialize(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializable;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 40
    invoke-interface {p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializable;->serialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

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

    .line 27
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializableSerializer;->serialize(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializable;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public final serializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializable;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 52
    instance-of v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializableWithType;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializableWithType;

    invoke-interface {p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializableWithType;->serializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializableSerializer;->serialize(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializable;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

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

    .line 27
    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializableSerializer;->serializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializable;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method
