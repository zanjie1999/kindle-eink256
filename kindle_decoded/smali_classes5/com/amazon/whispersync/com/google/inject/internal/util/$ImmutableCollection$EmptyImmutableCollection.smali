.class Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection$EmptyImmutableCollection;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyImmutableCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection$1;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection$EmptyImmutableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

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

    .line 192
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->access$100()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection$EmptyImmutableCollection;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

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

    .line 196
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->access$200()[Ljava/lang/Object;

    move-result-object v0

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

    .line 200
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 201
    aput-object v1, p1, v0

    :cond_0
    return-object p1
.end method
