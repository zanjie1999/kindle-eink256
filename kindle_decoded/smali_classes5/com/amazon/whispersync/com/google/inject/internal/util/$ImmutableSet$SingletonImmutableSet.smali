.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonImmutableSet"
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
.field final element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final hashCode:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;-><init>()V

    .line 265
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    .line 266
    iput p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;->hashCode:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 304
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 305
    check-cast p1, Ljava/util/Set;

    .line 306
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;->hashCode:I

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

    .line 282
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 286
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

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

    .line 291
    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 292
    invoke-static {p1, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 293
    :cond_0
    array-length v0, p1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 294
    aput-object v0, p1, v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    aput-object v1, p1, v0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$SingletonImmutableSet;->element:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
