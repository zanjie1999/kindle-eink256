.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$EmptyImmutableList;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyImmutableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 276
    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$EmptyImmutableList;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$1;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$EmptyImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 318
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param

    .line 322
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 323
    check-cast p1, Ljava/util/List;

    .line 324
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 291
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkElementIndex(II)V

    .line 292
    new-instance p1, Ljava/lang/AssertionError;

    const-string/jumbo v0, "unreachable"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 273
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->emptyIterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$EmptyImmutableList;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 309
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->emptyListIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 313
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkPositionIndex(II)V

    .line 314
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->emptyListIterator()Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public subList(II)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 304
    invoke-static {p1, p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkPositionIndexes(III)V

    return-object p0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$EmptyImmutableList;->subList(II)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 279
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$EmptyImmutableList;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 283
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 284
    aput-object v1, p1, v0

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[]"

    return-object v0
.end method
