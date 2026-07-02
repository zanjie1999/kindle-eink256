.class public interface abstract Lorg/reflections/util/QueryBuilder;
.super Ljava/lang/Object;
.source "QueryBuilder.java"

# interfaces
.implements Lorg/reflections/util/NameHelper;


# virtual methods
.method public abstract get(Ljava/lang/String;)Lorg/reflections/util/QueryFunction;
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
.end method

.method public abstract getAll(Ljava/util/Collection;)Lorg/reflections/util/QueryFunction;
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
.end method

.method public abstract index()Ljava/lang/String;
.end method

.method public abstract of(Lorg/reflections/util/QueryFunction;)Lorg/reflections/util/QueryFunction;
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
.end method

.method public varargs abstract of([Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;
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
.end method

.method public varargs abstract with([Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;
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
.end method
