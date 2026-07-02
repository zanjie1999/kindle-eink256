.class public final Lcom/amazon/kcp/search/store/StoreContentMetadata;
.super Ljava/lang/Object;
.source "StoreContentMetadata.kt"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final authors:Ljava/lang/String;

.field private final bookCategory:Ljava/lang/String;

.field private final iFile:Ljava/lang/String;

.field private final isKU:Z

.field private final rating:F

.field private final reviewCount:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authors"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->asin:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->authors:Ljava/lang/String;

    iput p4, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->rating:F

    iput p5, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->reviewCount:I

    iput-boolean p6, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->isKU:Z

    iput-object p7, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->bookCategory:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->iFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/search/store/StoreContentMetadata;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/store/StoreContentMetadata;

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->asin:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/store/StoreContentMetadata;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/store/StoreContentMetadata;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->authors:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/store/StoreContentMetadata;->authors:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->rating:F

    iget v1, p1, Lcom/amazon/kcp/search/store/StoreContentMetadata;->rating:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->reviewCount:I

    iget v1, p1, Lcom/amazon/kcp/search/store/StoreContentMetadata;->reviewCount:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->isKU:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/search/store/StoreContentMetadata;->isKU:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->bookCategory:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/store/StoreContentMetadata;->bookCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->iFile:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/search/store/StoreContentMetadata;->iFile:Ljava/lang/String;

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

.method public final getAsin()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthors()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->authors:Ljava/lang/String;

    return-object v0
.end method

.method public final getBookCategory()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->bookCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final getIFile()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->iFile:Ljava/lang/String;

    return-object v0
.end method

.method public final getRating()F
    .locals 1

    .line 18
    iget v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->rating:F

    return v0
.end method

.method public final getReviewCount()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->reviewCount:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->asin:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->authors:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->rating:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->reviewCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->isKU:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->bookCategory:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->iFile:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final isKU()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->isKU:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoreContentMetadata(asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->authors:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->rating:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", reviewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->reviewCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isKU="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->isKU:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bookCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->bookCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/store/StoreContentMetadata;->iFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
