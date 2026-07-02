.class public Lorg/reflections/util/FilterBuilder;
.super Ljava/lang/Object;
.source "FilterBuilder.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/reflections/util/FilterBuilder$Exclude;,
        Lorg/reflections/util/FilterBuilder$Matcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final chain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/util/function/Predicate;)Lorg/reflections/util/FilterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/reflections/util/FilterBuilder;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 111
    const-class v0, Lorg/reflections/util/FilterBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    check-cast p1, Lorg/reflections/util/FilterBuilder;

    iget-object p1, p1, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public excludePattern(Ljava/lang/String;)Lorg/reflections/util/FilterBuilder;
    .locals 1

    .line 56
    new-instance v0, Lorg/reflections/util/FilterBuilder$Exclude;

    invoke-direct {v0, p1}, Lorg/reflections/util/FilterBuilder$Exclude;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/reflections/util/FilterBuilder;->add(Ljava/util/function/Predicate;)Lorg/reflections/util/FilterBuilder;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/reflections/util/FilterBuilder;->test(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public test(Ljava/lang/String;)Z
    .locals 4

    .line 97
    iget-object v0, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/reflections/util/FilterBuilder$Exclude;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 99
    :cond_1
    iget-object v0, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Predicate;

    if-nez v1, :cond_3

    .line 101
    instance-of v3, v2, Lorg/reflections/util/FilterBuilder$Exclude;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 102
    :cond_3
    invoke-interface {v2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    instance-of v2, v2, Lorg/reflections/util/FilterBuilder$Exclude;

    if-eqz v2, :cond_2

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/reflections/util/FilterBuilder;->chain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/reflections/util/-$$Lambda$6v4Xj21eK8P4lQTegfbU7yqG5U0;->INSTANCE:Lorg/reflections/util/-$$Lambda$6v4Xj21eK8P4lQTegfbU7yqG5U0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
