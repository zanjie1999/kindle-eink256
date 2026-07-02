.class Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;
.super Ljava/lang/Object;
.source "ArtifactUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;,
        Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mAllowWANUpload:Z

.field private final mArtifactProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/device/crashmanager/ArtifactProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final mArtifactSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;",
            ">;"
        }
    .end annotation
.end field

.field private final mCrashDescriptorStorageUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

.field private final mDetEndpointIdentity:Lamazon/whispersync/communication/identity/EndpointIdentity;

.field protected mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

.field private final mDeviceSerialNumber:Ljava/lang/String;

.field private final mDeviceType:Ljava/lang/String;

.field private final mNetworkManager:Lcom/amazon/whispersync/device/utils/NetworkManager;

.field private final mRequestContext:Lamazon/whispersync/communication/authentication/RequestContext;

.field private final mRequestSigner:Lcom/amazon/whispersync/communication/authentication/RequestSigner;

.field private final mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "ArtifactUploader"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lamazon/whispersync/communication/identity/EndpointIdentity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;Lcom/amazon/whispersync/device/utils/StatusNotifier;Lcom/amazon/whispersync/communication/authentication/RequestSigner;Lcom/amazon/whispersync/device/utils/NetworkManager;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lamazon/whispersync/communication/identity/EndpointIdentity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/device/crashmanager/ArtifactProcessor;",
            ">;",
            "Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;",
            "Lcom/amazon/whispersync/device/utils/StatusNotifier;",
            "Lcom/amazon/whispersync/communication/authentication/RequestSigner;",
            "Lcom/amazon/whispersync/device/utils/NetworkManager;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/amazon/whispersync/device/utils/DetUtil;

    invoke-direct {v0}, Lcom/amazon/whispersync/device/utils/DetUtil;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    if-eqz p1, :cond_9

    const-string v0, ", is invalid"

    const-string v1, "Device type: "

    if-eqz p2, :cond_8

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p3, :cond_7

    .line 131
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    if-eqz p4, :cond_6

    if-eqz p5, :cond_5

    if-eqz p6, :cond_4

    if-eqz p7, :cond_3

    if-eqz p8, :cond_2

    if-eqz p9, :cond_1

    .line 153
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mDetEndpointIdentity:Lamazon/whispersync/communication/identity/EndpointIdentity;

    .line 154
    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mDeviceType:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mDeviceSerialNumber:Ljava/lang/String;

    .line 156
    iput-object p4, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mArtifactSources:Ljava/util/List;

    .line 157
    iput-object p5, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mArtifactProcessors:Ljava/util/List;

    .line 158
    iput-object p6, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mCrashDescriptorStorageUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    .line 159
    iput-object p7, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;

    .line 160
    iput-object p8, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mRequestSigner:Lcom/amazon/whispersync/communication/authentication/RequestSigner;

    .line 161
    iput-object p9, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mNetworkManager:Lcom/amazon/whispersync/device/utils/NetworkManager;

    .line 162
    iput-boolean p10, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mAllowWANUpload:Z

    .line 163
    instance-of p1, p8, Lcom/amazon/whispersync/communication/authentication/DcpRequestSigner;

    if-eqz p1, :cond_0

    .line 165
    sget-object p1, Lamazon/whispersync/communication/authentication/AccountRequestContext;->EMPTY_ACCOUNT:Lamazon/whispersync/communication/authentication/AccountRequestContext;

    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mRequestContext:Lamazon/whispersync/communication/authentication/RequestContext;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mRequestContext:Lamazon/whispersync/communication/authentication/RequestContext;

    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NetworkManager must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "RequestSigner must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "StatusNotifier must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CrashDescriptorStorageUtil must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Artifact processors must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Artifact sources must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Endpoint identity must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private chooseArtifactProcessor(Lcom/amazon/whispersync/device/crashmanager/Artifact;)Lcom/amazon/whispersync/device/crashmanager/ArtifactProcessor;
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mArtifactProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactProcessor;

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {p1}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/device/crashmanager/ArtifactProcessor;->canProcessTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 485
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No artifact processor available for artifact. Tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 470
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private processArtifact(Lcom/amazon/whispersync/device/crashmanager/Artifact;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->chooseArtifactProcessor(Lcom/amazon/whispersync/device/crashmanager/Artifact;)Lcom/amazon/whispersync/device/crashmanager/ArtifactProcessor;

    move-result-object v0

    .line 476
    invoke-interface {v0, p1}, Lcom/amazon/whispersync/device/crashmanager/ArtifactProcessor;->processArtifact(Lcom/amazon/whispersync/device/crashmanager/Artifact;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected uploadArtifact(Lamazon/whispersync/communication/srr/SrrManager;Lcom/amazon/whispersync/client/metrics/MetricEvent;Lcom/amazon/whispersync/device/crashmanager/Artifact;Ljava/lang/String;)Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v1, p4

    const-string v2, "X-Upload-Tag"

    const-string/jumbo v3, "uploadFailed"

    const-string v4, "Creation time UTC"

    const-string v5, "Tag"

    const-string/jumbo v6, "uploadCrashEntry"

    const-string/jumbo v9, "uploadTime"

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 325
    :try_start_0
    sget-object v15, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string/jumbo v14, "uploadArtifact"

    const-string v10, "About to upload artifact"

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v5, v11, v13

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v11, v12

    const/4 v12, 0x2

    aput-object v4, v11, v12

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/4 v13, 0x3

    aput-object v18, v11, v13

    const-string v18, "DeviceType"

    const/4 v13, 0x4

    aput-object v18, v11, v13

    iget-object v13, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mDeviceType:Ljava/lang/String;

    const/16 v20, 0x5

    aput-object v13, v11, v20

    const-string v13, "DeviceSerialNumber"

    const/4 v12, 0x6

    aput-object v13, v11, v12

    const/4 v13, 0x7

    iget-object v12, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mDeviceSerialNumber:Ljava/lang/String;

    aput-object v12, v11, v13

    invoke-virtual {v15, v14, v10, v11}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v10, "uploadAttempt"

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 333
    invoke-interface {v8, v10, v11, v12}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    const-string v10, "%s-%d"

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    .line 337
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    aput-object v11, v12, v13

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v12, v13

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 341
    iget-object v11, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v12, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mDeviceType:Ljava/lang/String;

    iget-object v13, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mDeviceSerialNumber:Ljava/lang/String;

    invoke-virtual {v11, v10, v12, v13}, Lcom/amazon/whispersync/device/utils/DetUtil;->createDefaultHttpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v10

    const-string v11, "X-Content-Type"

    const-string v12, "CrashReport"

    .line 345
    invoke-virtual {v10, v11, v12}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 349
    sget-object v11, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v13, v12

    invoke-virtual {v11, v6, v2, v13}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v10, v2, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v1, p3

    .line 354
    invoke-direct {v7, v1}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->processArtifact(Lcom/amazon/whispersync/device/crashmanager/Artifact;)Ljava/io/InputStream;

    move-result-object v2

    .line 356
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getCrashDescriptor()Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Lamazon/whispersync/communication/TimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lamazon/whispersync/communication/RequestFailedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lamazon/whispersync/communication/MissingCredentialsException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/amazon/whispersync/device/crashmanager/exception/DuplicateCrashDescriptorException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_2

    .line 363
    :try_start_1
    iget-object v11, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mCrashDescriptorStorageUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v11, v14}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 364
    iget-object v11, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mCrashDescriptorStorageUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v11, v14}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->shouldDedupe(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 366
    iget-object v1, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mCrashDescriptorStorageUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v1, v14}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->push(Ljava/lang/String;)V

    .line 368
    sget-object v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate CrashDescriptor found: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v2, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    new-instance v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    invoke-direct {v1, v7, v2, v14}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;)V
    :try_end_1
    .catch Lamazon/whispersync/communication/TimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lamazon/whispersync/communication/RequestFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lamazon/whispersync/communication/MissingCredentialsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/amazon/whispersync/device/crashmanager/exception/DuplicateCrashDescriptorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    invoke-interface {v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-object v1

    .line 372
    :cond_1
    :try_start_2
    iget-object v11, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mCrashDescriptorStorageUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v11, v14}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->prune(Ljava/lang/String;)Ljava/lang/Integer;

    .line 378
    :cond_2
    new-instance v11, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v12

    int-to-long v12, v12

    invoke-direct {v11, v2, v12, v13}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v10, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string/jumbo v11, "uploadCrashSize"

    .line 381
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-double v12, v2

    invoke-interface {v8, v11, v12, v13}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 384
    invoke-interface {v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->startTimer(Ljava/lang/String;)V

    .line 387
    iget-object v2, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v11, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mDetEndpointIdentity:Lamazon/whispersync/communication/identity/EndpointIdentity;

    iget-object v12, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mRequestContext:Lamazon/whispersync/communication/authentication/RequestContext;

    move-object/from16 v13, p1

    invoke-virtual {v2, v10, v13, v11, v12}, Lcom/amazon/whispersync/device/utils/DetUtil;->postFileToDet(Lorg/apache/http/client/methods/HttpPost;Lamazon/whispersync/communication/srr/SrrManager;Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/authentication/RequestContext;)Lcom/amazon/whispersync/device/utils/DetUtil$DetResponse;

    move-result-object v2

    .line 390
    sget-object v10, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$1;->$SwitchMap$com$amazon$device$utils$DetUtil$DetResponse:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11
    :try_end_2
    .catch Lamazon/whispersync/communication/TimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lamazon/whispersync/communication/RequestFailedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lamazon/whispersync/communication/MissingCredentialsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/amazon/whispersync/device/crashmanager/exception/DuplicateCrashDescriptorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    const-string/jumbo v11, "uploadCrashEntries"

    const/4 v12, 0x2

    if-eq v10, v12, :cond_4

    const/4 v12, 0x3

    if-eq v10, v12, :cond_3

    .line 416
    :try_start_3
    sget-object v10, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v12, "Unknown det response!"

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const-string v15, "DetReponse"

    const/16 v16, 0x0

    aput-object v15, v13, v16

    const/4 v15, 0x1

    aput-object v2, v13, v15

    const/4 v2, 0x2

    aput-object v5, v13, v2

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v13, v5

    const/4 v2, 0x4

    aput-object v4, v13, v2

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v20

    invoke-virtual {v10, v11, v12, v13}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    new-instance v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    invoke-direct {v1, v7, v2, v14}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;)V
    :try_end_3
    .catch Lamazon/whispersync/communication/TimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lamazon/whispersync/communication/RequestFailedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lamazon/whispersync/communication/MissingCredentialsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/amazon/whispersync/device/crashmanager/exception/DuplicateCrashDescriptorException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 462
    invoke-interface {v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-object v1

    .line 406
    :cond_3
    :try_start_4
    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v10, "Server error on upload of artifact."

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v5, 0x2

    aput-object v4, v12, v5

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v12, v4

    invoke-virtual {v2, v11, v10, v12}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 411
    invoke-interface {v8, v3, v1, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 414
    new-instance v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    invoke-direct {v1, v7, v2, v14}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;)V
    :try_end_4
    .catch Lamazon/whispersync/communication/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lamazon/whispersync/communication/RequestFailedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lamazon/whispersync/communication/MissingCredentialsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/amazon/whispersync/device/crashmanager/exception/DuplicateCrashDescriptorException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 462
    invoke-interface {v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-object v1

    .line 397
    :cond_4
    :try_start_5
    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v10, "Client error on upload of artifact."

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x1

    aput-object v5, v12, v13

    const/4 v5, 0x2

    aput-object v4, v12, v5

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v12, v4

    invoke-virtual {v2, v11, v10, v12}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 402
    invoke-interface {v8, v3, v1, v2}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 404
    new-instance v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    invoke-direct {v1, v7, v2, v14}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;)V
    :try_end_5
    .catch Lamazon/whispersync/communication/TimeoutException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lamazon/whispersync/communication/RequestFailedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lamazon/whispersync/communication/MissingCredentialsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/amazon/whispersync/device/crashmanager/exception/DuplicateCrashDescriptorException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 462
    invoke-interface {v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-object v1

    .line 393
    :cond_5
    :try_start_6
    iget-object v1, v7, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mCrashDescriptorStorageUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v1, v14}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->push(Ljava/lang/String;)V

    .line 395
    new-instance v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SUCCESS:Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    invoke-direct {v1, v7, v2, v14}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;)V
    :try_end_6
    .catch Lamazon/whispersync/communication/TimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lamazon/whispersync/communication/RequestFailedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lamazon/whispersync/communication/MissingCredentialsException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/amazon/whispersync/device/crashmanager/exception/DuplicateCrashDescriptorException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 462
    invoke-interface {v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v4, v14

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v4, v14

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v4, v14

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v4, v14

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    .line 451
    :goto_0
    :try_start_7
    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v5, "Exception while uploading crashes"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v2, v6, v5, v10}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 454
    invoke-interface {v8, v3, v5, v6}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    const-string/jumbo v2, "uploadUnknowException"

    .line 455
    invoke-interface {v8, v2, v5, v6}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 456
    invoke-direct {v7, v1}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->getExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 459
    new-instance v10, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v3, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    const-string/jumbo v5, "uploadUnknownExceptionMessage"

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 462
    invoke-interface {v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-object v10

    :catch_6
    move-exception v0

    move-object v1, v0

    const/4 v14, 0x0

    .line 447
    :goto_1
    :try_start_8
    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v6, v3, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    new-instance v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    invoke-direct {v1, v7, v2, v14}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 462
    invoke-interface {v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-object v1

    :catch_7
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    .line 439
    :goto_2
    :try_start_9
    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v3, "No Amazon account present, unable to upload crashes"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    invoke-virtual {v2, v6, v3, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "uploadMissingCredentialsException"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 440
    invoke-interface {v8, v2, v5, v6}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 441
    invoke-direct {v7, v1}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->getExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 445
    new-instance v10, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v3, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    const-string/jumbo v5, "uploadMissingCredentialsMessage"

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 462
    invoke-interface {v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-object v10

    :catch_8
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    .line 431
    :goto_3
    :try_start_a
    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v3, "RequestFailedException while uploading crashes."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v5, v11

    invoke-virtual {v2, v6, v3, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "uploadRequestFailedException"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 432
    invoke-interface {v8, v2, v5, v6}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 433
    invoke-direct {v7, v1}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->getExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 437
    new-instance v10, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v3, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    const-string/jumbo v5, "uploadRequestFailedExceptionMessage"

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 462
    invoke-interface {v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-object v10

    :catch_9
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    .line 424
    :goto_4
    :try_start_b
    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v3, "TimeoutException while uploading crashes."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v5, v10

    invoke-virtual {v2, v6, v3, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "uploadTimeoutException"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 425
    invoke-interface {v8, v2, v5, v6}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    .line 426
    invoke-direct {v7, v1}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->getExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    .line 429
    new-instance v10, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    sget-object v3, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;->SKIP:Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    const-string/jumbo v5, "uploadTimeoutExceptionMessage"

    move-object v1, v10

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;-><init>(Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 462
    invoke-interface {v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    return-object v10

    :goto_5
    invoke-interface {v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->stopTimer(Ljava/lang/String;)V

    throw v1
.end method

.method public uploadArtifacts(Lcom/amazon/whispersync/client/metrics/MetricEvent;)I
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->uploadArtifacts(Lcom/amazon/whispersync/client/metrics/MetricEvent;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public uploadArtifacts(Lcom/amazon/whispersync/client/metrics/MetricEvent;Ljava/lang/String;)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "uploadArtifacts"

    const-string/jumbo v4, "uploadExceptions"

    const-string v5, "crashDescriptor"

    .line 193
    iget-boolean v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mAllowWANUpload:Z

    const-string v6, "noUsableConnection"

    const-string/jumbo v7, "uploadCrashes"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mNetworkManager:Lcom/amazon/whispersync/device/utils/NetworkManager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/device/utils/NetworkManager;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mNetworkManager:Lcom/amazon/whispersync/device/utils/NetworkManager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/device/utils/NetworkManager;->isEthernetConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v11, [Ljava/lang/Object;

    const-string v4, "Skipping artifact upload because there is no usable connection."

    invoke-virtual {v0, v7, v4, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;

    const-string v3, "Device is not connected to WiFi or Ethernet and WAN upload is turned off."

    invoke-interface {v0, v3}, Lcom/amazon/whispersync/device/utils/StatusNotifier;->broadcastUploadStatus(Ljava/lang/CharSequence;)V

    .line 197
    invoke-interface {v2, v6, v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    return v11

    :cond_0
    if-ne v0, v10, :cond_1

    .line 200
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mNetworkManager:Lcom/amazon/whispersync/device/utils/NetworkManager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/device/utils/NetworkManager;->isWanConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v11, [Ljava/lang/Object;

    const-string v4, "Skipping artifact upload because WAN connection is not available."

    invoke-virtual {v0, v7, v4, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;

    const-string v3, "Upload through WAN is turned on but device is not connected to WAN"

    invoke-interface {v0, v3}, Lcom/amazon/whispersync/device/utils/StatusNotifier;->broadcastUploadStatus(Ljava/lang/CharSequence;)V

    .line 203
    invoke-interface {v2, v6, v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    return v11

    .line 207
    :cond_1
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;

    const-string v6, "Uploading artifacts."

    invoke-interface {v0, v6}, Lcom/amazon/whispersync/device/utils/StatusNotifier;->broadcastUploadStatus(Ljava/lang/CharSequence;)V

    .line 212
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v7, v11, [Ljava/lang/Object;

    const-string/jumbo v12, "uploadCrashEntries"

    invoke-virtual {v0, v12, v6, v7}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 215
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    const-string v13, ""

    .line 218
    invoke-static {v13, v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v13

    .line 220
    :try_start_0
    new-instance v14, Lamazon/whispersync/communication/srr/HttpClientSrrManager;

    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mRequestSigner:Lcom/amazon/whispersync/communication/authentication/RequestSigner;

    invoke-direct {v14, v13, v0}, Lamazon/whispersync/communication/srr/HttpClientSrrManager;-><init>(Lorg/apache/http/client/HttpClient;Lamazon/whispersync/communication/authentication/RequestSigner;)V

    .line 223
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mArtifactSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;

    move/from16 v16, v0

    .line 224
    :goto_1
    invoke-interface {v11, v2}, Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;->getNextArtifact(Lcom/amazon/whispersync/client/metrics/MetricEvent;)Lcom/amazon/whispersync/device/crashmanager/Artifact;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v10, "numArtifactsRead"

    .line 225
    invoke-interface {v2, v10, v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    move-object/from16 v10, p2

    .line 226
    invoke-virtual {v1, v14, v2, v0, v10}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->uploadArtifact(Lamazon/whispersync/communication/srr/SrrManager;Lcom/amazon/whispersync/client/metrics/MetricEvent;Lcom/amazon/whispersync/device/crashmanager/Artifact;Ljava/lang/String;)Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :try_start_1
    invoke-virtual {v0}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v18, v0

    .line 233
    :try_start_2
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v8, "Failed to close artifact."

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v18, v10, v9

    invoke-virtual {v0, v12, v8, v10}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->getCrashDescriptor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 239
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_2
    invoke-static/range {v17 .. v17}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->access$000(Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual/range {v17 .. v17}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->getUploadErrorTag()Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    .line 246
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_3
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$1;->$SwitchMap$com$amazon$device$crashmanager$ArtifactUploader$ArtifactUploadStatus:[I

    invoke-virtual/range {v17 .. v17}, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploaderResult;->getArtifactUploadStatus()Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader$ArtifactUploadStatus;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v0, v0, v8

    const/4 v8, 0x1

    if-eq v0, v8, :cond_8

    const/4 v8, 0x2

    if-eq v0, v8, :cond_7

    const/4 v8, 0x3

    if-eq v0, v8, :cond_4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    .line 266
    :cond_4
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v8, "Transient failure while uploading artifacts. Will retry later."

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v8, v10}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "partialUpload"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 270
    invoke-interface {v2, v0, v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 291
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mCrashDescriptorStorageUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->persistCrashDescriptors()V

    .line 296
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 297
    invoke-interface {v2, v5, v3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 301
    :cond_5
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    invoke-interface {v2, v4, v3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    return v16

    .line 259
    :cond_7
    :try_start_3
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v8, "Skipped an artifact."

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v8, v10}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "numArtifactsSkipped"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 260
    invoke-interface {v2, v0, v8, v9}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->incrementCounter(Ljava/lang/String;D)V

    .line 262
    invoke-interface {v11}, Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;->saveCurrentIndex()V

    goto :goto_5

    :cond_8
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v16, v16, 0x1

    .line 256
    invoke-interface {v11}, Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;->saveCurrentIndex()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_9
    move/from16 v0, v16

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 287
    :cond_a
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 291
    iget-object v3, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mCrashDescriptorStorageUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v3}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->persistCrashDescriptors()V

    .line 296
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 297
    invoke-interface {v2, v5, v6}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 301
    :cond_b
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 302
    invoke-interface {v2, v4, v5}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 306
    :cond_c
    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished uploading artifacts. Uploaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " artifacts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v12, v3, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget-object v2, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uploaded "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/amazon/whispersync/device/utils/StatusNotifier;->broadcastUploadStatus(Ljava/lang/CharSequence;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    .line 279
    :try_start_4
    sget-object v8, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v9, "Exception thrown while uploading crash entries"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v8, v3, v9, v10}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v3, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mStatusNotifier:Lcom/amazon/whispersync/device/utils/StatusNotifier;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while uploading artifacts:\n "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/amazon/whispersync/device/utils/StatusNotifier;->broadcastUploadStatus(Ljava/lang/CharSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 291
    iget-object v0, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mCrashDescriptorStorageUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->persistCrashDescriptors()V

    .line 296
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 297
    invoke-interface {v2, v5, v3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 301
    :cond_d
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    invoke-interface {v2, v4, v3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    return v3

    .line 287
    :goto_a
    invoke-virtual {v13}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 291
    iget-object v3, v1, Lcom/amazon/whispersync/device/crashmanager/ArtifactUploader;->mCrashDescriptorStorageUtil:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v3}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->persistCrashDescriptors()V

    .line 296
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 297
    invoke-interface {v2, v5, v6}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 301
    :cond_f
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 302
    invoke-interface {v2, v4, v5}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 304
    :cond_10
    throw v0
.end method
