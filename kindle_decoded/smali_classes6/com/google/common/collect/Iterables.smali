.class public final Lcom/google/common/collect/Iterables;
.super Ljava/lang/Object;
.source "Iterables.java"


# direct methods
.method public static addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 357
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 358
    invoke-static {p1}, Lcom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    .line 359
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 361
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method public static all(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 611
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->all(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static any(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 603
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->any(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static castOrCopyToCollection(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 344
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 572
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    new-instance v0, Lcom/google/common/collect/Iterables$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$4;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    .line 753
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 294
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->getOnlyElement(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static removeFirstMatching(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 244
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 246
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 248
    invoke-interface {p1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeIf(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 178
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 179
    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/common/base/Predicate;

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->removeIfFromRandomAccessList(Ljava/util/List;Lcom/google/common/base/Predicate;)Z

    move-result p0

    return p0

    .line 181
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result p0

    return p0
.end method

.method private static removeIfFromRandomAccessList(Ljava/util/List;Lcom/google/common/base/Predicate;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 193
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    .line 194
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 195
    invoke-interface {p1, v3}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-le v1, v2, :cond_0

    .line 198
    :try_start_0
    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 203
    :catch_0
    invoke-static {p0, p1, v2, v1}, Lcom/google/common/collect/Iterables;->slowRemoveIfForRemainingElements(Ljava/util/List;Lcom/google/common/base/Predicate;II)V

    return v4

    .line 200
    :catch_1
    invoke-static {p0, p1, v2, v1}, Lcom/google/common/collect/Iterables;->slowRemoveIfForRemainingElements(Ljava/util/List;Lcom/google/common/base/Predicate;II)V

    return v4

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private static slowRemoveIfForRemainingElements(Ljava/util/List;Lcom/google/common/base/Predicate;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/common/base/Predicate<",
            "-TT;>;II)V"
        }
    .end annotation

    .line 228
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, p3, :cond_1

    .line 229
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-lt p3, p2, :cond_2

    .line 235
    invoke-interface {p0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 319
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;[TT;)[TT;"
        }
    .end annotation

    .line 323
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->castOrCopyToCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    .line 324
    invoke-interface {p0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 283
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterators;->toString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TF;>;",
            "Lcom/google/common/base/Function<",
            "-TF;+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 684
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    new-instance v0, Lcom/google/common/collect/Iterables$6;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Iterables$6;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/Function;)V

    return-object v0
.end method
