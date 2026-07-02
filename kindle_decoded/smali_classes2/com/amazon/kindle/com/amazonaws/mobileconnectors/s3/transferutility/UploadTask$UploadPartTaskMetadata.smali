.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;
.super Ljava/lang/Object;
.source "UploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadPartTaskMetadata"
.end annotation


# instance fields
.field bytesTransferredSoFar:J

.field state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field uploadPartTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)V
    .locals 0

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
