.class public Lcom/amazon/org/codehaus/jackson/map/Deserializers$Base;
.super Ljava/lang/Object;
.source "Deserializers.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/Deserializers;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/Deserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findArrayDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findBeanDeserializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findCollectionDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findCollectionLikeDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findEnumDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findMapDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/MapType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findMapLikeDeserializer(Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findTreeNodeDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/JsonNode;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
