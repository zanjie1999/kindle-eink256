.class public abstract Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SerializedForm;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$RegularImmutableSet;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$EmptyImmutableSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_IMMUTABLE_SET:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$EmptyImmutableSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$EmptyImmutableSet;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$1;)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->EMPTY_IMMUTABLE_SET:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;-><init>()V

    return-void
.end method

.method public static builder()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 549
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 125
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    if-eqz v0, :cond_0

    .line 127
    check-cast p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-object p0

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Collections2;->toCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOfInternal(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 141
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    .line 142
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOfInternal(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method private static copyOfInternal(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 149
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 156
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->create(Ljava/lang/Iterable;I)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 154
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 151
    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method private static create(Ljava/lang/Iterable;I)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;I)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 332
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Hashing;->chooseTableSize(I)I

    move-result v0

    .line 333
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 336
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 340
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    .line 341
    invoke-static {v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Hashing;->smear(I)I

    move-result v7

    :goto_1
    and-int v8, v7, v0

    .line 343
    aget-object v9, v1, v8

    if-nez v9, :cond_0

    .line 346
    aput-object v5, v1, v8

    .line 347
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 357
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v2, :cond_3

    new-instance p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$RegularImmutableSet;

    invoke-interface {v3}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, v4, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    :goto_2
    return-object p0
.end method

.method public static of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->EMPTY_IMMUTABLE_SET:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 95
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 101
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    array-length p0, p0

    invoke-static {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->create(Ljava/lang/Iterable;I)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 99
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    return-object p0

    .line 97
    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 171
    :cond_0
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 177
    :cond_1
    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Collections2;->setEquals(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 182
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method isHashCodeFast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 193
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 199
    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    .line 200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    .line 202
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 541
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
