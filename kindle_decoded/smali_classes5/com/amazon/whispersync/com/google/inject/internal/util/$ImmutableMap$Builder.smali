.class public Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->entries:Ljava/util/List;

    return-void
.end method

.method private static fromEntryList(Ljava/util/List;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 199
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 206
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    .line 208
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;

    invoke-direct {v0, p0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;-><init>([Ljava/util/Map$Entry;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;-><init>(Ljava/util/Map$Entry;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V

    return-object v0

    .line 202
    :cond_1
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->entries:Ljava/util/List;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->fromEntryList(Ljava/util/List;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->entries:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->access$300(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 179
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method
