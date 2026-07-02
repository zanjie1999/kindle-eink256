.class public interface abstract Lorg/reflections/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# virtual methods
.method public abstract getClassLoaders()[Ljava/lang/ClassLoader;
.end method

.method public abstract getInputsFilter()Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScanners()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/reflections/scanners/Scanner;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUrls()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isParallel()Z
.end method

.method public abstract shouldExpandSuperTypes()Z
.end method
