.class public Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;
.super Ljava/lang/Object;
.source "POJOPropertiesCollector.java"


# instance fields
.field protected final _annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

.field protected _anyGetters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected _anySetters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _classDef:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

.field protected final _config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;"
        }
    .end annotation
.end field

.field protected _creatorProperties:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field protected final _forSerialization:Z

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

.field protected _injectables:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Object;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation
.end field

.field protected _jsonValueGetters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected final _properties:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation
.end field

.field protected final _type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected final _visibilityChecker:Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;ZLcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;Z",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 62
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    .line 64
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    .line 69
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    .line 104
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    .line 105
    iput-boolean p2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    .line 106
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 107
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    .line 108
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_1

    .line 111
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getDefaultVisibilityChecker()Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getDefaultVisibilityChecker()Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p1

    invoke-virtual {v0, p4, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    :goto_0
    return-void
.end method

.method private _addIgnored(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V
    .locals 2

    .line 590
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-eqz v0, :cond_0

    return-void

    .line 598
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/Set;

    invoke-direct {p0, v1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->addToSet(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/Set;

    .line 600
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyDeserializeIgnorals()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 601
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->addToSet(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    :cond_1
    return-void
.end method

.method private addToSet(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 708
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 710
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method protected _addCreators()V
    .locals 10

    .line 372
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 378
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-nez v5, :cond_2

    .line 379
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 381
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    .line 382
    invoke-virtual {v2, v6}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v7

    .line 383
    invoke-virtual {v0, v7}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 387
    invoke-virtual {p0, v8}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v9

    .line 388
    invoke-virtual {v9, v7, v8, v3, v4}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addCtor(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V

    .line 389
    iget-object v7, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 393
    :cond_4
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 394
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-nez v5, :cond_6

    .line 395
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    .line 397
    :cond_6
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    .line 398
    invoke-virtual {v2, v6}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v7

    .line 399
    invoke-virtual {v0, v7}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 403
    invoke-virtual {p0, v8}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v9

    .line 404
    invoke-virtual {v9, v7, v8, v3, v4}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addCtor(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V

    .line 405
    iget-object v7, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method protected _addFields()V
    .locals 9

    .line 335
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 337
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->fields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 338
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 343
    :cond_0
    iget-boolean v4, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-eqz v4, :cond_1

    .line 349
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 351
    :cond_1
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v5, ""

    .line 353
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v3

    :cond_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_4

    .line 359
    iget-object v7, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v7, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;->isFieldVisible(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v7

    :cond_4
    if-eqz v0, :cond_5

    .line 362
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 363
    :goto_3
    invoke-virtual {p0, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v7, v5}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addField(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method protected _addInjectables()V
    .locals 5

    .line 512
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->fields()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 519
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_doAddInjectable(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    goto :goto_0

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 526
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 529
    :cond_2
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_doAddInjectable(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected _addMethods()V
    .locals 8

    .line 416
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 418
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 427
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_c

    if-eqz v0, :cond_4

    .line 433
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasAnyGetterAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 434
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    if-nez v3, :cond_1

    .line 435
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    .line 437
    :cond_1
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 441
    :cond_2
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasAsValueAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 442
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    if-nez v3, :cond_3

    .line 443
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    .line 445
    :cond_3
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    goto :goto_1

    .line 450
    :cond_5
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_8

    .line 452
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->okNameForRegularGetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    .line 454
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->okNameForIsGetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 458
    :cond_6
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v6, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;->isIsGetterVisible(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v6

    goto :goto_2

    .line 460
    :cond_7
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v6, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;->isGetterVisible(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v6

    goto :goto_2

    .line 464
    :cond_8
    invoke-static {v2}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->okNameForGetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    .line 467
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v3

    .line 469
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_a

    move-object v5, v3

    :cond_a
    :goto_2
    if-nez v0, :cond_b

    goto :goto_3

    .line 474
    :cond_b
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v4

    .line 475
    :goto_3
    invoke-virtual {p0, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v6, v4}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addGetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_c
    if-ne v3, v6, :cond_13

    if-nez v0, :cond_d

    goto :goto_4

    .line 477
    :cond_d
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    if-nez v5, :cond_f

    .line 479
    invoke-static {v2}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->okNameForSetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    .line 483
    :cond_e
    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    invoke-interface {v6, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;->isSetterVisible(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v6

    goto :goto_5

    .line 486
    :cond_f
    invoke-static {v2}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->okNameForSetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 489
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v3

    .line 491
    :cond_10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_11

    move-object v5, v3

    :cond_11
    :goto_5
    if-nez v0, :cond_12

    goto :goto_6

    .line 496
    :cond_12
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v4

    .line 497
    :goto_6
    invoke-virtual {p0, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v3

    invoke-virtual {v3, v2, v5, v6, v4}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addSetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasAnySetterAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 501
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    if-nez v3, :cond_14

    .line 502
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    .line 504
    :cond_14
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method protected _doAddInjectable(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    .line 539
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    if-eqz p2, :cond_3

    if-nez p1, :cond_2

    const-string p2, "[null]"

    goto :goto_0

    .line 543
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 544
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate injectable value with id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' (of type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method protected _property(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    if-nez v0, :cond_0

    .line 699
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;-><init>(Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected _removeUnwantedProperties()V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 562
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 563
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 564
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 567
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyIgnorals()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 573
    invoke-direct {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addIgnored(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V

    .line 575
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->anyExplicitNames()Z

    move-result v2

    if-nez v2, :cond_1

    .line 576
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->removeIgnored()V

    .line 583
    :cond_2
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->removeNonVisible()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected _renameProperties()V
    .locals 4

    .line 614
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 616
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 617
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 618
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 619
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->findNewName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 622
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 624
    :cond_1
    invoke-virtual {v2, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->withName(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v2

    .line 625
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 632
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 633
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v2

    .line 634
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    if-nez v3, :cond_3

    .line 636
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 638
    :cond_3
    invoke-virtual {v3, v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addAll(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected _renameUsing(Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;)V
    .locals 7

    .line 646
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 647
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 648
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, v0, v2

    .line 649
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    .line 650
    iget-boolean v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    if-eqz v5, :cond_1

    .line 651
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasGetter()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 652
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getGetter()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v4}, Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;->nameForGetterMethod(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 653
    :cond_0
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasField()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 654
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v4}, Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;->nameForField(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 657
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasSetter()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 658
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getSetter()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v4}, Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;->nameForSetterMethod(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 659
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasConstructorParameter()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 660
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getConstructorParameter()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v4}, Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;->nameForConstructorParameter(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 661
    :cond_3
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasField()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 662
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getField()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v4}, Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;->nameForField(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 663
    :cond_4
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->hasGetter()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 667
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getGetter()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v6

    invoke-virtual {p1, v5, v6, v4}, Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;->nameForGetterMethod(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 670
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 671
    invoke-virtual {v3, v4}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->withName(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    move-result-object v3

    .line 676
    :cond_6
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    if-nez v5, :cond_7

    .line 678
    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 680
    :cond_7
    invoke-virtual {v5, v3}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->addAll(Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method protected _sortProperties()V
    .locals 10

    .line 264
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->shouldSortPropertiesAlphabetically()Z

    move-result v1

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v0, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationPropertyOrder(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    .line 276
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    return-void

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-eqz v1, :cond_2

    .line 283
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    goto :goto_1

    .line 285
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    add-int v3, v2, v2

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 288
    :goto_1
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 289
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 291
    :cond_3
    new-instance v3, Ljava/util/LinkedHashMap;

    add-int/2addr v2, v2

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    if-eqz v0, :cond_7

    .line 294
    array-length v2, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_7

    aget-object v5, v0, v4

    .line 295
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    if-nez v6, :cond_5

    .line 297
    iget-object v7, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 298
    invoke-virtual {v8}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getInternalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 301
    invoke-virtual {v8}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v8

    :cond_5
    if-eqz v6, :cond_6

    .line 307
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 312
    :cond_7
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;

    if-eqz v0, :cond_8

    .line 313
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 314
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 318
    :cond_8
    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 320
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 321
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public collect()Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 218
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addFields()V

    .line 219
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addMethods()V

    .line 220
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addCreators()V

    .line 221
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_addInjectables()V

    .line 224
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_removeUnwantedProperties()V

    .line 227
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_renameProperties()V

    .line 229
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getPropertyNamingStrategy()Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_renameUsing(Lcom/amazon/org/codehaus/jackson/map/PropertyNamingStrategy;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 239
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->trimByVisibility()V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;

    .line 244
    iget-boolean v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_forSerialization:Z

    invoke-virtual {v1, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;->mergeAnnotations(Z)V

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_sortProperties()V

    return-object p0
.end method

.method public getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    return-object v0
.end method

.method public getAnyGetterMethod()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple \'any-getters\' defined ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " vs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnySetterMethod()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple \'any-setters\' defined ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " vs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClassDef()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    return-object v0
.end method

.method public getConfig()Lcom/amazon/org/codehaus/jackson/map/MapperConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_config:Lcom/amazon/org/codehaus/jackson/map/MapperConfig;

    return-object v0
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

    .line 188
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/Set;

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

    .line 195
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_ignoredPropertyNamesForDeser:Ljava/util/Set;

    return-object v0
.end method

.method public getInjectables()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getJsonValueMethod()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multiple value properties defined ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " vs "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getPropertyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertyBuilder;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method protected reportProblem(Ljava/lang/String;)V
    .locals 3

    .line 692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem with definition of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/POJOPropertiesCollector;->_classDef:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
