.class public Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;
.super Ljava/lang/Object;
.source "BeanPropertyWriter.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/BeanProperty;


# instance fields
.field protected final _accessorMethod:Ljava/lang/reflect/Method;

.field protected final _cfgSerializationType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected final _contextAnnotations:Lcom/amazon/org/codehaus/jackson/map/util/Annotations;

.field protected final _declaredType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected _dynamicSerializers:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

.field protected final _field:Ljava/lang/reflect/Field;

.field protected _includeInViews:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected _internalSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _member:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

.field protected final _name:Lcom/amazon/org/codehaus/jackson/io/SerializedString;

.field protected _nonTrivialBaseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected final _serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _suppressNulls:Z

.field protected final _suppressableValue:Ljava/lang/Object;

.field protected _typeSerializer:Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/org/codehaus/jackson/io/SerializedString;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/amazon/org/codehaus/jackson/map/util/Annotations;",
            "Lcom/amazon/org/codehaus/jackson/io/SerializedString;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 178
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_contextAnnotations:Lcom/amazon/org/codehaus/jackson/map/util/Annotations;

    .line 179
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/amazon/org/codehaus/jackson/io/SerializedString;

    .line 180
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_declaredType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 181
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-nez p5, :cond_0

    .line 182
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->emptyMap()Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 183
    iput-object p6, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    .line 184
    iput-object p7, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 185
    iput-object p8, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    .line 186
    iput-object p9, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    .line 187
    iput-boolean p10, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressNulls:Z

    .line 188
    iput-object p11, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/map/util/Annotations;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/amazon/org/codehaus/jackson/map/util/Annotations;",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 167
    new-instance v3, Lcom/amazon/org/codehaus/jackson/io/SerializedString;

    move-object v0, p3

    invoke-direct {v3, p3}, Lcom/amazon/org/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/org/codehaus/jackson/io/SerializedString;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 1

    .line 196
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    .line 206
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    .line 207
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_contextAnnotations:Lcom/amazon/org/codehaus/jackson/map/util/Annotations;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_contextAnnotations:Lcom/amazon/org/codehaus/jackson/map/util/Annotations;

    .line 208
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_declaredType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_declaredType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 209
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    .line 210
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    .line 212
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 213
    new-instance p2, Ljava/util/HashMap;

    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    .line 215
    :cond_0
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/amazon/org/codehaus/jackson/io/SerializedString;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/amazon/org/codehaus/jackson/io/SerializedString;

    .line 216
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 217
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 218
    iget-boolean p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressNulls:Z

    iput-boolean p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressNulls:Z

    .line 219
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    .line 220
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;

    .line 221
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    .line 222
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-void
.end method


# virtual methods
.method protected _findAndAddDynamic(Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p3, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->constructSpecializedType(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    .line 461
    invoke-virtual {p1, p2, p3, p0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p2

    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {p1, p2, p3, p0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->findAndAddSerializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object p2

    .line 466
    :goto_0
    iget-object p3, p2, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    if-eq p1, p3, :cond_1

    .line 467
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 469
    :cond_1
    iget-object p1, p2, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-object p1
.end method

.method protected _reportSelfReference(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 491
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    const-string v0, "Direct self-reference leading to cycle"

    invoke-direct {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 483
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_contextAnnotations:Lcom/amazon/org/codehaus/jackson/map/util/Annotations;

    invoke-interface {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/Annotations;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getGenericPropertyType()Ljava/lang/reflect/Type;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInternalSetting(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 320
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMember()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_member:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/amazon/org/codehaus/jackson/io/SerializedString;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getRawSerializationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSerializationType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_cfgSerializationType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getSerializedName()Lcom/amazon/org/codehaus/jackson/io/SerializedString;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/amazon/org/codehaus/jackson/io/SerializedString;

    return-object v0
.end method

.method public getSerializer()Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-object v0
.end method

.method public getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_declaredType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getViews()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;

    return-object v0
.end method

.method public hasSerializer()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeInternalSetting(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 351
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    :cond_0
    move-object v1, p1

    :cond_1
    return-object v1
.end method

.method public serializeAsField(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 418
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 421
    iget-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressNulls:Z

    if-nez p1, :cond_0

    .line 422
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/amazon/org/codehaus/jackson/io/SerializedString;

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeFieldName(Lcom/amazon/org/codehaus/jackson/io/SerializedString;)V

    .line 423
    invoke-virtual {p3, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeNull(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    :cond_0
    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    .line 429
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_reportSelfReference(Ljava/lang/Object;)V

    .line 431
    :cond_2
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_suppressableValue:Ljava/lang/Object;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 435
    :cond_3
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-nez p1, :cond_5

    .line 437
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 438
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_dynamicSerializers:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    .line 439
    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v2

    if-nez v2, :cond_4

    .line 441
    invoke-virtual {p0, v1, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_findAndAddDynamic(Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 444
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_name:Lcom/amazon/org/codehaus/jackson/io/SerializedString;

    invoke-virtual {p2, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeFieldName(Lcom/amazon/org/codehaus/jackson/io/SerializedString;)V

    .line 445
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_typeSerializer:Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    if-nez v1, :cond_6

    .line 446
    invoke-virtual {p1, v0, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_1

    .line 448
    :cond_6
    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V

    :goto_1
    return-void
.end method

.method public setInternalSetting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_internalSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setNonTrivialBaseType(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_nonTrivialBaseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-void
.end method

.method public setViews([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_includeInViews:[Ljava/lang/Class;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "property \'"

    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    const-string v2, "#"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "via method "

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_accessorMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "field \""

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-nez v1, :cond_1

    const-string v1, ", no static serializer"

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 507
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", static serializer of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0x29

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrappingWriter()Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 1

    .line 246
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/UnwrappingBeanPropertyWriter;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    return-object v0
.end method

.method public withSerializer(Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    if-ne v0, v1, :cond_0

    .line 236
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0

    .line 234
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BeanPropertyWriter sub-class does not override \'withSerializer()\'; needs to!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
