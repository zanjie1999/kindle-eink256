.class public final Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.super Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
.source "AnnotatedMethod.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final transient _method:Ljava/lang/reflect/Method;

.field protected _paramClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected _serialization:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, v0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 51
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    .line 52
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_serialization:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p3, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    if-eqz p2, :cond_0

    .line 41
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can not construct AnnotatedMethod with null Method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

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

    .line 110
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

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

    .line 115
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 237
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 238
    :cond_1
    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public bridge synthetic getAnnotated()Ljava/lang/reflect/AnnotatedElement;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotated()Ljava/lang/reflect/Method;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

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

    .line 125
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " params)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMember()Ljava/lang/reflect/Member;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Method;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameterCount()I
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 196
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    aget-object p1, v0, p1

    invoke-interface {v1, p1}, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public getRawParameterType(I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 190
    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getRawParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_paramClasses:[Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_paramClasses:[Ljava/lang/Class;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_paramClasses:[Ljava/lang/Class;

    return-object v0
.end method

.method public getRawReturnType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

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

    .line 100
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, ": "

    const-string v1, "Failed to getValue() with method "

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p1

    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public hasReturnType()Z
    .locals 2

    .line 214
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 215
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    const-class v1, Ljava/lang/Void;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_serialization:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;->clazz:Ljava/lang/Class;

    .line 254
    :try_start_0
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;->args:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 258
    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 260
    :cond_0
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 262
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find method \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_serialization:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;

    iget-object v3, v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' from Class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

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

    .line 139
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

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

    .line 136
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

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

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object p1

    return-object p1
.end method

.method public withAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 4

    .line 65
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0
.end method

.method public withMethod(Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 4

    .line 60
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->_annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->_paramAnnotations:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .line 248
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->_method:Ljava/lang/reflect/Method;

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;-><init>(Ljava/lang/reflect/Method;)V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod$Serialization;)V

    return-object v0
.end method
