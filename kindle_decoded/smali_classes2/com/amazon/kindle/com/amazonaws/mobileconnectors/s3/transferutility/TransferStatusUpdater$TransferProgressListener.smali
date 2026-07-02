.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;
.super Ljava/lang/Object;
.source "TransferStatusUpdater.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferProgressListener"
.end annotation


# instance fields
.field private bytesTransferredSoFar:J

.field final synthetic this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field private final transfer:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->transfer:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    return-void
.end method


# virtual methods
.method public declared-synchronized progressChanged(Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;)V
    .locals 9

    monitor-enter p0

    const/16 v0, 0x20

    .line 367
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->getEventCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 369
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->access$000()Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object p1

    const-string v0, "Reset Event triggerred. Resetting the bytesCurrent to 0."

    invoke-interface {p1, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 371
    iput-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->bytesTransferredSoFar:J

    goto :goto_0

    .line 373
    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->bytesTransferredSoFar:J

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->getBytesTransferred()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->bytesTransferredSoFar:J

    .line 377
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->transfer:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-wide v2, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 378
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->transfer:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iput-wide v0, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    .line 379
    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->this$0:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->transfer:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget v3, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->id:I

    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->transfer:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-wide v4, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesCurrent:J

    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$TransferProgressListener;->transfer:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    iget-wide v6, p1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->bytesTotal:J

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
