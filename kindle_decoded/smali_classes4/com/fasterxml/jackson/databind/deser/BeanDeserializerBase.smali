.class public abstract Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "BeanDeserializerBase.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
.implements Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;",
        "Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field protected static final TEMP_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

.field protected _arrayDelegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _backRefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected final _beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

.field protected final _beanType:Lcom/fasterxml/jackson/databind/JavaType;

.field private final transient _classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

.field protected _delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

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

.field protected final _injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

.field protected final _needViewProcesing:Z

.field protected _nonStandardCreation:Z

.field protected final _objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

.field protected _propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

.field protected final _serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

.field protected transient _subDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

.field protected final _valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

.field protected _vanillaProcessing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    const-string v1, "#temporary-name"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->TEMP_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;)V
    .locals 1

    .line 249
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
    .locals 2

    .line 320
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 322
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 323
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 325
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 326
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 327
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 329
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;

    .line 330
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;

    .line 331
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z

    .line 332
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    .line 333
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    .line 335
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    .line 336
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    .line 337
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z

    .line 338
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 341
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-nez p2, :cond_0

    .line 344
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .line 345
    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z

    goto :goto_0

    .line 351
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    sget-object v1, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-direct {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 352
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    const/4 p1, 0x0

    .line 353
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z

    :goto_0
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
    .locals 3

    .line 281
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 283
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 284
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 286
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 287
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 288
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 290
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;

    .line 291
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 292
    iget-boolean v1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z

    .line 293
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    .line 294
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    .line 295
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 297
    iget-boolean v1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    .line 298
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    if-eqz p2, :cond_3

    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->renameAll(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    move-result-object v1

    .line 306
    :cond_2
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v2, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->renameAll(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    goto :goto_2

    .line 308
    :cond_3
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .line 310
    :goto_2
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    .line 311
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z

    .line 312
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 315
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 359
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 361
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 362
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 364
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 365
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 366
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 368
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;

    .line 369
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;

    .line 370
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z

    .line 371
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    .line 372
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    .line 374
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    .line 375
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    .line 376
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z

    .line 377
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 379
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z

    .line 380
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 381
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Z)V
    .locals 1

    .line 254
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 256
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 257
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 259
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 260
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 261
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 263
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .line 264
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;

    .line 265
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;

    .line 266
    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z

    .line 267
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    .line 268
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    .line 269
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 271
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    .line 272
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    .line 273
    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z

    .line 274
    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 276
    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .line 212
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 214
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    .line 216
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 217
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 219
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .line 220
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;

    .line 221
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;

    .line 222
    iput-boolean p6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z

    .line 224
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->getAnySetter()Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-result-object p3

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    .line 225
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->getInjectables()Ljava/util/List;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 226
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    new-array p5, p5, [Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    invoke-interface {p3, p5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    goto :goto_1

    :cond_1
    :goto_0
    move-object p3, p4

    :goto_1
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    .line 228
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 229
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromObjectWith()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    .line 236
    invoke-virtual {p2, p4}, Lcom/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    .line 237
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object p4

    :goto_4
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 239
    iput-boolean p7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z

    .line 240
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-nez p1, :cond_5

    if-nez p7, :cond_5

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-nez p1, :cond_5

    const/4 p3, 0x1

    :cond_5
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z

    return-void
.end method

.method private _findDelegateDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
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

    .line 575
    new-instance v7, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->TEMP_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    sget-object v6, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 579
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-nez p3, :cond_0

    .line 581
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object p3

    .line 583
    :cond_0
    invoke-virtual {p0, p1, p2, v7}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 585
    invoke-virtual {p3, v7}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object p2

    .line 586
    new-instance p3, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;

    invoke-direct {p3, p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/TypeWrappedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object p3

    :cond_1
    return-object p1
.end method

.method private throwOrReturnThrowable(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1527
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 1531
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-nez v0, :cond_7

    if-eqz p2, :cond_2

    .line 1534
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p2, 0x1

    .line 1536
    :goto_2
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 1537
    instance-of p2, p1, Lcom/fasterxml/jackson/core/JsonProcessingException;

    if-eqz p2, :cond_3

    goto :goto_3

    .line 1538
    :cond_3
    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_4
    if-nez p2, :cond_6

    .line 1541
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-nez p2, :cond_5

    goto :goto_3

    .line 1542
    :cond_5
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_6
    :goto_3
    return-object p1

    .line 1532
    :cond_7
    check-cast p1, Ljava/lang/Error;

    throw p1
.end method


# virtual methods
.method protected _convertObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1066
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 1067
    instance-of p1, p3, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1068
    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1069
    :cond_0
    instance-of p1, p3, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 1070
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(J)V

    goto :goto_0

    .line 1071
    :cond_1
    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 1072
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(I)V

    goto :goto_0

    .line 1077
    :cond_2
    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V

    .line 1079
    :goto_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    .line 1080
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1081
    invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract _deserializeUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method

.method protected _findSubclassDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/util/TokenBuffer;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1462
    monitor-enter p0

    .line 1463
    :try_start_0
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_subDeserializers:Ljava/util/HashMap;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_subDeserializers:Ljava/util/HashMap;

    new-instance v0, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1464
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_1

    return-object p3

    .line 1469
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 1476
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1479
    monitor-enter p0

    .line 1480
    :try_start_1
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_subDeserializers:Ljava/util/HashMap;

    if-nez p3, :cond_2

    .line 1481
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_subDeserializers:Ljava/util/HashMap;

    .line 1483
    :cond_2
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_subDeserializers:Ljava/util/HashMap;

    new-instance v0, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
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
    return-object p1

    :catchall_1
    move-exception p1

    .line 1464
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method protected _handleTypedObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->getDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1036
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1040
    :cond_0
    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_convertObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p4

    .line 1043
    :goto_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->resolver:Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    invoke-virtual {p2, p4, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object p1

    .line 1044
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->bindItem(Ljava/lang/Object;)V

    .line 1046
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    if-eqz p1, :cond_1

    .line 1048
    invoke-virtual {p1, p3, p4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p3
.end method

.method protected _resolveInnerClassValuedProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 9

    .line 775
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 777
    instance-of v1, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    if-eqz v1, :cond_2

    .line 778
    check-cast v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    .line 779
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v0

    if-nez v0, :cond_2

    .line 781
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 782
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 784
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 785
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 786
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 787
    array-length v7, v6

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    aget-object v6, v6, v3

    if-ne v6, v1, :cond_1

    .line 788
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    invoke-static {v5, p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 791
    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;

    invoke-direct {p1, p2, v5}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/reflect/Constructor;)V

    return-object p1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method protected _resolveManagedReferenceProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 7

    .line 704
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getManagedReferenceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-object p2

    .line 708
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    .line 709
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->findBackReference(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    const-string p1, "Can not handle managed/back reference \'"

    if-eqz v3, :cond_2

    .line 715
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 716
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 717
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v5

    .line 718
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 723
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/impl/ManagedReferenceProperty;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ManagedReferenceProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/util/Annotations;Z)V

    return-object p1

    .line 719
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': back reference type ("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") not compatible with managed type ("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 711
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': no back reference property found from type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected _resolveUnwrappedProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .line 750
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 754
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 755
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 758
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _resolvedObjectIdProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .line 734
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object p1

    .line 735
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 736
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v0

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    return-object p2

    .line 740
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReferenceProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)V

    return-object v0
.end method

.method protected abstract asArrayDeserializer()Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .line 630
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 631
    :cond_0
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    move-object p2, v2

    :goto_1
    const/4 v3, 0x0

    if-eqz p2, :cond_4

    if-eqz v1, :cond_4

    .line 634
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 637
    invoke-virtual {v1, p2, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;

    move-result-object v4

    .line 644
    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/DatabindContext;->objectIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    move-result-object v10

    .line 645
    const-class v5, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;

    if-ne v4, v5, :cond_3

    .line 646
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 647
    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->findProperty(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 652
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 653
    new-instance v6, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedObjectIdGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getScope()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedObjectIdGenerator;-><init>(Ljava/lang/Class;)V

    move-object v9, v5

    move-object v7, v6

    goto :goto_2

    .line 649
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Object Id definition for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handledType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": can not find property with name \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 655
    :cond_3
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 656
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v5

    const-class v6, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v5, v4, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    aget-object v4, v4, v3

    .line 658
    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/DatabindContext;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object v5

    move-object v9, v2

    move-object v7, v5

    :goto_2
    move-object v5, v4

    .line 660
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v8

    .line 661
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v6

    invoke-static/range {v5 .. v10}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    .line 667
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eq v0, p1, :cond_5

    .line 668
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    move-result-object p1

    goto :goto_3

    :cond_5
    move-object p1, p0

    :goto_3
    if-eqz p2, :cond_6

    .line 672
    invoke-virtual {v1, p2, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;Z)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 673
    array-length v3, v0

    if-eqz v3, :cond_6

    .line 674
    iget-object v3, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;

    invoke-static {v3, v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->setAndArray(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 675
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->withIgnorableProperties(Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    move-result-object p1

    :cond_6
    if-eqz p2, :cond_7

    .line 682
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 685
    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v2

    :cond_7
    if-nez v2, :cond_8

    .line 689
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    .line 691
    :cond_8
    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v2, p2, :cond_9

    .line 692
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->asArrayDeserializer()Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    move-result-object p1

    :cond_9
    return-object p1
.end method

.method public deserializeFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1251
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_arrayDelegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1253
    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingArrayDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1254
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v0, :cond_0

    .line 1255
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1259
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    throw v1

    .line 1263
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_3

    .line 1265
    :try_start_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingArrayDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1266
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v0, :cond_2

    .line 1267
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    return-object p1

    :catch_1
    move-exception p1

    .line 1271
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    throw v1

    .line 1274
    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1275
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1276
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_4

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 1279
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 1280
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_5

    return-object v0

    .line 1281
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to unwrap single value array for single \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' value but there was more than a single value in the array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 1286
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1287
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    .line 1288
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p1, v0, :cond_7

    return-object v1

    .line 1291
    :cond_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handledType()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 1293
    :cond_8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handledType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public deserializeFromBoolean(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1236
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromBoolean()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1239
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v0, :cond_0

    .line 1240
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    :cond_0
    return-object p1

    .line 1245
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1246
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeFromDouble(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1210
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v0

    .line 1212
    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 1226
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1228
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handledType()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "no suitable creator method found to deserialize from JSON floating-point number"

    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 1213
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_4

    .line 1214
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromDouble()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1215
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1216
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v0, :cond_3

    .line 1217
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    :cond_3
    return-object p1

    .line 1222
    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromDouble(Lcom/fasterxml/jackson/databind/DeserializationContext;D)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeFromEmbedded(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_0

    .line 1302
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1307
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeFromNumber(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1146
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 1171
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_2

    .line 1172
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1173
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v0, :cond_1

    .line 1174
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    :cond_1
    return-object p1

    .line 1178
    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handledType()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "no suitable creator method found to deserialize from JSON integer number"

    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 1159
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_5

    .line 1160
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromInt()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1161
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1162
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v0, :cond_4

    .line 1163
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    :cond_4
    return-object p1

    .line 1168
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    invoke-virtual {v0, p2, v1, v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromLong(Lcom/fasterxml/jackson/databind/DeserializationContext;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1148
    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_8

    .line 1149
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromInt()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1150
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1151
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v0, :cond_7

    .line 1152
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    :cond_7
    return-object p1

    .line 1157
    :cond_8
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromInt(Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1103
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->readObjectReference(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 1104
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    iget-object v2, v1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->resolver:Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    invoke-virtual {p2, v0, v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object p2

    .line 1106
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->resolve()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 1108
    :cond_0
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve Object Id ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] (for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2, p2}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;)V

    throw v1
.end method

.method protected deserializeFromObjectUsingNonDefault(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1118
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_1

    .line 1123
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_deserializeUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1126
    :cond_1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1127
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not instantiate abstract type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (need to add/enable type information?)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 1130
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No suitable constructor found for type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": can not instantiate from JSON object (missing default constructor or creator, or perhaps need to add/enable type information?)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public deserializeFromString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1184
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_2

    .line 1192
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromString()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1193
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1194
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v0, :cond_1

    .line 1195
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    :cond_1
    return-object p1

    .line 1200
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected deserializeWithObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1094
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 990
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_3

    .line 992
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->canReadObjectId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getObjectId()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p3

    .line 996
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_handleTypedObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1000
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1003
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1004
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1007
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    .line 1008
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 1010
    :cond_2
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->maySerializeAsObject()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->isValidReferencePropertyName(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1012
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1017
    :cond_3
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public findBackReference(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 940
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object p1
.end method

.method protected findConvertingDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
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

    .line 603
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/DatabindContext;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v0

    .line 608
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/util/Converter;->getInputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 609
    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object p1

    .line 610
    new-instance p2, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {p2, v0, v1, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findProperty(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 0

    .line 890
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->findProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p1

    return-object p1
.end method

.method public findProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 2

    .line 902
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 904
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    if-eqz v1, :cond_1

    .line 905
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getKnownPropertyNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 841
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 842
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 843
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    return-object v0
.end method

.method public getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    return-object v0
.end method

.method protected handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1402
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_IGNORED_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1405
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    return-void

    .line 1403
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->getKnownPropertyNames()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p1, p3, p4, p2}, Lcom/fasterxml/jackson/databind/exc/IgnoredPropertyException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/exc/IgnoredPropertyException;

    move-result-object p1

    throw p1
.end method

.method protected handlePolymorphic(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1425
    invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_findSubclassDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_0

    .line 1429
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V

    .line 1430
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p4

    .line 1431
    invoke-virtual {p4}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1432
    invoke-virtual {v0, p4, p2, p3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    if-eqz p1, :cond_1

    .line 1436
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_1
    return-object p3

    :cond_2
    if-eqz p4, :cond_3

    .line 1442
    invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handleUnknownProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;

    :cond_3
    if-eqz p1, :cond_4

    .line 1446
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_4
    return-object p3
.end method

.method protected handleUnknownProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1335
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V

    .line 1338
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p3

    .line 1339
    :goto_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 1340
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 1342
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 1343
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method protected handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1380
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z

    if-eqz v0, :cond_0

    .line 1381
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    return-void

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1385
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1389
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected handleUnknownVanilla(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1356
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz v0, :cond_1

    .line 1361
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1363
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    const/4 p1, 0x0

    throw p1

    .line 1367
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1319
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1320
    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;->inject(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isCachable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromObjectWith()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    .line 421
    array-length v3, v0

    move-object v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v6, v0, v4

    .line 422
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasValueTypeDeserializer()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 423
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueTypeDeserializer()Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v7

    .line 424
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object v8

    sget-object v9, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    if-ne v8, v9, :cond_1

    if-nez v5, :cond_0

    .line 426
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;

    invoke-direct {v5}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;-><init>()V

    .line 428
    :cond_0
    invoke-virtual {v5, v6, v7}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->addExternal(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    move-object v5, v0

    .line 438
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 442
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v6

    if-nez v6, :cond_6

    .line 444
    invoke-virtual {p0, p1, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->findConvertingDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    if-nez v6, :cond_5

    .line 446
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 448
    :cond_5
    invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    goto :goto_2

    .line 450
    :cond_6
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 454
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    invoke-virtual {p1, v6, v4, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v7

    if-eq v7, v6, :cond_7

    .line 457
    invoke-virtual {v4, v7}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    goto :goto_2

    :cond_7
    move-object v6, v4

    .line 462
    :goto_2
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_resolveManagedReferenceProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    .line 465
    instance-of v7, v6, Lcom/fasterxml/jackson/databind/deser/impl/ManagedReferenceProperty;

    if-nez v7, :cond_8

    .line 466
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_resolvedObjectIdProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    .line 469
    :cond_8
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_resolveUnwrappedProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v7

    if-eqz v7, :cond_a

    if-nez v2, :cond_9

    .line 473
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;-><init>()V

    .line 475
    :cond_9
    invoke-virtual {v2, v7}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->addProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 479
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v7}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->remove(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto :goto_1

    .line 483
    :cond_a
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_resolveInnerClassValuedProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    if-eq v6, v4, :cond_c

    .line 485
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v7, v6}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->replace(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    if-eqz v0, :cond_c

    .line 490
    array-length v7, v0

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_c

    .line 491
    aget-object v9, v0, v8

    if-ne v9, v4, :cond_b

    .line 492
    aput-object v6, v0, v8

    goto :goto_4

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 508
    :cond_c
    :goto_4
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasValueTypeDeserializer()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 509
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueTypeDeserializer()Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v4

    .line 510
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    if-ne v7, v8, :cond_4

    if-nez v5, :cond_d

    .line 512
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;

    invoke-direct {v5}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;-><init>()V

    .line 514
    :cond_d
    invoke-virtual {v5, v6, v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->addExternal(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    .line 516
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->remove(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto/16 :goto_1

    .line 523
    :cond_e
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->hasValueDeserializer()Z

    move-result v3

    if-nez v3, :cond_f

    .line 524
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->getProperty()Lcom/fasterxml/jackson/databind/BeanProperty;

    move-result-object v6

    invoke-virtual {p0, p1, v4, v6}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    .line 529
    :cond_f
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v3

    const-string v4, ": value instantiator ("

    if-eqz v3, :cond_11

    .line 530
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 536
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v6

    invoke-direct {p0, p1, v3, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_findDelegateDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_5

    .line 532
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid delegate-creator definition for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 541
    :cond_11
    :goto_5
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingArrayDelegate()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 542
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getArrayDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 548
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getArrayDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_findDelegateDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_arrayDelegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    goto :goto_6

    .line 544
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid array-delegate-creator definition for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") returned true for \'canCreateUsingArrayDelegate()\', but null for \'getArrayDelegateType()\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    :goto_6
    if-eqz v0, :cond_14

    .line 554
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-static {p1, v3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->construct(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    :cond_14
    const/4 p1, 0x1

    if-eqz v5, :cond_15

    .line 558
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->build()Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    .line 560
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    .line 563
    :cond_15
    iput-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    if-eqz v2, :cond_16

    .line 565
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    .line 569
    :cond_16
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z

    if-nez v0, :cond_17

    const/4 v1, 0x1

    :cond_17
    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z

    return-void
.end method

.method public abstract withIgnorableProperties(Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;"
        }
    .end annotation
.end method

.method public abstract withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1511
    invoke-direct {p0, p1, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->throwOrReturnThrowable(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method protected wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1551
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1552
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 1555
    :cond_0
    instance-of v0, p1, Ljava/lang/Error;

    if-nez v0, :cond_5

    if-eqz p2, :cond_2

    .line 1558
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 1559
    :goto_2
    instance-of v1, p1, Ljava/io/IOException;

    if-nez v1, :cond_4

    if-nez v0, :cond_3

    .line 1563
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    .line 1564
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 1567
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 1561
    :cond_4
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 1556
    :cond_5
    check-cast p1, Ljava/lang/Error;

    throw p1
.end method
