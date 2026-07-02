.class public final Lcom/google/common/collect/ImmutableBiMap$Builder;
.super Lcom/google/common/collect/ImmutableMap$Builder;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableBiMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 212
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 225
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    if-eqz v3, :cond_1

    .line 226
    iget-boolean v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    invoke-static {v3, v0}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/ImmutableMapEntry;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    iget v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget-object v4, p0, Lcom/google/common/collect/ImmutableMap$Builder;->valueComparator:Ljava/util/Comparator;

    invoke-static {v4}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-static {}, Lcom/google/common/collect/Maps;->valueFunction()Lcom/google/common/base/Function;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 235
    :cond_1
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    array-length v3, v3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entriesUsed:Z

    .line 236
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    invoke-static {v0, v1}, Lcom/google/common/collect/RegularImmutableBiMap;->fromEntryArray(I[Ljava/util/Map$Entry;)Lcom/google/common/collect/RegularImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 214
    :cond_4
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->of()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 140
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 153
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    return-object p0
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    return-object p0
.end method

.method public putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 182
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 167
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    return-object p0
.end method
