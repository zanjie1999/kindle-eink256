.class public final Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;
.super Ljava/lang/Object;
.source "GetInvalidDownloadsResponse.kt"


# instance fields
.field private final invalidDownloadsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final responseCode:I

.field private final success:Z


# direct methods
.method public constructor <init>(Ljava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->invalidDownloadsList:Ljava/util/List;

    iput-boolean p2, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->success:Z

    iput p3, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->responseCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->invalidDownloadsList:Ljava/util/List;

    iget-object v1, p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->invalidDownloadsList:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->success:Z

    iget-boolean v1, p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->success:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->responseCode:I

    iget p1, p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->responseCode:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getInvalidDownloadsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->invalidDownloadsList:Ljava/util/List;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->responseCode:I

    return v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->success:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->invalidDownloadsList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->success:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->responseCode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetInvalidDownloadsResponse(invalidDownloadsList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->invalidDownloadsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/library/releaselicense/api/model/GetInvalidDownloadsResponse;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
