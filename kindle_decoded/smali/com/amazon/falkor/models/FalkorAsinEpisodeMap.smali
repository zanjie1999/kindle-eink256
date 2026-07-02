.class public final Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;
.super Ljava/util/HashMap;
.source "FalkorModels.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/amazon/falkor/models/FalkorEpisode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 12
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge containsKey(Ljava/lang/String;)Z
    .locals 0

    .line 12
    invoke-super {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge containsValue(Lcom/amazon/falkor/models/FalkorEpisode;)Z
    .locals 0

    .line 12
    invoke-super {p0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 12
    instance-of v0, p1, Lcom/amazon/falkor/models/FalkorEpisode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/falkor/models/FalkorEpisode;

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;->containsValue(Lcom/amazon/falkor/models/FalkorEpisode;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/amazon/falkor/models/FalkorEpisode;",
            ">;>;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;->getEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge get(Ljava/lang/String;)Lcom/amazon/falkor/models/FalkorEpisode;
    .locals 0

    .line 12
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/falkor/models/FalkorEpisode;

    return-object p1
.end method

.method public final bridge get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 12
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;->get(Ljava/lang/String;)Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge getEntries()Ljava/util/Set;
    .locals 1

    .line 12
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getKeys()Ljava/util/Set;
    .locals 1

    .line 12
    invoke-super {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge getOrDefault(Ljava/lang/String;Lcom/amazon/falkor/models/FalkorEpisode;)Lcom/amazon/falkor/models/FalkorEpisode;
    .locals 0

    .line 12
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/falkor/models/FalkorEpisode;

    return-object p1
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 12
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/amazon/falkor/models/FalkorEpisode;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;->getOrDefault(Ljava/lang/String;Lcom/amazon/falkor/models/FalkorEpisode;)Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public bridge getSize()I
    .locals 1

    .line 12
    invoke-super {p0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .locals 1

    .line 12
    invoke-super {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;->getKeys()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge remove(Ljava/lang/String;)Lcom/amazon/falkor/models/FalkorEpisode;
    .locals 0

    .line 12
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/falkor/models/FalkorEpisode;

    return-object p1
.end method

.method public final bridge remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 12
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;->remove(Ljava/lang/String;)Lcom/amazon/falkor/models/FalkorEpisode;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 12
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/amazon/falkor/models/FalkorEpisode;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/amazon/falkor/models/FalkorEpisode;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;->remove(Ljava/lang/String;Lcom/amazon/falkor/models/FalkorEpisode;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge remove(Ljava/lang/String;Lcom/amazon/falkor/models/FalkorEpisode;)Z
    .locals 0

    .line 12
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge size()I
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;->getSize()I

    move-result v0

    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/falkor/models/FalkorEpisode;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/amazon/falkor/models/FalkorAsinEpisodeMap;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
