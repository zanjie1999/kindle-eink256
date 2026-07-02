.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$RegularImmutableSet;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegularImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final mask:I

.field final table:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 0

    .line 430
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$ArrayImmutableSet;-><init>([Ljava/lang/Object;)V

    .line 431
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 432
    iput p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$RegularImmutableSet;->mask:I

    .line 433
    iput p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$RegularImmutableSet;->hashCode:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 440
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Hashing;->smear(I)I

    move-result v1

    .line 441
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$RegularImmutableSet;->table:[Ljava/lang/Object;

    iget v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$RegularImmutableSet;->mask:I

    and-int/2addr v3, v1

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    return v0

    .line 445
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$RegularImmutableSet;->hashCode:I

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
