.class public final Lcom/amazon/whispersync/com/google/inject/spi/Dependency;
.super Ljava/lang/Object;
.source "Dependency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

.field private final key:Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final nullable:Z

.field private final parameterIndex:I


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/Key;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;ZI)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    const-string p1, "key"

    .line 45
    invoke-static {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/Key;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    .line 46
    iput-boolean p3, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->nullable:Z

    .line 47
    iput p4, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->parameterIndex:I

    return-void
.end method

.method public static forInjectionPoints(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    .line 64
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "TT;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;-><init>(Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;Lcom/amazon/whispersync/com/google/inject/Key;ZI)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 105
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    .line 107
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    iget-object v2, p1, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-static {v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->parameterIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->parameterIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getInjectionPoint()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    return-object v0
.end method

.method public getKey()Lcom/amazon/whispersync/com/google/inject/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    return-object v0
.end method

.method public getParameterIndex()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->parameterIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->parameterIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isNullable()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->nullable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->key:Lcom/amazon/whispersync/com/google/inject/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    if-eqz v1, :cond_0

    const-string v1, "@"

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->injectionPoint:Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->parameterIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "["

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->parameterIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
