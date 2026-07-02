.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonImmutableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient singleKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final transient singleValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient values:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 446
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;-><init>()V

    .line 447
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    .line 448
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 451
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;-><init>()V

    .line 452
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->entry:Ljava/util/Map$Entry;

    .line 453
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    .line 454
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map$Entry;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;-><init>(Ljava/util/Map$Entry;)V

    return-void
.end method

.method private entry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->entry:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->entry:Ljava/util/Map$Entry;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->entrySet:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    if-nez v0, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->entry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->entrySet:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->entrySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/amazon/whispersync/com/google/inject/internal/util/$Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 532
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 533
    check-cast p1, Ljava/util/Map;

    .line 534
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v1, v0, :cond_1

    return v2

    .line 537
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 538
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public keySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->keySet:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->of(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->keySet:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->keySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->values:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap$Values;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->singleValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap$Values;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->values:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$SingletonImmutableMap;->values()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
