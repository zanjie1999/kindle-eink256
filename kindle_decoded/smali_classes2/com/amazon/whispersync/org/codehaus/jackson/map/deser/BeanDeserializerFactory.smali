.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;
.source "BeanDeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;
    }
.end annotation


# static fields
.field private static final INIT_CAUSE_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;


# instance fields
.field protected final _factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 32
    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    .line 227
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)V
    .locals 0

    .line 245
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;-><init>()V

    if-nez p1, :cond_0

    .line 247
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    invoke-direct {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>()V

    .line 249
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    return-void
.end method

.method private _createEnumKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 331
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->introspect(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;

    move-result-object p3

    check-cast p3, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 332
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    .line 333
    invoke-virtual {p0, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;

    move-result-object v0

    .line 335
    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 336
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result p3

    const/4 v2, 0x1

    if-ne p3, v2, :cond_3

    .line 339
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object p3

    .line 341
    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p2, 0x0

    .line 343
    invoke-virtual {v1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object p2

    const-class p3, Ljava/lang/String;

    if-ne p2, p3, :cond_2

    .line 346
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 347
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Member;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 349
    :cond_1
    invoke-static {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object p1

    return-object p1

    .line 344
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Parameter #0 type for factory method ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") not suitable, must be java.lang.String"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsuitable method ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 357
    :cond_4
    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object p1

    return-object p1
.end method

.method static synthetic access$000()[Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;
    .locals 1

    .line 26
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;->NO_DESERIALIZERS:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;

    return-object v0
.end method


# virtual methods
.method protected _addDeserializerConstructors(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    move-object/from16 v9, p4

    .line 853
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getConstructors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    .line 854
    invoke-virtual {v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {v9, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v7

    move-object/from16 v11, p3

    .line 859
    invoke-interface {v11, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v8

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 862
    invoke-virtual/range {v0 .. v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_handleSingleArgumentConstructor(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;ZZ)Z

    goto :goto_0

    :cond_1
    if-nez v7, :cond_2

    if-nez v8, :cond_2

    goto :goto_0

    .line 880
    :cond_2
    new-array v2, v0, [Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v19, v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v4, v0, :cond_7

    .line 882
    invoke-virtual {v6, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v15

    if-nez v15, :cond_3

    move-object/from16 v16, v3

    goto :goto_2

    .line 883
    :cond_3
    invoke-virtual {v9, v15}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    .line 884
    :goto_2
    invoke-virtual {v9, v15}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v16, :cond_4

    .line 885
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move/from16 v16, v4

    .line 887
    invoke-virtual/range {v12 .. v18}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v12

    aput-object v12, v2, v4

    goto :goto_3

    :cond_4
    move-object/from16 v17, v15

    if-eqz v18, :cond_5

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, v16

    move/from16 v16, v4

    .line 890
    invoke-virtual/range {v12 .. v18}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v12

    aput-object v12, v2, v4

    goto :goto_3

    :cond_5
    if-nez v19, :cond_6

    move-object/from16 v19, v17

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    if-nez v7, :cond_9

    if-gtz v5, :cond_9

    if-lez v8, :cond_8

    goto :goto_4

    :cond_8
    move-object/from16 v3, p5

    goto/16 :goto_0

    :cond_9
    :goto_4
    add-int v3, v5, v8

    if-ne v3, v0, :cond_a

    move-object/from16 v3, p5

    .line 900
    invoke-virtual {v3, v6, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    goto/16 :goto_0

    :cond_a
    if-nez v5, :cond_b

    add-int/2addr v8, v1

    if-ne v8, v0, :cond_b

    .line 904
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delegated constructor with Injectables not yet supported (see [JACKSON-712]) for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Argument #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of constructor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no property name annotation; must have name when multiple-paramater constructor annotated as Creator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method

.method protected _addDeserializerFactoryMethods(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    move-object/from16 v8, p4

    .line 976
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 977
    invoke-virtual {v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 981
    :cond_0
    invoke-virtual {v8, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v7

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 984
    invoke-virtual {v6, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v1

    .line 985
    invoke-virtual {v8, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v3

    .line 986
    invoke-virtual {v8, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v3, :cond_1

    .line 988
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 989
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_handleSingleArgumentFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;Z)Z

    goto :goto_0

    .line 997
    :cond_2
    invoke-virtual {v8, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 1002
    :cond_3
    new-array v1, v0, [Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    :goto_1
    if-ge v2, v0, :cond_7

    .line 1004
    invoke-virtual {v6, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v15

    .line 1005
    invoke-virtual {v8, v15}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v13

    .line 1006
    invoke-virtual {v8, v15}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v13, :cond_4

    .line 1008
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    if-eqz v16, :cond_6

    :cond_5
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move v14, v2

    .line 1011
    invoke-virtual/range {v10 .. v16}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1009
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument #"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of factory method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no property name annotation; must have when multiple-paramater static method annotated as Creator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v0, p5

    .line 1013
    invoke-virtual {v0, v6, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method protected _findCustomArrayDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 368
    invoke-interface/range {v2 .. v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;->findArrayDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _findCustomBeanDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 482
    invoke-interface/range {v2 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;->findBeanDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _findCustomCollectionDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    move-object v0, p0

    .line 384
    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 385
    invoke-interface/range {v3 .. v10}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;->findCollectionDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected _findCustomCollectionLikeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    move-object v0, p0

    .line 401
    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 402
    invoke-interface/range {v3 .. v10}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;->findCollectionLikeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected _findCustomEnumDeserializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;

    .line 417
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;->findEnumDeserializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _findCustomMapDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    move-object v0, p0

    .line 433
    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 434
    invoke-interface/range {v3 .. v11}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;->findMapDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected _findCustomMapLikeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    move-object v0, p0

    .line 451
    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    .line 452
    invoke-interface/range {v3 .. v11}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;->findMapLikeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected _findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;

    .line 467
    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;->findTreeNodeDeserializer(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _handleSingleArgumentConstructor(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;ZZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;",
            "ZZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p3, 0x0

    .line 923
    invoke-virtual {p6, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getParameter(I)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    move-result-object v5

    .line 924
    invoke-virtual {p4, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v3

    .line 925
    invoke-virtual {p4, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v6

    const/4 p4, 0x1

    if-nez v6, :cond_11

    if-eqz v3, :cond_0

    .line 927
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_3

    .line 936
    :cond_0
    invoke-virtual {p6, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getParameterClass(I)Ljava/lang/Class;

    move-result-object p1

    .line 937
    const-class p2, Ljava/lang/String;

    if-ne p1, p2, :cond_3

    if-nez p7, :cond_1

    if-eqz p8, :cond_2

    .line 939
    :cond_1
    invoke-virtual {p5, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addStringCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    :cond_2
    return p4

    .line 943
    :cond_3
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_e

    const-class p2, Ljava/lang/Integer;

    if-ne p1, p2, :cond_4

    goto :goto_2

    .line 949
    :cond_4
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_b

    const-class p2, Ljava/lang/Long;

    if-ne p1, p2, :cond_5

    goto :goto_1

    .line 955
    :cond_5
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_8

    const-class p2, Ljava/lang/Double;

    if-ne p1, p2, :cond_6

    goto :goto_0

    :cond_6
    if-eqz p7, :cond_7

    .line 964
    invoke-virtual {p5, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    return p4

    :cond_7
    return p3

    :cond_8
    :goto_0
    if-nez p7, :cond_9

    if-eqz p8, :cond_a

    .line 957
    :cond_9
    invoke-virtual {p5, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addDoubleCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    :cond_a
    return p4

    :cond_b
    :goto_1
    if-nez p7, :cond_c

    if-eqz p8, :cond_d

    .line 951
    :cond_c
    invoke-virtual {p5, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addLongCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    :cond_d
    return p4

    :cond_e
    :goto_2
    if-nez p7, :cond_f

    if-eqz p8, :cond_10

    .line 945
    :cond_f
    invoke-virtual {p5, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addIntCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    :cond_10
    return p4

    :cond_11
    :goto_3
    new-array p7, p4, [Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 930
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructCreatorProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object p1

    aput-object p1, p7, p3

    .line 931
    invoke-virtual {p5, p6, p7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V

    return p4
.end method

.method protected _handleSingleArgumentFactory(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1023
    invoke-virtual {p6, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object p2

    .line 1025
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2

    if-nez p7, :cond_0

    .line 1026
    invoke-interface {p3, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1027
    :cond_0
    invoke-virtual {p5, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addStringCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    :cond_1
    return v1

    .line 1031
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_11

    const-class v0, Ljava/lang/Integer;

    if-ne p2, v0, :cond_3

    goto :goto_3

    .line 1037
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_e

    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_4

    goto :goto_2

    .line 1043
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_b

    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_5

    goto :goto_1

    .line 1049
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_8

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_6

    goto :goto_0

    .line 1055
    :cond_6
    invoke-virtual {p4, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1056
    invoke-virtual {p5, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    return v1

    :cond_7
    return p1

    :cond_8
    :goto_0
    if-nez p7, :cond_9

    .line 1050
    invoke-interface {p3, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1051
    :cond_9
    invoke-virtual {p5, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    :cond_a
    return v1

    :cond_b
    :goto_1
    if-nez p7, :cond_c

    .line 1044
    invoke-interface {p3, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1045
    :cond_c
    invoke-virtual {p5, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addDoubleCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    :cond_d
    return v1

    :cond_e
    :goto_2
    if-nez p7, :cond_f

    .line 1038
    invoke-interface {p3, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1039
    :cond_f
    invoke-virtual {p5, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addLongCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    :cond_10
    return v1

    :cond_11
    :goto_3
    if-nez p7, :cond_12

    .line 1032
    invoke-interface {p3, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;->isCreatorVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1033
    :cond_12
    invoke-virtual {p5, p6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->addIntCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V

    :cond_13
    return v1
.end method

.method protected _mapAbstractType2(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 646
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->hasAbstractTypeResolvers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/AbstractTypeResolver;

    .line 649
    invoke-virtual {v2, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AbstractTypeResolver;->findTypeMapping(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 650
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v0, :cond_0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected addBeanProps(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1109
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findProperties()Ljava/util/List;

    move-result-object v0

    .line 1111
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 1114
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findIgnoreUnknownProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1116
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1117
    invoke-virtual {p3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setIgnoreUnknownProperties(Z)V

    .line 1121
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    .line 1122
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1123
    invoke-virtual {p3, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_0

    .line 1125
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findAnySetter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1132
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getIgnoredPropertyNames()Ljava/util/Set;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getIgnoredPropertyNamesForDeser()Ljava/util/Set;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_3

    .line 1135
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1138
    invoke-virtual {p3, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_2

    .line 1142
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1145
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 1146
    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1147
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    .line 1154
    :cond_5
    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->hasConstructorParameter()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1156
    invoke-virtual {p3, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addCreatorProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;)V

    goto :goto_3

    .line 1160
    :cond_6
    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->hasSetter()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1161
    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getSetter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v5

    const/4 v7, 0x0

    .line 1163
    invoke-virtual {v5, v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v7

    .line 1164
    invoke-virtual {p0, p1, p2, v7, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->isIgnorableType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1166
    invoke-virtual {p3, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_3

    .line 1169
    :cond_7
    invoke-virtual {p0, p1, p2, v6, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1171
    invoke-virtual {p3, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_3

    .line 1175
    :cond_8
    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->hasField()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1176
    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getField()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    move-result-object v5

    .line 1178
    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;->getRawType()Ljava/lang/Class;

    move-result-object v7

    .line 1179
    invoke-virtual {p0, p1, p2, v7, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->isIgnorableType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1181
    invoke-virtual {p3, v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_3

    .line 1184
    :cond_9
    invoke-virtual {p0, p1, p2, v6, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1186
    invoke-virtual {p3, v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_3

    :cond_a
    if-eqz v2, :cond_b

    .line 1192
    invoke-virtual {p0, p1, p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructAnySetter(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableAnyProperty;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setAnySetter(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableAnyProperty;)V

    .line 1201
    :cond_b
    sget-object v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->USE_GETTERS_AS_SETTERS:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1207
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;

    .line 1208
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->hasGetter()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1209
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1210
    invoke-virtual {p3, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_4

    .line 1213
    :cond_d
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanPropertyDefinition;->getGetter()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v2

    .line 1215
    invoke-virtual {v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v4

    .line 1216
    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_e

    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1217
    :cond_e
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p3, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->hasProperty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1218
    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSetterlessProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_4

    :cond_f
    return-void
.end method

.method protected addInjectables(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1263
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findInjectables()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1265
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p1

    .line 1266
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1267
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

    if-eqz p1, :cond_0

    .line 1269
    invoke-virtual {v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 1271
    :cond_0
    invoke-virtual {v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->resolveType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v3, p3

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addInjectable(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected addReferenceProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1237
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findBackReferenceProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1239
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 1242
    instance-of v3, v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v3, :cond_0

    .line 1243
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addBackReferenceProperty(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 1246
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {p0, p1, p2, v3, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addBackReferenceProperty(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public buildBeanDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 696
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->findValueInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v0

    .line 698
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->canInstantiate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/AbstractDeserializer;

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/AbstractDeserializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)V

    return-object p1

    .line 704
    :cond_0
    invoke-virtual {p0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object p2

    .line 705
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setValueInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    .line 707
    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->addBeanProps(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 709
    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->addReferenceProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 710
    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->addInjectables(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 713
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 715
    invoke-virtual {v1, p1, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;->updateBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object p2

    goto :goto_0

    .line 718
    :cond_1
    invoke-virtual {p2, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->build(Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p2

    .line 721
    iget-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 722
    iget-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 723
    invoke-virtual {v0, p1, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p2

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method public buildThrowableDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 736
    invoke-virtual {p0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object p2

    .line 737
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->findValueInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->setValueInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;)V

    .line 739
    invoke-virtual {p0, p1, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->addBeanProps(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V

    .line 746
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    const-string v1, "initCause"

    invoke-virtual {p3, v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "cause"

    .line 748
    invoke-virtual {p0, p1, p3, v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 754
    invoke-virtual {p2, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addOrReplaceProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;Z)V

    :cond_0
    const-string v0, "localizedMessage"

    .line 759
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    const-string v0, "message"

    .line 763
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    const-string v0, "suppressed"

    .line 765
    invoke-virtual {p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 770
    invoke-virtual {v1, p1, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;->updateBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    move-result-object p2

    goto :goto_0

    .line 773
    :cond_1
    invoke-virtual {p2, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->build(Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p2

    .line 778
    instance-of p4, p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializer;

    if-eqz p4, :cond_2

    .line 779
    new-instance p4, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ThrowableDeserializer;

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializer;

    invoke-direct {p4, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ThrowableDeserializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializer;)V

    move-object p2, p4

    .line 783
    :cond_2
    iget-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->hasDeserializerModifiers()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 784
    iget-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 785
    invoke-virtual {v0, p1, p3, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p2

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method protected constructAnySetter(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableAnyProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1286
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 1290
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 1291
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, v0

    .line 1292
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->resolveType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    .line 1299
    invoke-virtual {p0, p1, p3, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1301
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableAnyProperty;

    invoke-direct {p1, v0, p3, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object p1

    .line 1306
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p3, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 1307
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableAnyProperty;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p3, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object p2
.end method

.method protected constructBeanDeserializerBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .locals 1

    .line 806
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)V

    return-object v0
.end method

.method protected constructCreatorProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;ILcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v12, p5

    .line 1073
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->getTypeFactory()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getParameterType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v9

    .line 1074
    new-instance v10, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    move-result-object v0

    invoke-direct {v10, v8, v9, v0, v12}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v9

    move-object/from16 v4, p5

    move-object v5, v10

    .line 1075
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->resolveType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    if-eq v0, v9, :cond_0

    .line 1077
    invoke-virtual {v10, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->withType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v10

    .line 1080
    :cond_0
    invoke-virtual {p0, v7, v12, v10}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 1082
    invoke-virtual {p0, v7, v12, v0, v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v9

    .line 1085
    invoke-virtual {v9}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    if-nez v0, :cond_1

    .line 1088
    invoke-virtual {p0, v7, v9, v10}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    move-result-object v0

    :cond_1
    move-object v10, v0

    .line 1090
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    move-result-object v11

    move-object v7, v0

    move-object/from16 v8, p3

    move-object/from16 v12, p5

    move/from16 v13, p4

    move-object/from16 v14, p6

    invoke-direct/range {v7 .. v14}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;ILjava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 1093
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method protected constructDefaultValueInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 819
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    .line 820
    new-instance v7, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;

    invoke-direct {v7, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Z)V

    .line 821
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v8

    .line 825
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;->getType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isConcrete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findDefaultConstructor()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 831
    :cond_0
    invoke-virtual {v7, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->setDefaultConstructor(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)V

    .line 836
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getDefaultVisibilityChecker()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    .line 837
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, v8

    move-object v6, v7

    .line 842
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_addDeserializerFactoryMethods(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;)V

    .line 843
    invoke-virtual/range {v1 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_addDeserializerConstructors(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;)V

    .line 845
    invoke-virtual {v7, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorCollector;->constructValueInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object p1

    return-object p1
.end method

.method protected constructSettableProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1363
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    invoke-virtual {p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 1366
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    invoke-virtual {p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 1367
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    move-result-object v2

    invoke-direct {v1, p3, v0, v2, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p4

    move-object v7, v1

    .line 1368
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->resolveType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    if-eq v2, v0, :cond_1

    .line 1371
    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->withType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v1

    .line 1376
    :cond_1
    invoke-virtual {p0, p1, p4, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 1377
    invoke-virtual {p0, p1, p4, v2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 1378
    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    .line 1379
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    move-result-object v7

    move-object v3, v1

    move-object v4, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;)V

    if-eqz v0, :cond_2

    .line 1382
    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    .line 1385
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1386
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isManagedReference()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1387
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->setManagedReferenceName(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method protected constructSettableProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1326
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    invoke-virtual {p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 1331
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterType(I)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 1332
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    move-result-object v2

    invoke-direct {v1, p3, v0, v2, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p4

    move-object v7, v1

    .line 1333
    invoke-virtual/range {v2 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->resolveType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    if-eq v2, v0, :cond_1

    .line 1336
    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->withType(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;

    move-result-object v1

    .line 1342
    :cond_1
    invoke-virtual {p0, p1, p4, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v0

    .line 1343
    invoke-virtual {p0, p1, p4, v2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 1344
    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    .line 1345
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    move-result-object v7

    move-object v3, v1

    move-object v4, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    if-eqz v0, :cond_2

    .line 1348
    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v1

    .line 1351
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1352
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->isManagedReference()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1353
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->setManagedReferenceName(Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method protected constructSetterlessProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 1404
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->fixAccess()V

    .line 1408
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getType(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 1412
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    move-result-object v2

    invoke-direct {v1, p3, v0, v2, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 1414
    invoke-virtual {p0, p1, p4, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    .line 1415
    invoke-virtual {p0, p1, p4, v0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v4

    .line 1416
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    .line 1417
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassAnnotations()Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    move-result-object v6

    move-object v2, p1

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V

    if-eqz v1, :cond_1

    .line 1420
    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public createBeanDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 582
    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->mapAbstractType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 587
    :cond_0
    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->introspect(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 588
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 593
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, p3, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    .line 594
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 596
    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->introspect(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    move-object p3, v1

    :cond_2
    move-object v3, p0

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    move-object v7, v0

    move-object v8, p4

    .line 599
    invoke-virtual/range {v3 .. v8}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_findCustomBeanDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    .line 607
    :cond_3
    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isThrowable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 608
    invoke-virtual {p0, p1, p3, v0, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->buildThrowableDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 613
    :cond_4
    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isAbstract()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 615
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->materializeAbstractType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 620
    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->introspect(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 621
    invoke-virtual {p0, p1, v1, p2, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1

    .line 626
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->findStdBeanDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p2

    if-eqz p2, :cond_6

    return-object p2

    .line 632
    :cond_6
    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_7

    return-object v2

    .line 636
    :cond_7
    invoke-virtual {p0, p1, p3, v0, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public createKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->hasKeyDeserializers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 300
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->keyDeserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializers;

    .line 301
    invoke-interface {v2, p2, p1, v0, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializers;->findKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 309
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 310
    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_5

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 314
    :cond_2
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->_keyDeserializers:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;

    if-eqz v0, :cond_3

    return-object v0

    .line 319
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_createEnumKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object p1

    return-object p1

    .line 323
    :cond_4
    invoke-static {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->findStringBasedKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object p1

    return-object p1

    .line 311
    :cond_5
    :goto_0
    invoke-static {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializers;->constructStringKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public findValueInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 534
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 535
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findValueInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 537
    instance-of v2, v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    if-eqz v2, :cond_0

    .line 538
    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    goto :goto_0

    .line 540
    :cond_0
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 543
    check-cast v1, Ljava/lang/Class;

    .line 544
    const-class v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    invoke-virtual {p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->valueInstantiatorInstance(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v1

    goto :goto_0

    .line 545
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid instantiator Class<?> returned for type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not a ValueInstantiator"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 541
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value instantiator returned for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": neither a Class nor ValueInstantiator"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 553
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->constructDefaultValueInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v1

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->hasValueInstantiators()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 558
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->valueInstantiators()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiators;

    .line 559
    invoke-interface {v2, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiators;->findValueInstantiator(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 562
    :cond_4
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Broken registered ValueInstantiators (of type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "): returned null ValueInstantiator"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object v1
.end method

.method public final getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    return-object v0
.end method

.method protected isIgnorableType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1465
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_0

    .line 1467
    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 1468
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->getAnnotationIntrospector()Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1471
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1474
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1441
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ") as a Bean"

    const-string v2, " (of type "

    const-string v3, "Can not deserialize Class "

    if-nez v0, :cond_2

    .line 1445
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1451
    invoke-static {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->isLocalType(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    return v0

    .line 1453
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1446
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not deserialize Proxy class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a Bean"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1443
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public mapAbstractType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 505
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_mapAbstractType2(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 513
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 514
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 515
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p2, v0

    goto :goto_0

    .line 516
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid abstract type resolution from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": latter is not a subtype of former"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected materializeAbstractType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 662
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;->getType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    .line 667
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/AbstractTypeResolver;

    .line 668
    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AbstractTypeResolver;->resolveAbstractType(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 277
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;

    if-ne v0, v1, :cond_1

    .line 282
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)V

    return-object v0

    .line 278
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subtype of BeanDeserializerFactory ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has not properly overridden method \'withAdditionalDeserializers\': can not instantiate subtype with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "additional deserializer definitions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
