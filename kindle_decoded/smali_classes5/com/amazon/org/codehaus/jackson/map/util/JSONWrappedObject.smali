.class public Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;
.super Ljava/lang/Object;
.source "JSONWrappedObject.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/JsonSerializableWithType;


# instance fields
.field protected final _prefix:Ljava/lang/String;

.field protected final _serializationType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected final _suffix:Ljava/lang/String;

.field protected final _value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    .line 59
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_serializationType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_serializationType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-void
.end method


# virtual methods
.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializationType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_serializationType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    return-object v0
.end method

.method public serialize(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_serializationType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {p2, v1, v3, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;ZLcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 101
    invoke-virtual {p2, v0, v3, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_value:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    .line 103
    :goto_0
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->_suffix:Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public serializeWithType(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/util/JSONWrappedObject;->serialize(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
