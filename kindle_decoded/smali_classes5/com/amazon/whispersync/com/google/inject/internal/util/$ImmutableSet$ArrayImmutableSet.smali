.class abstract Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ArrayImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 407
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;

    if-nez v1, :cond_1

    .line 408
    invoke-super {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 410
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;->size()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_2

    return v3

    .line 413
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v4, p1, v2

    .line 414
    invoke-virtual {p0, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->forArray([Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 387
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 388
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;->size()I

    move-result v0

    .line 394
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 395
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 396
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    .line 397
    aput-object v1, p1, v0

    .line 399
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
