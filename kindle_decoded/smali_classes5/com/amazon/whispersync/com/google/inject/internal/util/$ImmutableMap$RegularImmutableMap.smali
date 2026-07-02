.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegularImmutableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$KeySet;,
        Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$EntrySet;
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
.field private final transient entries:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
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

.field private final transient keySetHashCode:I

.field private final transient mask:I

.field private final transient table:[Ljava/lang/Object;

.field private transient values:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .line 567
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;-><init>()V

    .line 571
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    .line 573
    array-length p1, p1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Hashing;->chooseTableSize(I)I

    move-result p1

    mul-int/lit8 v0, p1, 0x2

    .line 574
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->table:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    .line 575
    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->mask:I

    .line 578
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    .line 579
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 580
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 581
    invoke-static {v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Hashing;->smear(I)I

    move-result v6

    .line 582
    :goto_1
    iget v7, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->mask:I

    and-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0x2

    .line 583
    iget-object v8, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->table:[Ljava/lang/Object;

    aget-object v8, v8, v7

    if-nez v8, :cond_0

    .line 585
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 586
    iget-object v6, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->table:[Ljava/lang/Object;

    aput-object v4, v6, v7

    add-int/lit8 v7, v7, 0x1

    .line 587
    aput-object v3, v6, v7

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 591
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 595
    :cond_2
    iput v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->keySetHashCode:I

    return-void
.end method

.method synthetic constructor <init>([Ljava/util/Map$Entry;Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$1;)V
    .locals 0

    .line 559
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;-><init>([Ljava/util/Map$Entry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;)[Ljava/util/Map$Entry;
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;)I
    .locals 0

    .line 559
    iget p0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->keySetHashCode:I

    return p0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 626
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 634
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
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

    .line 649
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->entrySet:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$EntrySet;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->entrySet:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->entrySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 602
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Hashing;->smear(I)I

    move-result v1

    .line 603
    :goto_0
    iget v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->mask:I

    and-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    .line 604
    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->table:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    return-object v0

    .line 608
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 611
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->table:[Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    aget-object p1, p1, v2

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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

    .line 674
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->keySet:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    if-nez v0, :cond_0

    .line 675
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$KeySet;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$KeySet;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->keySet:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->keySet()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 741
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    .line 742
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->values:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;

    if-nez v0, :cond_0

    .line 700
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap$Values;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->values:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$RegularImmutableMap;->values()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
