.class public final synthetic Lorg/reflections/util/NameHelper$-CC;
.super Ljava/lang/Object;
.source "NameHelper.java"


# direct methods
.method public static varargs $default$forClass(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 6
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 76
    sget-object v0, Lorg/reflections/util/NameHelper;->primitiveNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    sget-object p2, Lorg/reflections/util/NameHelper;->primitiveTypes:Ljava/util/List;

    sget-object v0, Lorg/reflections/util/NameHelper;->primitiveNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_0
    const-string v0, "["

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 82
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "]"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 84
    sget-object v1, Lorg/reflections/util/NameHelper;->primitiveNames:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    sget-object v1, Lorg/reflections/util/NameHelper;->primitiveDescriptors:Ljava/util/List;

    sget-object v4, Lorg/reflections/util/NameHelper;->primitiveNames:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "L"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    :cond_2
    invoke-static {p2}, Lorg/reflections/util/ClasspathHelper;->classLoaders([Ljava/lang/ClassLoader;)[Ljava/lang/ClassLoader;

    move-result-object p2

    array-length v1, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    aget-object v4, p2, v3

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    :try_start_0
    invoke-static {p1, v2, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 99
    :catchall_0
    :cond_3
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public static varargs $default$forConstructor(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Constructor;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/reflections/ReflectionsException;
        }
    .end annotation

    .line 156
    const-class v0, Ljava/lang/reflect/Constructor;

    invoke-interface {p0, p1, v0, p2}, Lorg/reflections/util/NameHelper;->forElement(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/AnnotatedElement;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Constructor;

    return-object p1
.end method

.method public static $default$forElement(Lorg/reflections/util/NameHelper;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/AnnotatedElement;
    .locals 0
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 145
    invoke-interface {p0, p1, p3}, Lorg/reflections/util/NameHelper;->forMember(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Member;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static varargs $default$forField(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Field;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;

    .line 161
    const-class v0, Ljava/lang/reflect/Field;

    invoke-interface {p0, p1, v0, p2}, Lorg/reflections/util/NameHelper;->forElement(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/AnnotatedElement;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    return-object p1
.end method

.method public static varargs $default$forMember(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Member;
    .locals 5
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/reflections/ReflectionsException;
        }
    .end annotation

    const/16 v0, 0x28

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 108
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x29

    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    const/16 v2, 0x2e

    .line 111
    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 112
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    .line 113
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    const-string v3, ","

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lorg/reflections/util/-$$Lambda$NameHelper$Iq_uMFPnzjMTe-_AOFGikVeXi34;

    invoke-direct {v3, p0, p2}, Lorg/reflections/util/-$$Lambda$NameHelper$Iq_uMFPnzjMTe-_AOFGikVeXi34;-><init>(Lorg/reflections/util/NameHelper;[Ljava/lang/ClassLoader;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lorg/reflections/util/-$$Lambda$NameHelper$VRABwk47Unyio2zw0_NTw9T_oik;->INSTANCE:Lorg/reflections/util/-$$Lambda$NameHelper$VRABwk47Unyio2zw0_NTw9T_oik;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    goto :goto_2

    :cond_2
    move-object v0, v4

    .line 123
    :goto_2
    :try_start_0
    invoke-interface {p0, v1, p2}, Lorg/reflections/util/NameHelper;->forClass(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    if-eqz p2, :cond_8

    :try_start_1
    const-string v1, "("

    .line 129
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 130
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    goto :goto_4

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    :goto_4
    return-object p1

    :cond_4
    const-string v1, "init>"

    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 132
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    goto :goto_5

    :cond_5
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    :goto_5
    return-object p1

    .line 134
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_6

    :cond_7
    invoke-virtual {p2, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_6
    return-object p1

    .line 137
    :catch_0
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_3

    :catch_1
    :cond_8
    return-object v4
.end method

.method public static varargs $default$forMethod(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/reflections/ReflectionsException;
        }
    .end annotation

    .line 152
    const-class v0, Ljava/lang/reflect/Method;

    invoke-interface {p0, p1, v0, p2}, Lorg/reflections/util/NameHelper;->forElement(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/AnnotatedElement;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Method;

    return-object p1
.end method

.method public static varargs $default$forName(Lorg/reflections/util/NameHelper;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 65
    const-class v0, Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p3}, Lorg/reflections/util/NameHelper;->forClass(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/reflect/Constructor;

    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0, p1, p3}, Lorg/reflections/util/NameHelper;->forConstructor(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/reflect/Method;

    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0, p1, p3}, Lorg/reflections/util/NameHelper;->forMethod(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-class v0, Ljava/lang/reflect/Field;

    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0, p1, p3}, Lorg/reflections/util/NameHelper;->forField(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Field;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-class v0, Ljava/lang/reflect/Member;

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0, p1, p3}, Lorg/reflections/util/NameHelper;->forMember(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Member;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static varargs $default$forNames(Lorg/reflections/util/NameHelper;Ljava/util/Collection;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/util/Collection;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 165
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/reflections/util/-$$Lambda$NameHelper$QxkhVPrzMy8MAgw-BwMqToDnNr8;

    invoke-direct {v0, p0, p2, p3}, Lorg/reflections/util/-$$Lambda$NameHelper$QxkhVPrzMy8MAgw-BwMqToDnNr8;-><init>(Lorg/reflections/util/NameHelper;Ljava/lang/Class;[Ljava/lang/ClassLoader;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/reflections/util/-$$Lambda$wemGins1JBTOa6vBYK6EDLxj9Ys;->INSTANCE:Lorg/reflections/util/-$$Lambda$wemGins1JBTOa6vBYK6EDLxj9Ys;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;->INSTANCE:Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;

    invoke-static {p2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public static $default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[]"

    invoke-static {v0, p1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, p1}, L$r8$backportedMethods$utility$String$2$joinIterable;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static $default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;
    .locals 2
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    invoke-interface {p0, p1}, Lorg/reflections/util/NameHelper;->toName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-interface {p0, p1}, Lorg/reflections/util/NameHelper;->toName(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-interface {p0, p1}, Lorg/reflections/util/NameHelper;->toName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-interface {p0, p1}, Lorg/reflections/util/NameHelper;->toName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static $default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 3
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/reflections/util/NameHelper;->toNames([Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Collection;

    move-result-object p1

    const-string v1, ", "

    invoke-static {v1, p1}, L$r8$backportedMethods$utility$String$2$joinIterable;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s.<init>(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static $default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s.%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static $default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/reflections/util/NameHelper;->toNames([Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Collection;

    move-result-object p1

    const-string v1, ", "

    invoke-static {v1, p1}, L$r8$backportedMethods$utility$String$2$joinIterable;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "%s.%s(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static $default$toNames(Lorg/reflections/util/NameHelper;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/reflections/util/-$$Lambda$L738XzsFxtxEHAo70ZGcpstd_Vs;

    invoke-direct {v0, p0}, Lorg/reflections/util/-$$Lambda$L738XzsFxtxEHAo70ZGcpstd_Vs;-><init>(Lorg/reflections/util/NameHelper;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lorg/reflections/util/-$$Lambda$ysW_fvT8H1f4ly8te8Kd64ujJxw;->INSTANCE:Lorg/reflections/util/-$$Lambda$ysW_fvT8H1f4ly8te8Kd64ujJxw;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public static varargs $default$toNames(Lorg/reflections/util/NameHelper;[Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Collection;
    .locals 0
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/reflections/util/NameHelper;->toNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$forMember$0(Lorg/reflections/util/NameHelper;[Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;

    .line 118
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lorg/reflections/util/NameHelper;->forClass(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$forMember$1(I)[Ljava/lang/Class;
    .locals 0

    .line 118
    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic lambda$forNames$2(Lorg/reflections/util/NameHelper;Ljava/lang/Class;[Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p0, "_this"    # Lorg/reflections/util/NameHelper;

    .line 165
    invoke-interface {p0, p3, p1, p2}, Lorg/reflections/util/NameHelper;->forName(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
