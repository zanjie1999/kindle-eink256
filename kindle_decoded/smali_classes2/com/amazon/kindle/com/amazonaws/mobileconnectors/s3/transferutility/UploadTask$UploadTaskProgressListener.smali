.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadTaskProgressListener"
.end annotation


# instance fields
.field private prevTotalBytesTransferredOfAllParts:J

.field final synthetic this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iget-wide p1, p2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    iput-wide p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->prevTotalBytesTransferredOfAllParts:J

    return-void
.end method


# virtual methods
.method public declared-synchronized onProgressChanged(IJ)V
    .locals 7

    monitor-enter p0

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    iget-object v0, v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->uploadPartTasks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    if-nez p1, :cond_0

    .line 469
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->access$000()Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object p1

    const-string p2, "Update received for unknown part. Ignoring."

    invoke-interface {p1, p2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    monitor-exit p0

    return-void

    .line 473
    :cond_0
    :try_start_1
    iput-wide p2, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->bytesTransferredSoFar:J

    const-wide/16 p1, 0x0

    .line 477
    iget-object p3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    iget-object p3, p3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->uploadPartTasks:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 478
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    iget-wide v0, v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->bytesTransferredSoFar:J

    add-long/2addr p1, v0

    goto :goto_0

    .line 485
    :cond_1
    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->prevTotalBytesTransferredOfAllParts:J

    cmp-long p3, p1, v0

    if-lez p3, :cond_2

    .line 486
    iget-object p3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    invoke-static {p3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->access$200(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    move-result-object v0

    iget-object p3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    invoke-static {p3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->access$100(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object p3

    iget v1, p3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-object p3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 488
    invoke-static {p3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->access$100(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    move-result-object p3

    iget-wide v4, p3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    const/4 v6, 0x1

    move-wide v2, p1

    .line 486
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJZ)V

    .line 490
    iput-wide p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->prevTotalBytesTransferredOfAllParts:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public progressChanged(Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;)V
    .locals 0

    return-void
.end method
