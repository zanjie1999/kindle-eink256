.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;
.super Ljava/lang/Object;
.source "TransferStatusUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->updateProgress(IJJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bytesCurrent:J

.field final synthetic val$bytesTotal:J

.field final synthetic val$id:I

.field final synthetic val$l:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;IJJ)V
    .locals 0

    .line 257
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$l:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    iput p3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$id:I

    iput-wide p4, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$bytesCurrent:J

    iput-wide p6, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$bytesTotal:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 260
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$l:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    iget v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$id:I

    iget-wide v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$bytesCurrent:J

    iget-wide v4, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$2;->val$bytesTotal:J

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;->onProgressChanged(IJJ)V

    return-void
.end method
