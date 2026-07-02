.class public abstract Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;
.super Ljava/lang/Object;
.source "DeserializerProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cachedDeserializersCount()I
.end method

.method public abstract findExpectedRootName(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/io/SerializedString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findKeyDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findTypedValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract flushCachedDeserializers()V
.end method

.method public abstract hasValueDeserializerFor(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Z
.end method

.method public abstract mapAbstractType(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract withAbstractTypeResolver(Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withAdditionalDeserializers(Lcom/amazon/org/codehaus/jackson/map/Deserializers;)Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withAdditionalKeyDeserializers(Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;)Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withDeserializerModifier(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withFactory(Lcom/amazon/org/codehaus/jackson/map/DeserializerFactory;)Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withValueInstantiators(Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;
.end method
