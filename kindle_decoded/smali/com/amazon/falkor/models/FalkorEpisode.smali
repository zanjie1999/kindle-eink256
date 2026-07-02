.class public final Lcom/amazon/falkor/models/FalkorEpisode;
.super Ljava/lang/Object;
.source "FalkorModels.kt"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final episodeNumber:I

.field private final falkorPrice:I

.field private final hasOwnership:Z

.field private final isFree:Z

.field private final nextEpisodeAsin:Ljava/lang/String;

.field private final storyAsin:Ljava/lang/String;

.field private final storyTitle:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5

    instance-of v1, p1, Lcom/amazon/falkor/models/FalkorEpisode;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lcom/amazon/falkor/models/FalkorEpisode;

    iget-object v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->storyAsin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/falkor/models/FalkorEpisode;->storyAsin:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->asin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/falkor/models/FalkorEpisode;->asin:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/falkor/models/FalkorEpisode;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->hasOwnership:Z

    iget-boolean v3, p1, Lcom/amazon/falkor/models/FalkorEpisode;->hasOwnership:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->isFree:Z

    iget-boolean v3, p1, Lcom/amazon/falkor/models/FalkorEpisode;->isFree:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->nextEpisodeAsin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/falkor/models/FalkorEpisode;->nextEpisodeAsin:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->storyTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/falkor/models/FalkorEpisode;->storyTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->episodeNumber:I

    iget v3, p1, Lcom/amazon/falkor/models/FalkorEpisode;->episodeNumber:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_4

    iget v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->falkorPrice:I

    iget p1, p1, Lcom/amazon/falkor/models/FalkorEpisode;->falkorPrice:I

    if-ne v1, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    return v2

    :cond_5
    :goto_4
    return v0
.end method

.method public final getAsin()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/falkor/models/FalkorEpisode;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpisodeNumber()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/amazon/falkor/models/FalkorEpisode;->episodeNumber:I

    return v0
.end method

.method public final getFalkorPrice()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/amazon/falkor/models/FalkorEpisode;->falkorPrice:I

    return v0
.end method

.method public final getHasOwnership()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/amazon/falkor/models/FalkorEpisode;->hasOwnership:Z

    return v0
.end method

.method public final getNextEpisodeAsin()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/falkor/models/FalkorEpisode;->nextEpisodeAsin:Ljava/lang/String;

    return-object v0
.end method

.method public final getStoryAsin()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/falkor/models/FalkorEpisode;->storyAsin:Ljava/lang/String;

    return-object v0
.end method

.method public final getStoryTitle()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/falkor/models/FalkorEpisode;->storyTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/falkor/models/FalkorEpisode;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/amazon/falkor/models/FalkorEpisode;->storyAsin:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/falkor/models/FalkorEpisode;->asin:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/falkor/models/FalkorEpisode;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/falkor/models/FalkorEpisode;->hasOwnership:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/falkor/models/FalkorEpisode;->isFree:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/falkor/models/FalkorEpisode;->nextEpisodeAsin:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/falkor/models/FalkorEpisode;->storyTitle:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->episodeNumber:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->falkorPrice:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isFree()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/amazon/falkor/models/FalkorEpisode;->isFree:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FalkorEpisode(storyAsin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->storyAsin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasOwnership="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->hasOwnership:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->isFree:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nextEpisodeAsin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->nextEpisodeAsin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storyTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->storyTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->episodeNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", falkorPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/falkor/models/FalkorEpisode;->falkorPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
