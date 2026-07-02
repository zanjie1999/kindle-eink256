.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$EmptyImmutableSet;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
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

    .line 222
    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$EmptyImmutableSet;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$1;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$EmptyImmutableSet;-><init>()V

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

    .line 236
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

    .line 240
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 241
    check-cast p1, Ljava/util/Set;

    .line 242
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterators;->emptyIterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$EmptyImmutableSet;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 225
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$EmptyImmutableSet;->EMPTY_ARRAY:[Ljava/lang/Object;

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

    .line 229
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 230
    aput-object v1, p1, v0

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[]"

    return-object v0
.end method
