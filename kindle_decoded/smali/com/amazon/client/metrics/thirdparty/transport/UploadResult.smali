.class public Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;
.super Ljava/lang/Object;
.source "UploadResult.java"


# instance fields
.field private mExceptionThrown:Ljava/lang/Exception;

.field private mResponseCode:I

.field private mUploadStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(IILjava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(IILjava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Exception;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mUploadStatus:I

    .line 48
    iput v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mResponseCode:I

    .line 52
    iput p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mUploadStatus:I

    .line 53
    iput p2, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mResponseCode:I

    .line 54
    iput-object p3, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mExceptionThrown:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 1

    const/4 v0, -0x1

    .line 58
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;-><init>(IILjava/lang/Exception;)V

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

    if-eqz p1, :cond_6

    .line 93
    const-class v2, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 95
    :cond_1
    check-cast p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;

    .line 97
    iget v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mUploadStatus:I

    iget v3, p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mUploadStatus:I

    if-eq v2, v3, :cond_2

    return v1

    .line 98
    :cond_2
    iget v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mResponseCode:I

    iget v3, p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mResponseCode:I

    if-eq v2, v3, :cond_3

    return v1

    .line 99
    :cond_3
    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mExceptionThrown:Ljava/lang/Exception;

    iget-object p1, p1, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mExceptionThrown:Ljava/lang/Exception;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getExceptionThrown()Ljava/lang/Exception;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mExceptionThrown:Ljava/lang/Exception;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mResponseCode:I

    return v0
.end method

.method public getUploadStatus()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mUploadStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 105
    iget v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mUploadStatus:I

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mResponseCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mExceptionThrown:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadResult{mUploadStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mUploadStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mResponseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExceptionThrown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/client/metrics/thirdparty/transport/UploadResult;->mExceptionThrown:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
