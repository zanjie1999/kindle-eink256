.class public final Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
.super Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
.source "AnnotatedConstructor.java"


# instance fields
.field protected final _constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;",
            "[",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;-><init>(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    if-eqz p1, :cond_0

    .line 28
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null constructor not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final call1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotated()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getRawType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterClass(I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 87
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getParameterCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getParameterType(I)Ljava/lang/reflect/Type;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 94
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getType(Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;[Ljava/lang/reflect/TypeVariable;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 128
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot call setValue() on constructor of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[constructor for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", annotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withAnnotations(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->withAnnotations(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    move-result-object p1

    return-object p1
.end method

.method public withAnnotations(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;
    .locals 3

    .line 33
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;->_constructor:Ljava/lang/reflect/Constructor;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;-><init>(Ljava/lang/reflect/Constructor;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0
.end method
