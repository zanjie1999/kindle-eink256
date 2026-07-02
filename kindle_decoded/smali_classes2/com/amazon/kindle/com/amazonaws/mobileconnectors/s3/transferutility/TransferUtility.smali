.class public Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
.super Ljava/lang/Object;
.source "TransferUtility.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field private static final TRANSFER_ADD:Ljava/lang/String; = "add_transfer"

.field private static final TRANSFER_CANCEL:Ljava/lang/String; = "cancel_transfer"

.field private static final TRANSFER_PAUSE:Ljava/lang/String; = "pause_transfer"

.field private static final TRANSFER_RESUME:Ljava/lang/String; = "resume_transfer"

.field private static userAgentFromConfig:Ljava/lang/String;


# instance fields
.field private dbUtil:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private final defaultBucket:Ljava/lang/String;

.field private final s3:Lcom/amazon/kindle/com/amazonaws/services/s3/AmazonS3;

.field private final transferUtilityOptions:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

.field private updater:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->LOCK:Ljava/lang/Object;

    const-string v0, ""

    .line 140
    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->userAgentFromConfig:Ljava/lang/String;

    return-void
.end method

.method static appendMultipartTransferServiceUserAgentString(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;",
            ">(TX;)TX;"
        }
    .end annotation

    .line 913
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferService_multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->getUserAgentFromConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 913
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    return-object p0
.end method

.method static appendTransferServiceUserAgentString(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;",
            ">(TX;)TX;"
        }
    .end annotation

    .line 907
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransferService/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->getUserAgentFromConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/util/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 907
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;->appendUserAgent(Ljava/lang/String;)V

    return-object p0
.end method

.method private static getUserAgentFromConfig()Ljava/lang/String;
    .locals 3

    .line 149
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->userAgentFromConfig:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->userAgentFromConfig:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->userAgentFromConfig:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_1
    :goto_0
    const-string v1, ""

    .line 151
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
