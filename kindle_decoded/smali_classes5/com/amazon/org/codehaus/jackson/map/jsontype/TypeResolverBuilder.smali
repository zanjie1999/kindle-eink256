.class public interface abstract Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
.super Ljava/lang/Object;
.source "TypeResolverBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract buildTypeDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;"
        }
    .end annotation
.end method

.method public abstract buildTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;"
        }
    .end annotation
.end method

.method public abstract defaultImpl(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation
.end method

.method public abstract getDefaultImpl()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract inclusion(Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract init(Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$Id;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$Id;",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract typeProperty(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
