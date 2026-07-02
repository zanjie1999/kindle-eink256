.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;
.super Ljava/lang/Object;
.source "UploadPartTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field private final dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private final s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

.field private final uploadPartRequest:Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

.field private final uploadPartTaskMetadata:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

.field private final uploadTaskProgressListener:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartTaskMetadata:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 46
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadTaskProgressListener:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    .line 47
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartRequest:Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    .line 48
    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

    .line 49
    iput-object p5, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/kindle/com/amazonaws/logging/Log;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartRequest:Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    return-object p0
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartTaskMetadata:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iput-object v1, v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartRequest:Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadTaskProgressListener:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;-><init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->setGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartRequest:Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;->uploadPart(Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartTaskMetadata:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iput-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 62
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartRequest:Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getId()I

    move-result v2

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    .line 63
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartRequest:Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateETag(ILjava/lang/String;)I

    const/4 v0, 0x1

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 66
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upload part interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    .line 67
    new-instance v1, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;-><init>(J)V

    const/16 v4, 0x20

    .line 68
    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 69
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadTaskProgressListener:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    new-instance v4, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;

    invoke-direct {v4, v2, v3}, Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {v1, v4}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->progressChanged(Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;)V

    .line 73
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->getInstance()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->getInstance()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]: Network wasn\'t available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    .line 80
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartTaskMetadata:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iput-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 81
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartRequest:Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getId()I

    move-result v2

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    .line 82
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v2, "Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->info(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v1

    .line 87
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TransferUtilityException: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartTaskMetadata:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iput-object v2, v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->state:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 92
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->uploadPartRequest:Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;

    invoke-virtual {v2}, Lcom/amazon/kindle/com/amazonaws/services/s3/model/UploadPartRequest;->getId()I

    move-result v2

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->updateState(ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    .line 93
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v2, "Encountered error uploading part "

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 94
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
