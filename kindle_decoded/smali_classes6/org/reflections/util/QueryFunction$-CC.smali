.class public final synthetic Lorg/reflections/util/QueryFunction$-CC;
.super Ljava/lang/Object;
.source "QueryFunction.java"


# direct methods
.method public static $default$add(Lorg/reflections/util/QueryFunction;Lorg/reflections/util/QueryFunction;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;
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

    .line 66
    new-instance v0, Lorg/reflections/util/-$$Lambda$QueryFunction$HvYZMDE-V-JG-9VtS2OARpoNv_E;

    invoke-direct {v0, p0, p1}, Lorg/reflections/util/-$$Lambda$QueryFunction$HvYZMDE-V-JG-9VtS2OARpoNv_E;-><init>(Lorg/reflections/util/QueryFunction;Lorg/reflections/util/QueryFunction;)V

    return-object v0
.end method

.method public static synthetic $default$apply(Lorg/reflections/util/QueryFunction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;

    .line 22
    invoke-interface {p0, p1}, Lorg/reflections/util/QueryFunction;->apply(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static varargs $default$as(Lorg/reflections/util/QueryFunction;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;
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

    .line 73
    new-instance v0, Lorg/reflections/util/-$$Lambda$QueryFunction$fvo-yqlDjOOENSKWi7j7G6XCOfU;

    invoke-direct {v0, p0, p1, p2}, Lorg/reflections/util/-$$Lambda$QueryFunction$fvo-yqlDjOOENSKWi7j7G6XCOfU;-><init>(Lorg/reflections/util/QueryFunction;Ljava/lang/Class;[Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static varargs $default$asClass(Lorg/reflections/util/QueryFunction;[Ljava/lang/ClassLoader;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;
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

    .line 89
    new-instance v0, Lorg/reflections/util/-$$Lambda$QueryFunction$hk6cN4gYdj05iRufIY0K4WAF0-0;

    invoke-direct {v0, p0, p1}, Lorg/reflections/util/-$$Lambda$QueryFunction$hk6cN4gYdj05iRufIY0K4WAF0-0;-><init>(Lorg/reflections/util/QueryFunction;[Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static $default$filter(Lorg/reflections/util/QueryFunction;Ljava/util/function/Predicate;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Lorg/reflections/util/QueryFunction<",
            "TC;TT;>;"
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/reflections/util/-$$Lambda$QueryFunction$xEvr4bjSASTRyNL2_iLl9pqMTGw;

    invoke-direct {v0, p0, p1}, Lorg/reflections/util/-$$Lambda$QueryFunction$xEvr4bjSASTRyNL2_iLl9pqMTGw;-><init>(Lorg/reflections/util/QueryFunction;Ljava/util/function/Predicate;)V

    return-object v0
.end method

.method public static $default$getAll(Lorg/reflections/util/QueryFunction;Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;
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

    .line 47
    sget-object v0, Lorg/reflections/util/-$$Lambda$QueryFunction$rB-nB1WcsMkPqRgRJSpeUHoAqLk;->INSTANCE:Lorg/reflections/util/-$$Lambda$QueryFunction$rB-nB1WcsMkPqRgRJSpeUHoAqLk;

    invoke-interface {p0, p1, v0}, Lorg/reflections/util/QueryFunction;->getAll(Ljava/util/function/Function;Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public static $default$getAll(Lorg/reflections/util/QueryFunction;Ljava/util/function/Function;Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;
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

    .line 52
    new-instance v0, Lorg/reflections/util/-$$Lambda$QueryFunction$Izh4Tm0HvUoJy7VbQa4VNYVloo0;

    invoke-direct {v0, p0, p1, p2}, Lorg/reflections/util/-$$Lambda$QueryFunction$Izh4Tm0HvUoJy7VbQa4VNYVloo0;-><init>(Lorg/reflections/util/QueryFunction;Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static $default$map(Lorg/reflections/util/QueryFunction;Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;
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

    .line 37
    new-instance v0, Lorg/reflections/util/-$$Lambda$QueryFunction$UeByivLGLBozMvmxDB7wp1nZw-4;

    invoke-direct {v0, p0, p1}, Lorg/reflections/util/-$$Lambda$QueryFunction$UeByivLGLBozMvmxDB7wp1nZw-4;-><init>(Lorg/reflections/util/QueryFunction;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static synthetic lambda$add$9(Lorg/reflections/util/QueryFunction;Lorg/reflections/util/QueryFunction;Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Set;

    .line 66
    invoke-interface {p0, p2}, Lorg/reflections/util/QueryFunction;->apply(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p1, p2}, Lorg/reflections/util/QueryFunction;->apply(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/reflections/util/-$$Lambda$AMboGYEhuVfighAr4ZxypJn5wlE;->INSTANCE:Lorg/reflections/util/-$$Lambda$AMboGYEhuVfighAr4ZxypJn5wlE;

    .line 67
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;->INSTANCE:Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;

    invoke-static {p2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashSet;

    return-object p1
.end method

.method public static synthetic lambda$as$12(Lorg/reflections/util/QueryFunction;Ljava/lang/Class;[Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;

    .line 74
    invoke-interface {p0, p3}, Lorg/reflections/util/QueryFunction;->apply(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    .line 76
    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/reflections/util/-$$Lambda$QueryFunction$pKVXMXUtlMRadxScNcPyMzWV_Zg;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/reflections/util/-$$Lambda$QueryFunction$pKVXMXUtlMRadxScNcPyMzWV_Zg;-><init>(Lorg/reflections/util/QueryFunction;Ljava/lang/Class;Ljava/util/Set;[Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    .line 81
    invoke-virtual {p1, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public static synthetic lambda$asClass$13(Lorg/reflections/util/QueryFunction;[Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;

    .line 89
    invoke-interface {p0, p2}, Lorg/reflections/util/QueryFunction;->apply(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    const-class v0, Ljava/lang/Class;

    invoke-interface {p0, p2, v0, p1}, Lorg/reflections/util/NameHelper;->forNames(Ljava/util/Collection;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public static synthetic lambda$filter$3(Lorg/reflections/util/QueryFunction;Ljava/util/function/Predicate;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;

    .line 32
    invoke-interface {p0, p2}, Lorg/reflections/util/QueryFunction;->apply(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;->INSTANCE:Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;

    invoke-static {p2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashSet;

    return-object p1
.end method

.method public static synthetic lambda$getAll$7(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic lambda$getAll$8(Lorg/reflections/util/QueryFunction;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/Set;
    .locals 6
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0, p3}, Lorg/reflections/util/QueryFunction;->apply(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 54
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v2, 0x0

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 57
    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/reflections/util/QueryFunction;

    invoke-interface {v3, p3}, Lorg/reflections/util/QueryFunction;->apply(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 58
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static synthetic lambda$map$4(Lorg/reflections/util/QueryFunction;Ljava/util/function/Function;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;

    .line 37
    invoke-interface {p0, p2}, Lorg/reflections/util/QueryFunction;->apply(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;->INSTANCE:Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;

    invoke-static {p2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedHashSet;

    return-object p1
.end method

.method public static synthetic lambda$null$10(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic lambda$null$11(Lorg/reflections/util/QueryFunction;Ljava/lang/Class;Ljava/util/Set;[Ljava/lang/ClassLoader;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/util/QueryFunction;

    .line 77
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p4, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 78
    invoke-interface {p0, p2, p1, p3}, Lorg/reflections/util/NameHelper;->forNames(Ljava/util/Collection;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Set;

    goto :goto_0

    :cond_1
    instance-of p4, p4, Ljava/lang/reflect/AnnotatedElement;

    if-eqz p4, :cond_2

    .line 79
    invoke-interface {p0, p2}, Lorg/reflections/util/NameHelper;->toNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p0, p2, p1, p3}, Lorg/reflections/util/NameHelper;->forNames(Ljava/util/Collection;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Set;

    goto :goto_0

    .line 80
    :cond_2
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/reflections/util/-$$Lambda$QueryFunction$lWaEXckH7bbErCiaFgp8anD6cQM;->INSTANCE:Lorg/reflections/util/-$$Lambda$QueryFunction$lWaEXckH7bbErCiaFgp8anD6cQM;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;->INSTANCE:Lorg/reflections/util/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;

    invoke-static {p2}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Set;

    :goto_0
    return-object p2
.end method

.method public static synthetic lambda$set$2(Ljava/util/Collection;Lorg/reflections/Store;)Ljava/util/Set;
    .locals 0

    .line 28
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public static synthetic lambda$single$1(Ljava/lang/Object;Lorg/reflections/Store;)Ljava/util/Set;
    .locals 0

    .line 27
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static set(Ljava/util/Collection;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "TT;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/reflections/util/-$$Lambda$QueryFunction$sbq9VoPOiPl59XQAnaMckVKoCP4;

    invoke-direct {v0, p0}, Lorg/reflections/util/-$$Lambda$QueryFunction$sbq9VoPOiPl59XQAnaMckVKoCP4;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static single(Ljava/lang/Object;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "TT;>;"
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/reflections/util/-$$Lambda$QueryFunction$b5YFslE5lIWsk_uULNYHI6LynnA;

    invoke-direct {v0, p0}, Lorg/reflections/util/-$$Lambda$QueryFunction$b5YFslE5lIWsk_uULNYHI6LynnA;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
