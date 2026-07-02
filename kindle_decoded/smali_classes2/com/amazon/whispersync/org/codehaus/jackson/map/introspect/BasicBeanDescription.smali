.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;
.source "BasicBeanDescription.java"


# instance fields
.field protected final _annotationIntrospector:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

.field protected _anyGetterMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected _anySetterMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected _bindings:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

.field protected final _classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

.field protected final _config:Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;"
        }
    .end annotation
.end field

.field protected _ignoredPropertyNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _ignoredPropertyNamesForDeser:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _injectables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation
.end field

.field protected _jsonValueMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected final _properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)V

    .line 98
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 100
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 101
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    return-void
.end method

.method public static forDeserialization(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 5

    .line 112
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getClassDef()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getProperties()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V

    .line 114
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getAnySetterMethod()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 115
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getIgnoredPropertyNames()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNames:Ljava/util/Set;

    .line 116
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getIgnoredPropertyNamesForDeser()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    .line 117
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getInjectables()Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_injectables:Ljava/util/Map;

    return-object v0
.end method

.method public static forOtherUse(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V

    return-object v0
.end method

.method public static forSerialization(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 5

    .line 129
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getClassDef()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getProperties()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Ljava/util/List;)V

    .line 131
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getJsonValueMethod()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_jsonValueMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 132
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->getAnyGetterMethod()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object p0

    iput-object p0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method


# virtual methods
.method public _findPropertyFields(Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .line 543
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 544
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 545
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getField()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 547
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 549
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 553
    :cond_1
    invoke-virtual {p2, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public bindingsForBeanType()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_bindings:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_config:Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_bindings:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_bindings:Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    return-object v0
.end method

.method public findAnyGetter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 490
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid \'any-getter\' annotation on method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(): return type is not instance of java.util.Map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anyGetterMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public findAnySetter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v0

    .line 257
    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid \'any-setter\' annotation on method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(): first argument not of type String or Object, but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public findBackReferenceProperties()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 506
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getMutator()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 510
    :cond_1
    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 511
    invoke-virtual {v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_2

    .line 513
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 515
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v3

    .line 516
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 517
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple back-reference properties with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object v1
.end method

.method public findCreatorPropertyNames()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_6

    if-nez v2, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getConstructors()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v3

    .line 434
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 435
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    goto :goto_2

    .line 437
    :cond_2
    iget-object v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    .line 440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 442
    :cond_4
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    if-ge v6, v5, :cond_1

    .line 444
    iget-object v7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v4, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    .line 449
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_7
    return-object v1
.end method

.method public findDefaultConstructor()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->getDefaultConstructor()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    return-object v0
.end method

.method public findDeserializableFields(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 613
    invoke-virtual {p0, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_findPropertyFields(Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public varargs findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 380
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->isFactoryMethod(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 382
    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v3

    .line 383
    array-length v4, p1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, p1, v2

    .line 385
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 386
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findGetters(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .line 570
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 571
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 572
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getGetter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 574
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    .line 576
    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual {p1, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public findInjectables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_injectables:Ljava/util/Map;

    return-object v0
.end method

.method public findJsonValueMethod()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_jsonValueMethod:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object p1

    return-object p1
.end method

.method public findProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    return-object v0
.end method

.method public findSerializableFields(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x1

    .line 605
    invoke-virtual {p0, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_findPropertyFields(Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findSerializableFields(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/Map;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findSerializableFields(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1
.end method

.method public findSerializationInclusion(Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    return-object p1

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object p1

    return-object p1
.end method

.method public findSetters(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;)Ljava/util/LinkedHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .line 590
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 591
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 592
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getSetter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 594
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public varargs findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 355
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 356
    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v3

    .line 357
    array-length v4, p1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, p1, v2

    if-ne v5, v3, :cond_1

    .line 359
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getClassAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    return-object v0
.end method

.method public getConstructors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFactoryMethods()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;

    move-result-object v0

    .line 330
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 333
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 335
    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->isFactoryMethod(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getIgnoredPropertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNames:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIgnoredPropertyNamesForDeser()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    return-object v0
.end method

.method public hasKnownClassAnnotations()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->hasAnnotations()Z

    move-result v0

    return v0
.end method

.method public instantiateBean(Z)Ljava/lang/Object;
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->getDefaultConstructor()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 308
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 311
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 314
    :cond_2
    instance-of v0, p1, Ljava/lang/Error;

    if-nez v0, :cond_4

    .line 315
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 316
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to instantiate bean of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_classInfo:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 314
    :cond_4
    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method protected isFactoryMethod(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 3

    .line 400
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 401
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 412
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "valueOf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public resolveType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method
