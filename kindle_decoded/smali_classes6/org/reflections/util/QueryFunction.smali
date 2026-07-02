.class public interface abstract Lorg/reflections/util/QueryFunction;
.super Ljava/lang/Object;
.source "QueryFunction.java"

# interfaces
.implements Ljava/util/function/Function;
.implements Lorg/reflections/util/NameHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "TC;",
        "Ljava/util/Set<",
        "TT;>;>;",
        "Lorg/reflections/util/NameHelper;"
    }
.end annotation


# virtual methods
.method public abstract add(Lorg/reflections/util/QueryFunction;)Lorg/reflections/util/QueryFunction;
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
.end method

.method public abstract apply(Ljava/lang/Object;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract as(Ljava/lang/Class;[Ljava/lang/ClassLoader;)Lorg/reflections/util/QueryFunction;
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
.end method

.method public varargs abstract asClass([Ljava/lang/ClassLoader;)Lorg/reflections/util/QueryFunction;
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
.end method

.method public abstract filter(Ljava/util/function/Predicate;)Lorg/reflections/util/QueryFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Lorg/reflections/util/QueryFunction<",
            "TC;TT;>;"
        }
    .end annotation
.end method

.method public abstract getAll(Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;
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
.end method

.method public abstract getAll(Ljava/util/function/Function;Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;
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
.end method

.method public abstract map(Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;
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
.end method
