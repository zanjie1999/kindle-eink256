.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;
.super Ljava/lang/Object;
.source "UploadPartTask.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadPartTaskProgressListener"
.end annotation


# instance fields
.field private bytesTransferredSoFar:J

.field final synthetic this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

.field private uploadTaskProgressListener:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->uploadTaskProgressListener:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    return-void
.end method


# virtual methods
.method public progressChanged(Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;)V
    .locals 4

    .line 113
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->getEventCode()I

    move-result v0

    const/16 v1, 0x20

    if-ne v1, v0, :cond_0

    .line 115
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->access$000()Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object p1

    const-string v0, "Reset Event triggerred. Resetting the bytesCurrent to 0."

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->bytesTransferredSoFar:J

    goto :goto_0

    .line 119
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->bytesTransferredSoFar:J

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->getBytesTransferred()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->bytesTransferredSoFar:J

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->uploadTaskProgressListener:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    .line 122
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->access$100(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v0

    iget-wide v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->bytesTransferredSoFar:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->onProgressChanged(IJ)V

    return-void
.end method
