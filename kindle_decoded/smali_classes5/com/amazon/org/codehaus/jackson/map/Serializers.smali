.class public interface abstract Lcom/amazon/org/codehaus/jackson/map/Serializers;
.super Ljava/lang/Object;
.source "Serializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/Serializers$None;,
        Lcom/amazon/org/codehaus/jackson/map/Serializers$Base;
    }
.end annotation


# virtual methods
.method public abstract findArraySerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract findCollectionLikeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract findCollectionSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract findMapLikeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract findMapSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/MapType;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract findSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end method
