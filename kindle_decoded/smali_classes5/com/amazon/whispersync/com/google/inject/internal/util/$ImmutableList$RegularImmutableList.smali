.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegularImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;

.field private final offset:I

.field private final size:I


# direct methods
.method private constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .line 350
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;II)V
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V

    .line 344
    iput p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    .line 345
    iput p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    .line 346
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;IILcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V
    .locals 0

    .line 338
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;)I
    .locals 0

    .line 338
    iget p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    return p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 362
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 485
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 489
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 490
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    .line 494
    :cond_2
    iget v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    .line 495
    instance-of v4, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;

    if-eqz v4, :cond_4

    .line 496
    check-cast p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;

    .line 497
    iget v1, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    :goto_0
    iget v4, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    iget v5, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    add-int/2addr v4, v5

    if-ge v1, v4, :cond_6

    .line 498
    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    aget-object v3, v4, v3

    iget-object v4, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_0

    .line 503
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 504
    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    add-int/lit8 v5, v3, 0x1

    aget-object v3, v4, v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 390
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkElementIndex(II)V

    .line 391
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 516
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    iget v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 517
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    if-eqz p1, :cond_1

    .line 396
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    :goto_0
    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    iget v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    iget p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    iget v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->forArray([Ljava/lang/Object;II)Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    if-eqz p1, :cond_1

    .line 407
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    if-lt v0, v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    iget p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 425
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 429
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkPositionIndex(II)V

    .line 431
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    return v0
.end method

.method public subList(II)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 417
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    invoke-static {p1, p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    .line 418
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    add-int/2addr v2, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, v2, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->subList(II)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 372
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    iget v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 378
    array-length v0, p1

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    if-ge v0, v1, :cond_0

    .line 379
    invoke-static {p1, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 380
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 381
    aput-object v0, p1, v1

    .line 383
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 525
    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->offset:I

    iget v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->size:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    .line 526
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$RegularImmutableList;->array:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
