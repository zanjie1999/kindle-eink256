.class public Lorg/reflections/util/ConfigurationBuilder;
.super Ljava/lang/Object;
.source "ConfigurationBuilder.java"

# interfaces
.implements Lorg/reflections/Configuration;


# static fields
.field public static final DEFAULT_INPUTS_FILTER:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SCANNERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/reflections/scanners/Scanner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private classLoaders:[Ljava/lang/ClassLoader;

.field private expandSuperTypes:Z

.field private inputsFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isParallel:Z

.field private scanners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/reflections/scanners/Scanner;",
            ">;"
        }
    .end annotation
.end field

.field private urls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/reflections/scanners/Scanners;

    sget-object v2, Lorg/reflections/scanners/Scanners;->TypesAnnotated:Lorg/reflections/scanners/Scanners;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/reflections/scanners/Scanners;->SubTypes:Lorg/reflections/scanners/Scanners;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/reflections/util/ConfigurationBuilder;->DEFAULT_SCANNERS:Ljava/util/Set;

    .line 38
    sget-object v0, Lorg/reflections/util/-$$Lambda$ConfigurationBuilder$QxWM0At6NJwQ-1HhJaOjqyKzKbw;->INSTANCE:Lorg/reflections/util/-$$Lambda$ConfigurationBuilder$QxWM0At6NJwQ-1HhJaOjqyKzKbw;

    sput-object v0, Lorg/reflections/util/ConfigurationBuilder;->DEFAULT_INPUTS_FILTER:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lorg/reflections/util/ConfigurationBuilder;->isParallel:Z

    .line 45
    iput-boolean v0, p0, Lorg/reflections/util/ConfigurationBuilder;->expandSuperTypes:Z

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->urls:Ljava/util/Set;

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/URL;",
            ">;)",
            "Lorg/reflections/util/ConfigurationBuilder;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->urls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs forPackage(Ljava/lang/String;[Ljava/lang/ClassLoader;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 0

    .line 113
    invoke-static {p1, p2}, Lorg/reflections/util/ClasspathHelper;->forPackage(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/reflections/util/ConfigurationBuilder;->addUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;

    return-object p0
.end method

.method public getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->classLoaders:[Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getInputsFilter()Ljava/util/function/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->inputsFilter:Ljava/util/function/Predicate;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/reflections/util/ConfigurationBuilder;->DEFAULT_INPUTS_FILTER:Ljava/util/function/Predicate;

    :goto_0
    return-object v0
.end method

.method public getScanners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/reflections/scanners/Scanner;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->scanners:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/reflections/util/ConfigurationBuilder;->DEFAULT_SCANNERS:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method public getUrls()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->urls:Ljava/util/Set;

    return-object v0
.end method

.method public isParallel()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lorg/reflections/util/ConfigurationBuilder;->isParallel:Z

    return v0
.end method

.method public varargs setScanners([Lorg/reflections/scanners/Scanner;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 1

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->scanners:Ljava/util/Set;

    return-object p0
.end method

.method public setUrls(Ljava/util/Collection;)Lorg/reflections/util/ConfigurationBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/URL;",
            ">;)",
            "Lorg/reflections/util/ConfigurationBuilder;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/reflections/util/ConfigurationBuilder;->urls:Ljava/util/Set;

    return-object p0
.end method

.method public shouldExpandSuperTypes()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lorg/reflections/util/ConfigurationBuilder;->expandSuperTypes:Z

    return v0
.end method
