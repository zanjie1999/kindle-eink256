.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
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

.method public abstract findExpectedRootName(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findTypedValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract findValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract flushCachedDeserializers()V
.end method

.method public abstract hasValueDeserializerFor(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Z
.end method

.method public abstract mapAbstractType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract withAbstractTypeResolver(Lcom/amazon/whispersync/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withAdditionalDeserializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withAdditionalKeyDeserializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withDeserializerModifier(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
.end method

.method public abstract withValueInstantiators(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;
.end method
