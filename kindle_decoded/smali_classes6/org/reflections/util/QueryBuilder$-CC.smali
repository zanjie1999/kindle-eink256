.class public final synthetic Lorg/reflections/util/QueryBuilder$-CC;
.super Ljava/lang/Object;
.source "QueryBuilder.java"


# direct methods
.method public static $default$get(Lorg/reflections/util/QueryBuilder;Ljava/lang/String;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/QueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/reflections/util/-$$Lambda$QueryBuilder$gax1lNPoP96p62rBTVWCyuep9Gk;

    invoke-direct {v0, p0, p1}, Lorg/reflections/util/-$$Lambda$QueryBuilder$gax1lNPoP96p62rBTVWCyuep9Gk;-><init>(Lorg/reflections/util/QueryBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public static $default$getAll(Lorg/reflections/util/QueryBuilder;Ljava/util/Collection;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/QueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lorg/reflections/util/QueryFunction$-CC;->set(Ljava/util/Collection;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    new-instance v0, Lorg/reflections/util/-$$Lambda$ohA-gUSHiLqo_TzPvsn6O1Er6dY;

    invoke-direct {v0, p0}, Lorg/reflections/util/-$$Lambda$ohA-gUSHiLqo_TzPvsn6O1Er6dY;-><init>(Lorg/reflections/util/QueryBuilder;)V

    invoke-interface {p1, v0}, Lorg/reflections/util/QueryFunction;->getAll(Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public static $default$of(Lorg/reflections/util/QueryBuilder;Lorg/reflections/util/QueryFunction;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/QueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reflections/util/QueryFunction;",
            ")",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "TT;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/reflections/util/-$$Lambda$ohA-gUSHiLqo_TzPvsn6O1Er6dY;

    invoke-direct {v0, p0}, Lorg/reflections/util/-$$Lambda$ohA-gUSHiLqo_TzPvsn6O1Er6dY;-><init>(Lorg/reflections/util/QueryBuilder;)V

    invoke-interface {p1, v0}, Lorg/reflections/util/QueryFunction;->getAll(Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/reflections/util/QueryFunction;->add(Lorg/reflections/util/QueryFunction;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public static varargs $default$of(Lorg/reflections/util/QueryBuilder;[Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .param p0, "_this"    # Lorg/reflections/util/QueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-interface {p0, p1}, Lorg/reflections/util/NameHelper;->toNames([Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/reflections/util/QueryBuilder;->getAll(Ljava/util/Collection;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public static varargs $default$with(Lorg/reflections/util/QueryBuilder;[Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .param p0, "_this"    # Lorg/reflections/util/QueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-interface {p0, p1}, Lorg/reflections/util/QueryBuilder;->of([Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$get$0(Lorg/reflections/util/QueryBuilder;Ljava/lang/String;Lorg/reflections/Store;)Ljava/util/Set;
    .locals 3
    .param p0, "_this"    # Lorg/reflections/util/QueryBuilder;

    .line 21
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Lorg/reflections/util/QueryBuilder;->index()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
