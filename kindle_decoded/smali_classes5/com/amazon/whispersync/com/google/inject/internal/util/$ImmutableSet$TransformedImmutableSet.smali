.class abstract Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TransformedImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final source:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TD;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TD;I)V"
        }
    .end annotation

    .line 465
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;-><init>()V

    .line 466
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    .line 467
    iput p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->hashCode:I

    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 1

    .line 514
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->hashCode:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
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
            "TE;>;"
        }
    .end annotation

    .line 481
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;)V

    .line 491
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 461
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 495
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

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

    .line 500
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->size()I

    move-result v0

    .line 501
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 502
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 503
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    .line 504
    aput-object v1, p1, v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 507
    :goto_1
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 508
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$TransformedImmutableSet;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation
.end method
