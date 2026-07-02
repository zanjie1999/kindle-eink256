.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/HandlerInstantiator;
.super Ljava/lang/Object;
.source "HandlerInstantiator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deserializerInstance(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract keyDeserializerInstance(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;"
        }
    .end annotation
.end method

.method public abstract serializerInstance(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract typeIdResolverInstance(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeIdResolver;"
        }
    .end annotation
.end method

.method public abstract typeResolverBuilderInstance(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation
.end method

.method public valueInstantiatorInstance(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
