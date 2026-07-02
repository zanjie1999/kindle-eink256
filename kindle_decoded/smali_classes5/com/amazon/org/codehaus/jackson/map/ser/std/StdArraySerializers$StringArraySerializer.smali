.class public final Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;
.source "StdArraySerializers.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/ResolvableSerializer;


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase<",
        "[",
        "Ljava/lang/String;",
        ">;",
        "Lcom/amazon/org/codehaus/jackson/map/ResolvableSerializer;"
    }
.end annotation


# instance fields
.field protected _elementSerializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V
    .locals 2

    .line 97
    const-class v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V

    return-void
.end method

.method private serializeContentsSlow([Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/JsonGenerator;",
            "Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 144
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 145
    aget-object v2, p1, v1

    if-nez v2, :cond_0

    .line 147
    invoke-virtual {p3, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 149
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p4, v2, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    const-string/jumbo p2, "string"

    .line 173
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

    move-result-object p2

    const-string v0, "items"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonNode;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    return-object p1
.end method

.method public resolve(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 162
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$ArraySerializerBase;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->_elementSerializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    :cond_0
    return-void
.end method

.method public bridge synthetic serializeContents(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 83
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->serializeContents([Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serializeContents([Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 113
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->_elementSerializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v1, :cond_1

    .line 118
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;->serializeContentsSlow([Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-void

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_3

    .line 130
    aget-object v1, p1, p3

    if-nez v1, :cond_2

    .line 132
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeNull()V

    goto :goto_1

    .line 135
    :cond_2
    aget-object v1, p1, p3

    invoke-virtual {p2, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
