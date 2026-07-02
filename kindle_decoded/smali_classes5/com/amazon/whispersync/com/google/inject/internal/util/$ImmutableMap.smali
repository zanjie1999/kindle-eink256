.class public abstract Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SerializedForm;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$EmptyImmutableMap;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY_IMMUTABLE_MAP:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$EmptyImmutableMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$EmptyImmutableMap;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->EMPTY_IMMUTABLE_MAP:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static builder()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 227
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    if-eqz v0, :cond_0

    .line 229
    check-cast p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    return-object p0

    .line 233
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 248
    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    .line 250
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    .line 254
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 256
    :cond_1
    new-instance p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;-><init>([Ljava/util/Map$Entry;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V

    return-object p0

    .line 238
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    move-result-object p0

    return-object p0

    .line 236
    :cond_3
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method private static entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public static of()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->EMPTY_IMMUTABLE_MAP:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;-><init>([Ljava/util/Map$Entry;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {p4, p5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;-><init>([Ljava/util/Map$Entry;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {p4, p5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    invoke-static {p6, p7}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;-><init>([Ljava/util/Map$Entry;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {p4, p5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    invoke-static {p6, p7}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    invoke-static {p8, p9}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v1, p1

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;-><init>([Ljava/util/Map$Entry;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract containsKey(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param
.end method

.method public abstract containsValue(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param
.end method

.method public abstract entrySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entrySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 365
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 366
    check-cast p1, Ljava/util/Map;

    .line 367
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entrySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1

    .line 375
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entrySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract keySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->keySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 268
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 322
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 286
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 277
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 295
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 313
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 304
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->entrySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->iterator()Lcom/amazon/whispersync/com/google/inject/internal/util/$UnmodifiableIterator;

    move-result-object v1

    .line 381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract values()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;->values()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 777
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SerializedForm;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SerializedForm;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;)V

    return-object v0
.end method
