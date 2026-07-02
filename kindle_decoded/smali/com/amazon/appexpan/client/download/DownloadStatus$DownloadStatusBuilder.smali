.class public Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;
.super Ljava/lang/Object;
.source "DownloadStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/appexpan/client/download/DownloadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadStatusBuilder"
.end annotation


# instance fields
.field private errorReasonCode:I

.field private fileUri:Ljava/lang/String;

.field private status:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/appexpan/client/download/DownloadStatus;
    .locals 4

    .line 11
    new-instance v0, Lcom/amazon/appexpan/client/download/DownloadStatus;

    iget v1, p0, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->status:I

    iget v2, p0, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->errorReasonCode:I

    iget-object v3, p0, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->fileUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/appexpan/client/download/DownloadStatus;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public errorReasonCode(I)Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;
    .locals 0

    .line 11
    iput p1, p0, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->errorReasonCode:I

    return-object p0
.end method

.method public fileUri(Ljava/lang/String;)Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->fileUri:Ljava/lang/String;

    return-object p0
.end method

.method public status(I)Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;
    .locals 0

    .line 11
    iput p1, p0, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->status:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadStatus.DownloadStatusBuilder(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorReasonCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->errorReasonCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fileUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/appexpan/client/download/DownloadStatus$DownloadStatusBuilder;->fileUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
