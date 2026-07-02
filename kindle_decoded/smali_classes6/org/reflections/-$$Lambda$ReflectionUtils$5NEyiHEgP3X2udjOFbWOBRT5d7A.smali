.class public final synthetic Lorg/reflections/-$$Lambda$ReflectionUtils$5NEyiHEgP3X2udjOFbWOBRT5d7A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/reflections/util/QueryFunction;


# instance fields
.field private final synthetic f$0:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/-$$Lambda$ReflectionUtils$5NEyiHEgP3X2udjOFbWOBRT5d7A;->f$0:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public synthetic add(Lorg/reflections/util/QueryFunction;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reflections/util/QueryFunction<",
            "TC;TT;>;)",
            "Lorg/reflections/util/QueryFunction<",
            "TC;TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/QueryFunction$-CC;->$default$add(Lorg/reflections/util/QueryFunction;Lorg/reflections/util/QueryFunction;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lorg/reflections/util/QueryFunction$-CC;->$default$apply(Lorg/reflections/util/QueryFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/reflections/-$$Lambda$ReflectionUtils$5NEyiHEgP3X2udjOFbWOBRT5d7A;->f$0:Ljava/lang/Class;

    check-cast p1, Lorg/reflections/Store;

    invoke-static {v0, p1}, Lorg/reflections/ReflectionUtils;->lambda$null$10(Ljava/lang/Class;Lorg/reflections/Store;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic as(Ljava/lang/Class;[Ljava/lang/ClassLoader;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TR;>;[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lorg/reflections/util/QueryFunction<",
            "TC;TR;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/reflections/util/QueryFunction$-CC;->$default$as(Lorg/reflections/util/QueryFunction;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic asClass([Ljava/lang/ClassLoader;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lorg/reflections/util/QueryFunction<",
            "TC;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/QueryFunction$-CC;->$default$asClass(Lorg/reflections/util/QueryFunction;[Ljava/lang/ClassLoader;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public synthetic filter(Ljava/util/function/Predicate;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Lorg/reflections/util/QueryFunction<",
            "TC;TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/QueryFunction$-CC;->$default$filter(Lorg/reflections/util/QueryFunction;Ljava/util/function/Predicate;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forClass(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lorg/reflections/util/NameHelper$-CC;->$default$forClass(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forConstructor(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Constructor;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lorg/reflections/util/NameHelper$-CC;->$default$forConstructor(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forElement(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/AnnotatedElement;
    .locals 0
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

    invoke-static {p0, p1, p2, p3}, Lorg/reflections/util/NameHelper$-CC;->$default$forElement(Lorg/reflections/util/NameHelper;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/AnnotatedElement;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forField(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Field;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/reflections/util/NameHelper$-CC;->$default$forField(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forMember(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Member;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/reflections/ReflectionsException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/reflections/util/NameHelper$-CC;->$default$forMember(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Member;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forMethod(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/reflections/ReflectionsException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/reflections/util/NameHelper$-CC;->$default$forMethod(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forName(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2, p3}, Lorg/reflections/util/NameHelper$-CC;->$default$forName(Lorg/reflections/util/NameHelper;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forNames(Ljava/util/Collection;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/util/Collection;
    .locals 0
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

    invoke-static {p0, p1, p2, p3}, Lorg/reflections/util/NameHelper$-CC;->$default$forNames(Lorg/reflections/util/NameHelper;Ljava/util/Collection;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getAll(Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TT;",
            "Lorg/reflections/util/QueryFunction<",
            "TC;TT;>;>;)",
            "Lorg/reflections/util/QueryFunction<",
            "TC;TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/QueryFunction$-CC;->$default$getAll(Lorg/reflections/util/QueryFunction;Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getAll(Ljava/util/function/Function;Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "TT;",
            "Lorg/reflections/util/QueryFunction<",
            "TC;TR;>;>;",
            "Ljava/util/function/Function<",
            "TR;TT;>;)",
            "Lorg/reflections/util/QueryFunction<",
            "TC;TR;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/reflections/util/QueryFunction$-CC;->$default$getAll(Lorg/reflections/util/QueryFunction;Ljava/util/function/Function;Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public synthetic map(Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TR;>;)",
            "Lorg/reflections/util/QueryFunction<",
            "TC;TR;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/QueryFunction$-CC;->$default$map(Lorg/reflections/util/QueryFunction;Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toName(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toName(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toNames(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
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

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toNames(Lorg/reflections/util/NameHelper;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic toNames([Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Collection;
    .locals 0
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

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toNames(Lorg/reflections/util/NameHelper;[Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
