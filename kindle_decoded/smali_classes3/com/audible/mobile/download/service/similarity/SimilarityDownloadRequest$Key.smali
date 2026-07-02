.class public Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;
.super Ljava/lang/Object;
.source "SimilarityDownloadRequest.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/DownloadRequest$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final customerId:Lcom/audible/mobile/domain/CustomerId;

.field private final similarity:Lcom/audible/mobile/domain/Similarity;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/domain/Similarity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->customerId:Lcom/audible/mobile/domain/CustomerId;

    .line 38
    iput-object p2, p0, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    .line 39
    iput-object p3, p0, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->similarity:Lcom/audible/mobile/domain/Similarity;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 62
    const-class v2, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    check-cast p1, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;

    .line 67
    iget-object v2, p0, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    iget-object v3, p1, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->customerId:Lcom/audible/mobile/domain/CustomerId;

    iget-object v3, p1, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->customerId:Lcom/audible/mobile/domain/CustomerId;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->similarity:Lcom/audible/mobile/domain/Similarity;

    iget-object p1, p1, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->similarity:Lcom/audible/mobile/domain/Similarity;

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 81
    iget-object v1, p0, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->similarity:Lcom/audible/mobile/domain/Similarity;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget-object v1, p0, Lcom/audible/mobile/download/service/similarity/SimilarityDownloadRequest$Key;->customerId:Lcom/audible/mobile/domain/CustomerId;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
