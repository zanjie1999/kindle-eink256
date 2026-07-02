.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;
.source "BeanSerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;
    }
.end annotation


# static fields
.field public static final instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;


# instance fields
.field protected final _factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;-><init>()V

    if-nez p1, :cond_0

    .line 188
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;

    invoke-direct {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>()V

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    return-void
.end method


# virtual methods
.method protected _constructWriter(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 763
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 766
    :cond_0
    invoke-virtual {p6, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;->getType(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    .line 767
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/PropertyBuilder;->getClassAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    move-result-object v0

    invoke-direct {p2, p5, v3, v0, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 770
    invoke-virtual {p0, p1, p6, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v4

    const/4 v0, 0x0

    .line 773
    invoke-virtual {v3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->isCollectionMapOrArray(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    invoke-virtual {p0, v3, p1, p6, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findPropertyContentTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v0

    :cond_1
    move-object v6, v0

    .line 778
    invoke-virtual {p0, v3, p1, p6, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findPropertyTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v5

    move-object v1, p3

    move-object v2, p5

    move-object v7, p6

    move v8, p4

    .line 779
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/PropertyBuilder;->buildWriter(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Z)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object p2

    .line 782
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p1

    .line 783
    invoke-virtual {p1, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationViews(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->setViews([Ljava/lang/Class;)V

    return-object p2
.end method

.method protected constructBeanSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 427
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_7

    .line 431
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->constructBeanSerializerBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;

    move-result-object v0

    .line 434
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findBeanProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 440
    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 442
    invoke-virtual {v3, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;->changeProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->filterBeanProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 449
    invoke-virtual {p0, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->sortBeanProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 452
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 453
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 454
    invoke-virtual {v3, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;->orderProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 458
    :cond_2
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->setProperties(Ljava/util/List;)V

    .line 459
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findFilterId(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->setFilterId(Ljava/lang/Object;)V

    .line 461
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findAnyGetter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 463
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 464
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 466
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getType(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    .line 468
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v5

    .line 469
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    .line 470
    invoke-virtual {p0, p1, v2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p3

    .line 472
    invoke-static/range {v3 .. v9}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->construct([Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;ZLcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;

    move-result-object p3

    .line 474
    new-instance v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;

    invoke-direct {v2, v1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;)V

    invoke-virtual {v0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->setAnyGetter(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;)V

    .line 477
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->processViews(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;)V

    .line 479
    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 480
    iget-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 481
    invoke-virtual {v1, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;->updateBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;

    move-result-object v0

    goto :goto_2

    .line 484
    :cond_5
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->build()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    if-nez p1, :cond_6

    .line 494
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->hasKnownClassAnnotations()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 495
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->createDummy()Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializer;

    move-result-object p1

    :cond_6
    return-object p1

    .line 428
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can not create bean serializer for Object.class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructBeanSerializerBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;
    .locals 1

    .line 518
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method protected constructFilteredBeanWriter(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .line 508
    invoke-static {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;->constructViewBased(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object p1

    return-object p1
.end method

.method protected constructPropertyBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/PropertyBuilder;
    .locals 1

    .line 514
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/PropertyBuilder;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/PropertyBuilder;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method public createKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->hasKeySerializers()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 314
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 318
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->keySerializers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    .line 319
    invoke-interface {v1, p1, p2, v0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;->findSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_2
    return-object v1
.end method

.method public createSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 251
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->introspect(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 252
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 258
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;->modifyTypeByAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    if-eq v1, p2, :cond_1

    const/4 v2, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_0
    if-eq v1, p2, :cond_2

    .line 261
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 263
    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->introspect(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 267
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result p2

    if-eqz p2, :cond_3

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v0

    move-object v6, p3

    move v7, v8

    .line 268
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildContainerSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Z)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1

    .line 272
    :cond_3
    iget-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->serializers()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    .line 273
    invoke-interface {v2, p1, v1, v0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;->findSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    :cond_5
    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, v0

    move-object v6, p3

    move v7, v8

    .line 283
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;->findSerializerByLookup(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Z)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    if-nez p2, :cond_6

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, v0

    move-object v6, p3

    move v7, v8

    .line 285
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;->findSerializerByPrimaryType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Z)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    if-nez p2, :cond_6

    .line 291
    invoke-virtual {p0, p1, v1, v0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->findBeanSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    if-nez p2, :cond_6

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v0

    move-object v6, p3

    move v7, v8

    .line 296
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;->findSerializerByAddonType(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Z)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    :cond_6
    return-object p2
.end method

.method protected customSerializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->serializers()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected filterBeanProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .line 611
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p1

    .line 612
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p2

    .line 613
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 614
    array-length p2, p1

    if-lez p2, :cond_1

    .line 615
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    .line 616
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 617
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method protected findBeanProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 558
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findProperties()Ljava/util/List;

    move-result-object v0

    .line 559
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 562
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->removeIgnorableTypes(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V

    .line 565
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->removeSetterlessGetters(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V

    .line 570
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return-object v3

    .line 575
    :cond_1
    invoke-virtual {p0, p1, p2, v3, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Z

    move-result v2

    .line 576
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->constructPropertyBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/PropertyBuilder;

    move-result-object v3

    .line 578
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object p2

    .line 581
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 582
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getAccessor()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v5

    .line 584
    invoke-virtual {v1, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 585
    invoke-virtual {v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 588
    :cond_2
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v9

    .line 589
    instance-of v4, v5, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v4, :cond_3

    .line 590
    move-object v10, v5

    check-cast v10, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v3

    move v8, v2

    invoke-virtual/range {v4 .. v10}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_constructWriter(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    :cond_3
    move-object v10, v5

    check-cast v10, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v3

    move v8, v2

    invoke-virtual/range {v4 .. v10}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_constructWriter(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/PropertyBuilder;ZLjava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v11
.end method

.method public findBeanSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 344
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 347
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->constructBeanSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    .line 349
    iget-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->hasSerializerModifiers()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 350
    iget-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    invoke-virtual {p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 351
    invoke-virtual {v0, p1, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;->modifySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method protected findFilterId(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Ljava/lang/Object;
    .locals 0

    .line 529
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findFilterId(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public findPropertyContentTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 399
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 400
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 401
    invoke-virtual {v1, p2, p3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object p1

    if-nez p1, :cond_0

    .line 404
    invoke-virtual {p0, p2, v0, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    move-result-object p1

    return-object p1

    .line 406
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getSubtypeResolver()Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v2

    invoke-virtual {v2, p3, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object p3

    .line 407
    invoke-interface {p1, p2, v0, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    move-result-object p1

    return-object p1
.end method

.method public findPropertyTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 373
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 374
    invoke-virtual {v0, p2, p3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 377
    invoke-virtual {p0, p2, p1, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    move-result-object p1

    return-object p1

    .line 379
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getSubtypeResolver()Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v2

    invoke-virtual {v2, p3, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object p3

    .line 380
    invoke-interface {v1, p2, p1, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    return-object v0
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 548
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected processViews(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;)V
    .locals 7

    .line 667
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->getProperties()Ljava/util/List;

    move-result-object v0

    .line 668
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;->DEFAULT_VIEW_INCLUSION:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p1

    .line 669
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 671
    new-array v2, v1, [Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 674
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 675
    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getViews()[Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_1

    .line 678
    aput-object v5, v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 682
    invoke-virtual {p0, v5, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->constructFilteredBeanWriter(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object v5

    aput-object v5, v2, v3

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    if-nez v4, :cond_3

    return-void

    .line 689
    :cond_3
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->setFilteredProperties([Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    return-void
.end method

.method protected removeIgnorableTypes(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .line 700
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p2

    .line 701
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 702
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 703
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 704
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 705
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getAccessor()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v1

    if-nez v1, :cond_1

    .line 707
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 710
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 711
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 713
    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 714
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    .line 715
    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    .line 718
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 720
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected removeSetterlessGetters(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .line 738
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 739
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 740
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 743
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->couldDeserialize()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->isExplicitlyIncluded()Z

    move-result p2

    if-nez p2, :cond_0

    .line 744
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected sortBeanProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p3
.end method

.method public withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 215
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;

    if-ne v0, v1, :cond_1

    .line 220
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;)V

    return-object v0

    .line 216
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subtype of BeanSerializerFactory ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has not properly overridden method \'withAdditionalSerializers\': can not instantiate subtype with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "additional serializer definitions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
