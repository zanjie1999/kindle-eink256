.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$EmptyImmutableMap;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyImmutableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 388
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V
    .locals 0

    .line 388
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$EmptyImmutableMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 412
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$EmptyImmutableMap;->entrySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param

    .line 424
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 425
    check-cast p1, Ljava/util/Map;

    .line 426
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 416
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$EmptyImmutableMap;->keySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public values()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;->EMPTY_IMMUTABLE_COLLECTION:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$EmptyImmutableMap;->values()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
