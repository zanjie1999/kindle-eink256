.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;
.super Ljava/lang/Object;
.source "DeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;
    }
.end annotation


# static fields
.field protected static final NO_DESERIALIZERS:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;

    .line 42
    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->NO_DESERIALIZERS:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createArrayDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createBeanDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
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

.method public abstract createCollectionDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createCollectionLikeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createEnumDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public createKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract createMapDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createMapLikeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createTreeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public findTypeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract findValueInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;
.end method

.method public abstract mapAbstractType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public final withAbstractTypeResolver(Lcom/amazon/whispersync/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->withAbstractTypeResolver(Lcom/amazon/whispersync/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object p1

    return-object p1
.end method

.method public final withAdditionalDeserializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->withAdditionalDeserializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object p1

    return-object p1
.end method

.method public final withAdditionalKeyDeserializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->withAdditionalKeyDeserializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object p1

    return-object p1
.end method

.method public abstract withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;
.end method

.method public final withDeserializerModifier(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->withDeserializerModifier(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object p1

    return-object p1
.end method

.method public final withValueInstantiators(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->withValueInstantiators(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;

    move-result-object p1

    return-object p1
.end method
