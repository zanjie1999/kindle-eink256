.class public Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;
.source "BeanDeserializer.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JsonCachable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/amazon/org/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation


# instance fields
.field protected _anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

.field protected final _backRefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected final _beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

.field protected final _beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected _delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _externalTypeIdHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

.field protected final _forClass:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

.field protected final _ignorableProps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _ignoreAllUnknown:Z

.field protected final _injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

.field protected _nonStandardCreation:Z

.field protected final _property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

.field protected final _propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

.field protected _subDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _unwrappedPropertyHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

.field protected final _valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/BeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;",
            ">;)V"
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/BeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/BeanDescription;->getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;)V
    .locals 1

    .line 255
    iget-boolean v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    invoke-direct {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;Z)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;Z)V
    .locals 1

    .line 263
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    .line 265
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 266
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 267
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    .line 269
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 270
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 271
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 273
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    .line 274
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    .line 275
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    .line 276
    iput-boolean p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    .line 277
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 278
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    .line 280
    iget-boolean p2, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    iput-boolean p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    .line 281
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;",
            ">;)V"
        }
    .end annotation

    .line 221
    invoke-direct {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    .line 222
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 223
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 224
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    .line 226
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 227
    invoke-virtual {p4}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromObjectWith()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 228
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    invoke-direct {p1, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    goto :goto_0

    .line 230
    :cond_0
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 233
    :goto_0
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    .line 234
    iput-object p6, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    .line 235
    iput-object p7, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    .line 236
    iput-boolean p8, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    .line 237
    iput-object p9, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz p10, :cond_2

    .line 238
    invoke-interface {p10}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p10}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    invoke-interface {p10, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    :cond_2
    :goto_1
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    .line 241
    invoke-virtual {p4}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-nez p1, :cond_4

    invoke-virtual {p4}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/deser/impl/CreatorCollector;Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/impl/CreatorCollector;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    move-object/from16 v1, p4

    .line 189
    invoke-virtual {v1, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/CreatorCollector;->constructValueInstantiator(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;)Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v5

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V

    return-void
.end method

.method private final _handleUnknown(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    goto :goto_0

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v0, :cond_1

    .line 719
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 721
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected final _deserializeUsingPropertyBased(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 891
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 892
    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    move-result-object v1

    .line 897
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 898
    :goto_0
    sget-object v5, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v2, v5, :cond_8

    .line 899
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 900
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 902
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 905
    invoke-virtual {v5, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    .line 906
    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v5

    invoke-virtual {v1, v5, v6}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 907
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 910
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 917
    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->handlePolymorphic(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v4, :cond_1

    .line 920
    invoke-virtual {p0, p2, v0, v4}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperties(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 923
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v5

    .line 912
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v6}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v2, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 928
    :cond_2
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v5, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 930
    invoke-virtual {v5, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferProperty(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_1

    .line 936
    :cond_3
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 937
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 941
    :cond_4
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v5, :cond_5

    .line 942
    invoke-virtual {v5, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v5, v2, v6}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    .line 947
    new-instance v4, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V

    .line 949
    :cond_6
    invoke-virtual {v4, v2}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v4, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    .line 898
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v2

    goto/16 :goto_0

    .line 956
    :cond_8
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_a

    .line 963
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_9

    .line 964
    invoke-virtual {p0, v3, p2, p1, v4}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->handlePolymorphic(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 967
    :cond_9
    invoke-virtual {p0, p2, p1, v4}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperties(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object p1

    :cond_a
    return-object p1

    :catch_1
    move-exception p1

    .line 958
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    return-object v3
.end method

.method protected _findSubclassDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;",
            "Ljava/lang/Object;",
            "Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1400
    monitor-enter p0

    .line 1401
    :try_start_0
    iget-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    .line 1402
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_1

    return-object p3

    .line 1407
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getDeserializerProvider()Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1409
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 1413
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->getConfig()Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {v0, p1, p3, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 1416
    monitor-enter p0

    .line 1417
    :try_start_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    if-nez p1, :cond_2

    .line 1418
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    .line 1420
    :cond_2
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_subDeserializers:Ljava/util/HashMap;

    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1421
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-object p3

    :catchall_1
    move-exception p1

    .line 1402
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method protected _resolveInnerClassValuedProperty(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 9

    .line 538
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getValueDeserializer()Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 540
    instance-of v1, v0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz v1, :cond_2

    .line 541
    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;

    .line 542
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->getValueInstantiator()Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v0

    if-nez v0, :cond_2

    .line 544
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 545
    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 547
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 548
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 549
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 550
    array-length v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    aget-object v6, v6, v3

    if-ne v6, v1, :cond_1

    .line 551
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 552
    invoke-static {v5}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 554
    :cond_0
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;

    invoke-direct {p1, p2, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/reflect/Constructor;)V

    return-object p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method protected _resolveManagedReferenceProperty(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 8

    .line 464
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getManagedReferenceName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p2

    .line 468
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getValueDeserializer()Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    const/4 v0, 0x0

    .line 471
    instance-of v2, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;

    const-string v3, ")"

    const-string v4, "Can not handle managed/back reference \'"

    if-eqz v2, :cond_1

    .line 472
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;

    invoke-virtual {p1, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->findBackReference(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object p1

    const/4 v5, 0x0

    goto :goto_0

    .line 473
    :cond_1
    instance-of v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;

    if-eqz v0, :cond_5

    .line 474
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;->getContentDeserializer()Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    .line 475
    instance-of v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz v0, :cond_4

    .line 480
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;

    invoke-virtual {p1, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->findBackReference(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v5, 0x1

    :goto_0
    if-eqz p1, :cond_3

    .line 494
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 495
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 496
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 501
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotations()Lcom/amazon/org/codehaus/jackson/map/util/Annotations;

    move-result-object v4

    move-object v0, v6

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/amazon/org/codehaus/jackson/map/util/Annotations;Z)V

    return-object v6

    .line 497
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': back reference type ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") not compatible with managed type ("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 490
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': no back reference property found from type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 476
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': value deserializer is of type ContainerDeserializerBase, but content type is not handled by a BeanDeserializer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (instead it\'s of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 482
    :cond_5
    instance-of v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/AbstractDeserializer;

    if-eqz v0, :cond_6

    .line 483
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not handle managed/back reference for abstract types (property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 485
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': type for value deserializer is not BeanDeserializer or ContainerDeserializerBase, but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected _resolveUnwrappedProperty(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    .line 514
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getMember()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->shouldUnwrapProperty(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    .line 516
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getValueDeserializer()Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    .line 517
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->unwrappingDeserializer()Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 576
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 578
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 579
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 580
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 583
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 602
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 600
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 597
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 594
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromBoolean(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 591
    :pswitch_3
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 589
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromDouble(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 587
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromNumber(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 585
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromString(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p0, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithUnwrapped(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 623
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 625
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 626
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 628
    :cond_3
    :goto_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_7

    .line 629
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 632
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v1, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 636
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 638
    invoke-virtual {p0, v1, p3, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 645
    :cond_4
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 646
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 647
    :cond_5
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v1, :cond_6

    .line 648
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 652
    :cond_6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_7
    return-object p3
.end method

.method public deserializeFromArray(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 866
    :try_start_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 867
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {p0, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 872
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    .line 875
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public deserializeFromBoolean(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromBoolean()Z

    move-result v0

    if-nez v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 848
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p0, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    :cond_0
    return-object p1

    .line 854
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object p1

    sget-object p2, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_TRUE:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 855
    :goto_0
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromBoolean(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeFromDouble(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 815
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 830
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 831
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 833
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "no suitable creator method found to deserialize from JSON floating-point number"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_3

    .line 819
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromDouble()Z

    move-result v0

    if-nez v0, :cond_3

    .line 820
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 821
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v0, :cond_2

    .line 822
    invoke-virtual {p0, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    :cond_2
    return-object p1

    .line 827
    :cond_3
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromDouble(D)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeFromNumber(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 771
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer$1;->$SwitchMap$org$codehaus$jackson$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getNumberType()Lcom/amazon/org/codehaus/jackson/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 796
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 797
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 798
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {p0, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    :cond_0
    return-object p1

    .line 803
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->getBeanClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "no suitable creator method found to deserialize from JSON integer number"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 784
    :cond_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_4

    .line 785
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromInt()Z

    move-result v0

    if-nez v0, :cond_4

    .line 786
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 787
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v0, :cond_3

    .line 788
    invoke-virtual {p0, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    :cond_3
    return-object p1

    .line 793
    :cond_4
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromLong(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 773
    :cond_5
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_7

    .line 774
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromInt()Z

    move-result v0

    if-nez v0, :cond_7

    .line 775
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 776
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v0, :cond_6

    .line 777
    invoke-virtual {p0, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    :cond_6
    return-object p1

    .line 782
    :cond_7
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromInt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeFromObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 676
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    if-eqz v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithUnwrapped(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 683
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeFromObjectUsingNonDefault(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v0

    .line 687
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v1, :cond_3

    .line 688
    invoke-virtual {p0, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 690
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_5

    .line 691
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 694
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v2, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 697
    :try_start_0
    invoke-virtual {v2, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 699
    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 703
    :cond_4
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_handleUnknown(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method protected deserializeFromObjectUsingNonDefault(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 735
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 736
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_1

    .line 739
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_deserializeUsingPropertyBased(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 742
    :cond_1
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 743
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not instantiate abstract type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (need to add/enable type information?)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 746
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No suitable constructor found for type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": can not instantiate from JSON object (need to add/enable type information?)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public deserializeFromString(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromString()Z

    move-result v0

    if-nez v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 759
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v0, :cond_0

    .line 760
    invoke-virtual {p0, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    :cond_0
    return-object p1

    .line 765
    :cond_1
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected deserializeUsingPropertyBasedWithExternalTypeId(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1256
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->start()Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    move-result-object v0

    .line 1257
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 1258
    invoke-virtual {v1, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    move-result-object v2

    .line 1260
    new-instance v3, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V

    .line 1261
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 1263
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v4

    .line 1264
    :goto_0
    sget-object v5, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_7

    .line 1265
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 1266
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 1268
    invoke-virtual {v1, v4}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1271
    invoke-virtual {v5, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    .line 1272
    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v5

    invoke-virtual {v2, v5, v6}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1273
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v5

    .line 1276
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1282
    :goto_1
    sget-object v2, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v5, v2, :cond_0

    .line 1283
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 1284
    invoke-virtual {v3, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    .line 1285
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v5

    goto :goto_1

    .line 1287
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 1292
    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->complete(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "Can not create polymorphic instances with unwrapped values"

    .line 1290
    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception v5

    .line 1278
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v6}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v4, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 1297
    :cond_2
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v5, v4}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1299
    invoke-virtual {v5, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferProperty(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_2

    .line 1303
    :cond_3
    invoke-virtual {v0, p1, p2, v4, v6}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->handleToken(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 1309
    :cond_4
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1310
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 1314
    :cond_5
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v5, :cond_6

    .line 1315
    invoke-virtual {v5, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v4, v6}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1264
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v4

    goto/16 :goto_0

    .line 1322
    :cond_7
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1327
    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->complete(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 1324
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    return-object v6
.end method

.method protected deserializeUsingPropertyBasedWithUnwrapped(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1118
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    .line 1119
    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    move-result-object v1

    .line 1121
    new-instance v2, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V

    .line 1122
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 1124
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v3

    .line 1125
    :goto_0
    sget-object v4, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_6

    .line 1126
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 1127
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 1129
    invoke-virtual {v0, v3}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1132
    invoke-virtual {v4, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    .line 1133
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v4

    invoke-virtual {v1, v4, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1134
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v4

    .line 1137
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :goto_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v4, v1, :cond_0

    .line 1144
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 1145
    invoke-virtual {v2, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    .line 1146
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v4

    goto :goto_1

    .line 1148
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 1149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 1154
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "Can not create polymorphic instances with unwrapped values"

    .line 1152
    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception v4

    .line 1139
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v3, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_2

    .line 1159
    :cond_2
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v3}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1161
    invoke-virtual {v4, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferProperty(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_2

    .line 1167
    :cond_3
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1168
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    goto :goto_2

    .line 1171
    :cond_4
    invoke-virtual {v2, v3}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {v2, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    .line 1174
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v4, :cond_5

    .line 1175
    invoke-virtual {v4, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1125
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v3

    goto/16 :goto_0

    .line 1182
    :cond_6
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->build(Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1187
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 1184
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected deserializeWithExternalTypeId(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1200
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeUsingPropertyBasedWithExternalTypeId(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected deserializeWithExternalTypeId(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->start()Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    move-result-object v0

    .line 1211
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_5

    .line 1212
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 1213
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 1214
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v2, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1217
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/JsonToken;->isScalarValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1218
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->handleTypePropertyValue(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1221
    :cond_0
    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1223
    invoke-virtual {p0, v2, p3, v1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 1228
    :cond_1
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1229
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 1233
    :cond_2
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->handleToken(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 1237
    :cond_3
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v2, :cond_4

    .line 1239
    :try_start_1
    invoke-virtual {v2, p1, p2, p3, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1241
    invoke-virtual {p0, v2, p3, v1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 1246
    :cond_4
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1211
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 1250
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;->complete(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeWithType(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 664
    invoke-virtual {p3, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromObject(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected deserializeWithUnwrapped(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_1

    .line 1031
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserializeUsingPropertyBasedWithUnwrapped(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1034
    :cond_1
    new-instance v0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V

    .line 1035
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 1036
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->createUsingDefault()Ljava/lang/Object;

    move-result-object v1

    .line 1038
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    if-eqz v2, :cond_2

    .line 1039
    invoke-virtual {p0, p2, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->injectValues(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    .line 1042
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_6

    .line 1043
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 1044
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 1045
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v3, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1048
    :try_start_0
    invoke-virtual {v3, p1, p2, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1050
    invoke-virtual {p0, v3, v1, v2, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 1055
    :cond_3
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1056
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 1060
    :cond_4
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    .line 1063
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v3, :cond_5

    .line 1065
    :try_start_1
    invoke-virtual {v3, p1, p2, v1, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 1067
    invoke-virtual {p0, v3, v1, v2, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    .line 1042
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    goto :goto_0

    .line 1072
    :cond_6
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 1073
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    return-object v1
.end method

.method protected deserializeWithUnwrapped(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1080
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1081
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->START_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1082
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1084
    :cond_0
    new-instance v1, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V

    .line 1085
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeStartObject()V

    .line 1086
    :goto_0
    sget-object v2, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v2, :cond_4

    .line 1087
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 1088
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    .line 1089
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eqz v2, :cond_1

    .line 1092
    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1094
    invoke-virtual {p0, v2, p3, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    goto :goto_1

    .line 1098
    :cond_1
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1099
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 1103
    :cond_2
    invoke-virtual {v1, v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    .line 1106
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v2, :cond_3

    .line 1107
    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 1110
    :cond_4
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 1111
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    return-object p3
.end method

.method public findBackReference(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_backRefs:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 345
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object p1
.end method

.method public final getBeanClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyCount()I
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->size()I

    move-result v0

    return v0
.end method

.method public getValueInstantiator()Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    return-object v0
.end method

.method public getValueType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method protected handlePolymorphic(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 988
    invoke-virtual {p0, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_findSubclassDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_0

    .line 992
    invoke-virtual {p4}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 993
    invoke-virtual {p4}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->asParser()Lcom/amazon/org/codehaus/jackson/JsonParser;

    move-result-object p4

    .line 994
    invoke-virtual {p4}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 995
    invoke-virtual {v0, p4, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    if-eqz p1, :cond_1

    .line 999
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_1
    return-object p3

    :cond_2
    if-eqz p4, :cond_3

    .line 1005
    invoke-virtual {p0, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperties(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object p3

    :cond_3
    if-eqz p1, :cond_4

    .line 1009
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_4
    return-object p3
.end method

.method protected handleUnknownProperties(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1377
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->writeEndObject()V

    .line 1380
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->asParser()Lcom/amazon/org/codehaus/jackson/JsonParser;

    move-result-object p3

    .line 1381
    :goto_0
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->END_OBJECT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    .line 1382
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 1384
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 1385
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->handleUnknownProperty(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method protected handleUnknownProperty(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1357
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignoreAllUnknown:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1365
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->handleUnknownProperty(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1359
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/org/codehaus/jackson/JsonParser;

    return-void
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected injectValues(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 1339
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_injectables:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1340
    invoke-virtual {v3, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;->inject(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public properties()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->allProperties()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only call before BeanDeserializer has been resolved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resolve(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->allProperties()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    .line 374
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 375
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 378
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v5

    if-nez v5, :cond_1

    .line 379
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {p0, p1, p2, v5, v4}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->findDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 382
    :goto_1
    invoke-virtual {p0, p1, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_resolveManagedReferenceProperty(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    .line 384
    invoke-virtual {p0, p1, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_resolveUnwrappedProperty(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v6

    if-eqz v6, :cond_3

    if-nez v2, :cond_2

    .line 388
    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;-><init>()V

    .line 390
    :cond_2
    invoke-virtual {v2, v6}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->addProperty(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    move-object v5, v6

    .line 393
    :cond_3
    invoke-virtual {p0, p1, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_resolveInnerClassValuedProperty(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    if-eq v5, v4, :cond_4

    .line 395
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->replace(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 401
    :cond_4
    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueTypeDeserializer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getValueTypeDeserializer()Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v4

    .line 403
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;->getTypeInclusion()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    move-result-object v6

    sget-object v7, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    if-ne v6, v7, :cond_0

    if-nez v3, :cond_5

    .line 405
    new-instance v3, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;

    invoke-direct {v3}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;-><init>()V

    .line 407
    :cond_5
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->addExternal(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/String;)V

    .line 409
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanProperties:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->remove(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 415
    :cond_6
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->hasValueDeserializer()Z

    move-result v0

    if-nez v0, :cond_7

    .line 416
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-virtual {v5}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->getProperty()Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    move-result-object v5

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->findDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->withValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 420
    :cond_7
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 421
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 427
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateCreator()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v4

    .line 429
    new-instance v5, Lcom/amazon/org/codehaus/jackson/map/BeanProperty$Std;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_forClass:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v6}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotations()Lcom/amazon/org/codehaus/jackson/map/util/Annotations;

    move-result-object v6

    invoke-direct {v5, v1, v0, v6, v4}, Lcom/amazon/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 431
    invoke-virtual {p0, p1, p2, v0, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->findDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_delegateDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    goto :goto_2

    .line 423
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid delegate-creator definition for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": value instantiator ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_b

    .line 436
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->getCreatorProperties()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 437
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v4

    if-nez v4, :cond_a

    .line 438
    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {p0, p1, p2, v5, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->findDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->assignDeserializer(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V

    goto :goto_3

    :cond_b
    const/4 p1, 0x1

    if-eqz v3, :cond_c

    .line 444
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler$Builder;->build()Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/ExternalTypeHandler;

    .line 446
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    .line 449
    :cond_c
    iput-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;

    if-eqz v2, :cond_d

    .line 451
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_nonStandardCreation:Z

    :cond_d
    return-void
.end method

.method public unwrappingDeserializer()Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;

    if-eq v0, v1, :cond_0

    return-object p0

    .line 298
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;Z)V

    return-object v0
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1539
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;ILcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    return-void
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;ILcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1478
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1479
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 1482
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-nez v0, :cond_6

    if-eqz p4, :cond_2

    .line 1485
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p4, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p4, 0x1

    .line 1487
    :goto_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    .line 1488
    instance-of p4, p1, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    if-nez p4, :cond_5

    .line 1489
    :cond_3
    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_4
    if-nez p4, :cond_5

    .line 1492
    instance-of p4, p1, Ljava/lang/RuntimeException;

    if-eqz p4, :cond_5

    .line 1493
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 1497
    :cond_5
    invoke-static {p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 1483
    :cond_6
    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1529
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V

    return-void
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1453
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1454
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 1457
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-nez v0, :cond_6

    if-eqz p4, :cond_2

    .line 1460
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p4, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p4, 0x1

    .line 1462
    :goto_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    .line 1463
    instance-of p4, p1, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    if-nez p4, :cond_5

    .line 1464
    :cond_3
    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_4
    if-nez p4, :cond_5

    .line 1467
    instance-of p4, p1, Ljava/lang/RuntimeException;

    if-eqz p4, :cond_5

    .line 1468
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 1472
    :cond_5
    invoke-static {p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 1458
    :cond_6
    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method protected wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1503
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1504
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 1507
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-nez v0, :cond_5

    if-eqz p2, :cond_2

    .line 1510
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->WRAP_EXCEPTIONS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 1511
    :goto_2
    instance-of v1, p1, Ljava/io/IOException;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    .line 1515
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    .line 1516
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 1519
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;->_beanType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 1513
    :cond_4
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 1508
    :cond_5
    check-cast p1, Ljava/lang/Error;

    throw p1
.end method
