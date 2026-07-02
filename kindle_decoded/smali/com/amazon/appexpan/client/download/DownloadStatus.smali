.class public Lcom/amazon/appexpan/client/download/DownloadStatus;
.super Ljava/lang/Object;
.source "DownloadStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;
    }
.end annotation


# instance fields
.field private errorReasonCode:I

.field private fileUri:Ljava/lang/String;

.field private status:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/appexpan/client/download/DownloadStatus;->status:I

    iput p2, p0, Lcom/amazon/appexpan/client/download/DownloadStatus;->errorReasonCode:I

    iput-object p3, p0, Lcom/amazon/appexpan/client/download/DownloadStatus;->fileUri:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;

    invoke-direct {v0}, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 10
    instance-of p1, p1, Lcom/amazon/appexpan/client/download/DownloadStatus;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, Lcom/amazon/appexpan/client/download/DownloadStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amazon/appexpan/client/download/DownloadStatus;

    invoke-virtual {p1, p0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getStatus()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getStatus()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getErrorReasonCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getErrorReasonCode()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getFileUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getFileUri()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_0
    return v2

    :cond_6
    return v0
.end method

.method public getErrorReasonCode()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/amazon/appexpan/client/download/DownloadStatus;->errorReasonCode:I

    return v0
.end method

.method public getFileUri()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/DownloadStatus;->fileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/amazon/appexpan/client/download/DownloadStatus;->status:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 10
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getStatus()I

    move-result v0

    const/16 v1, 0x3b

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getErrorReasonCode()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getFileUri()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadStatus(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorReasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getErrorReasonCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/DownloadStatus;->getFileUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
