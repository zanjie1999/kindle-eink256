.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;
.super Ljava/lang/Object;
.source "DeserializationContext.java"


# instance fields
.field protected final _config:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

.field protected final _featureFlags:I


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    .line 35
    iget p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig$Impl;->_featureFlags:I

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->_featureFlags:I

    return-void
.end method


# virtual methods
.method public abstract constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;
.end method

.method public constructType(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public abstract findInjectableValue(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getArrayBuilders()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ArrayBuilders;
.end method

.method public getBase64Variant()Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getBase64Variant()Lcom/amazon/whispersync/org/codehaus/jackson/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    return-object v0
.end method

.method public getDeserializerProvider()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNodeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getNodeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/node/JsonNodeFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParser()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;
.end method

.method public getTypeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract handleUnknownProperty(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 1

    .line 69
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->_featureFlags:I

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->getMask()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract leaseObjectBuffer()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer;
.end method

.method public abstract mappingException(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract mappingException(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public mappingException(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
    .locals 1

    .line 203
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->getParser()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public abstract parseDate(Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract returnObjectBuffer(Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ObjectBuffer;)V
.end method

.method public abstract unknownFieldException(Ljava/lang/Object;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
.end method

.method public abstract unknownTypeException(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
.end method

.method public abstract weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract weirdNumberException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation
.end method

.method public abstract wrongTokenException(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
.end method
