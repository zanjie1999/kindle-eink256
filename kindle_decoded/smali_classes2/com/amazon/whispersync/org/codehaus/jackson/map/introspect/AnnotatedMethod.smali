.class public final Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
.source "AnnotatedMethod.java"


# instance fields
.field protected final _method:Ljava/lang/reflect/Method;

.field protected _paramTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)V
    .locals 0

    .line 25
    invoke-direct {p0, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 101
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotated()Ljava/lang/reflect/Method;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

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

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " params)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

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

    .line 149
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 150
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getParameterClasses()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_paramTypes:[Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_paramTypes:[Ljava/lang/Class;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_paramTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public getParameterCount()I
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getParameterType(I)Ljava/lang/reflect/Type;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 157
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getParameterTypes()[Ljava/lang/reflect/Type;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
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

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getType(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeBindings;[Ljava/lang/reflect/TypeVariable;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, ": "

    const-string v1, "Failed to setValue() with method "

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 126
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 123
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", annotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->withAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object p1

    return-object p1
.end method

.method public withAnnotations(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3

    .line 42
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0
.end method

.method public withMethod(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;
    .locals 3

    .line 37
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->_annotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;-><init>(Ljava/lang/reflect/Method;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;[Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotationMap;)V

    return-object v0
.end method
