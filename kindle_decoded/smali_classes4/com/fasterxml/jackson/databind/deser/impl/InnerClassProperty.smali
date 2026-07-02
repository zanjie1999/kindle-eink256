.class public final Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.source "InnerClassProperty.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

.field protected final transient _creator:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 45
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 46
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 67
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 68
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    .line 73
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object p2

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 74
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 56
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 57
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_1

    return-void

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing constructor (broken JDK (de)serialization?)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 109
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-eqz v0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 114
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 121
    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to instantiate class "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", problem: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 150
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;)V

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_delegate:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;

    move-result-object p1

    return-object p1
.end method

.method public withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;
    .locals 1

    .line 79
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;

    move-result-object p1

    return-object p1
.end method

.method public withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v0, :cond_0

    return-object p0

    .line 158
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;

    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;)V

    return-object v0
.end method
