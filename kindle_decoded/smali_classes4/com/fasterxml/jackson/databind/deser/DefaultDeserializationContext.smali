.class public abstract Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.super Lcom/fasterxml/jackson/databind/DeserializationContext;
.source "DefaultDeserializationContext.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _objectIdResolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ">;"
        }
    .end annotation
.end field

.field protected transient _objectIds:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;",
            "Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/deser/DeserializerCache;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/deser/DeserializerCache;)V

    return-void
.end method


# virtual methods
.method public abstract createInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end method

.method protected createReadableObjectId(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .locals 1

    .line 140
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;-><init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)V

    return-object v0
.end method

.method public deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 214
    :cond_0
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v1, :cond_1

    .line 215
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_1

    .line 220
    :cond_1
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_8

    .line 223
    check-cast p2, Ljava/lang/Class;

    .line 225
    const-class v1, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    if-eq p2, v1, :cond_7

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 228
    :cond_2
    const-class v1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 231
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->deserializerInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    .line 234
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_1

    :cond_4
    move-object p2, v0

    .line 239
    :goto_1
    instance-of p1, p2, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    if-eqz p1, :cond_5

    .line 240
    move-object p1, p2

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    :cond_5
    return-object p2

    .line 229
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnnotationIntrospector returned Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected Class<JsonDeserializer>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-object v0

    .line 221
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnnotationIntrospector returned deserializer definition of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->key(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    if-nez p2, :cond_1

    .line 94
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    if-eqz p2, :cond_2

    return-object p2

    .line 105
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIdResolvers:Ljava/util/List;

    if-nez p2, :cond_3

    .line 106
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIdResolvers:Ljava/util/List;

    goto :goto_1

    .line 108
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    .line 109
    invoke-interface {v1, p3}, Lcom/fasterxml/jackson/annotation/ObjectIdResolver;->canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 117
    invoke-interface {p3, p0}, Lcom/fasterxml/jackson/annotation/ObjectIdResolver;->newForDeserialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    move-result-object v0

    .line 118
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIdResolvers:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_6
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->createReadableObjectId(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object p2

    .line 122
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->setResolver(Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)V

    .line 123
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 255
    :cond_0
    instance-of v1, p2, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    if-eqz v1, :cond_1

    .line 256
    check-cast p2, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    goto :goto_1

    .line 258
    :cond_1
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_8

    .line 263
    check-cast p2, Ljava/lang/Class;

    .line 265
    const-class v1, Lcom/fasterxml/jackson/databind/KeyDeserializer$None;

    if-eq p2, v1, :cond_7

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 268
    :cond_2
    const-class v1, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 272
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    .line 275
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/DeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p1

    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    goto :goto_1

    :cond_4
    move-object p2, v0

    .line 280
    :goto_1
    instance-of p1, p2, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    if-eqz p1, :cond_5

    .line 281
    move-object p1, p2

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    :cond_5
    return-object p2

    .line 269
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnnotationIntrospector returned Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected Class<KeyDeserializer>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-object v0

    .line 259
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnnotationIntrospector returned key deserializer definition of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
