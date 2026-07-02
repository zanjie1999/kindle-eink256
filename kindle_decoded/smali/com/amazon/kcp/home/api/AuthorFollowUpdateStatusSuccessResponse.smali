.class public final Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;
.super Ljava/lang/Object;
.source "BaseAuthorFollowWebRequest.kt"


# instance fields
.field private final category:Ljava/lang/String;

.field private final entity_id:Ljava/lang/String;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;

    iget-object v0, p0, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;->entity_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;->entity_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;->category:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;->category:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntity_id()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;->entity_id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;->entity_id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;->category:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthorFollowUpdateStatusSuccessResponse(entity_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;->entity_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
